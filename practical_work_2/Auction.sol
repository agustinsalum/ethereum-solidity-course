// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

contract AuctionAgustinSalum {
    
    // CONSTANTES
    uint256 public constant MINIMUM_BID_INCREMENT_PERCENTAGE = 5;    // Saltos mínimos entre pujas (5%)

    // VARIABLES GLOBALES
    uint256 public minimumStartingBid;         // Valor mínimo de inicio
    uint256 public startDateTime;              // Fecha/hora de inicio
    uint256 public auctionDuration;            // Duración de subasta (10 minutos)
    uint256 public extensionTimeForNewBids;    // Tiempo de extensión por pujas nuevas (10 minutos)
    uint256 public highestBid;                 // Mejor oferta

    address public highestBidder;              // Mejor ofertante
    address internal owner;                    // Dueño del contrato

    bool internal isAuctionActive;             // Indica si la subasta está activa o no

    // ARRAYS
    address[] public bidders; // Lista de todas las direcciones de ofertantes

    // MAPPINGS
    mapping(address => uint256) public bids;       // Oferta más alta actual de cada ofertante
    mapping(address => uint256) public deposits;   // Depósito acumulado de cada ofertante
    mapping(address => bool) public hasBid;        // Direcciones que ya han ofertado

    // CONSTRUCTOR
    constructor(uint256 _minimumStartingBid) {
        minimumStartingBid = _minimumStartingBid;
        extensionTimeForNewBids = 600;  // 10 minutos en segundos
        auctionDuration = 600;          // 10 minutos en segundos
        isAuctionActive = false;        // La subasta no inicia todavia
        owner = msg.sender;             // Define al dueño de la subasta
        highestBid = 0;                 
    }

    // EVENTOS
    event NewBid(address indexed _sender, uint256 _bidAmount, uint256 date); // Nueva oferta
    event AuctionEnded(address winner, uint256 winningBid); // Subasta finalizada

    // FUNCIONES QUE CORRESPONDEN AL MANEJO DEL TIEMPO

    // MODIFIERS PARA LA FUNCIÓN STARTAUCTION

    modifier onlyOwner() {
        require(msg.sender == owner, "Solo el propietario puede realizar esta accion.");
        _;
    }

    modifier auctionNotStarted() {
        require(!isAuctionActive, "La subasta ya ha comenzado.");
        _;
    }

    // Establece el tiempo de inicio y activa la subasta
    // Solo el propietario puede usarla y la subasta debe seguir iniciada
    function startAuction() public onlyOwner auctionNotStarted {
        startDateTime = block.timestamp; // Asignamos la hora actual
        isAuctionActive = true;
    }

    // Verifica si el tiempo de subasta ha expirado y cambia el estado
    function checkAuctionStatus() public {
        if (block.timestamp >= startDateTime + auctionDuration) {
            isAuctionActive = false;
             emit AuctionEnded(highestBidder, highestBid);
        }
    }

    // MODIFIERS PARA LA FUNCIÓN OFERTAR

    // Modifier que permite continuar solo si el tiempo no ha expirado
    modifier timeNotExpired() {
        require(isAuctionActive && block.timestamp < startDateTime + auctionDuration, "La subasta termino");
        _;    
    }

    // Modifier que verifica si la oferta supera el 5%
    modifier validBid() {
        uint256 requiredBid;
        if (highestBid == 0) {
            requiredBid = minimumStartingBid;
        } else {
            requiredBid = highestBid + (highestBid * MINIMUM_BID_INCREMENT_PERCENTAGE / 100);
        }
        require(msg.value > requiredBid, "La oferta debe ser mayor en al menos un 5% que la oferta actual.");
        _;    
    }

    // FUNCIÓN PARA OFERTAR
    function placeBid() external payable timeNotExpired validBid {
        highestBid = msg.value;
        highestBidder = msg.sender;

        if (!hasBid[highestBidder]) {
            bidders.push(highestBidder); // Nuevo ofertante
            hasBid[highestBidder] = true;
        }
        
        bids[highestBidder] = highestBid;
        deposits[highestBidder] += msg.value;
        
        auctionDuration += extensionTimeForNewBids;
        
        emit NewBid(highestBidder, highestBid, block.timestamp);
    }

    // Mostrar ganador
    function getWinner() external view returns (address, uint256) {
        return (highestBidder, highestBid);
    }

    // Mostrar ofertas
    function getAllBids() external view returns (address[] memory, uint256[] memory) {
        uint256[] memory allBids = new uint256[](bidders.length);
        for (uint256 i = 0; i < bidders.length; i++) {
            allBids[i] = bids[bidders[i]];
        }
        return (bidders, allBids);
    }

    // MODIFIERS PARA LA FUNCIÓN MOSTRAR GANADOR
    // Definimos el modifier para verificar que la subasta no esté activa
    
    modifier onlyWhenAuctionInactive() {
        require(!isAuctionActive, "La subasta aun esta activa.");
        _;
    }

    // Devolver depósitos
    function refundBids() external onlyWhenAuctionInactive {
        for (uint256 i = 0; i < bidders.length; i++) {
            address bidder = bidders[i];
            if (bidder != highestBidder) {
                uint256 refundAmount = deposits[bidder] * 98 / 100; // Aplicamos la comisión del 2%
                deposits[bidder] = 0; // Evitar reembolsos múltiples
                
                (bool success, ) = bidder.call{value: refundAmount}("");
                require(success, "Error al enviar el reembolso");
            }
        }
    }

    // Reembolso parcial
    function withdrawExcessDeposit() external timeNotExpired {
        address bidder = msg.sender;
        uint256 excess = deposits[bidder] - bids[bidder];
        
        require(excess > 0, "No hay exceso para retirar.");
        
        (bool success, ) = bidder.call{value: excess}("");
        require(success, "Error al enviar el reembolso");
        
        deposits[bidder] = bids[bidder];
    }
}

