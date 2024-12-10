// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;

/*
Emitir un evento DonacionRealizada que incluya:
La dirección del donante.
La cantidad de ether donada.
La fecha de la donación.
*/

contract Donations {

    // Estructura de datos de tipo “key - value” (clave-valor)
    mapping(address => uint256) public balance; // Utilizar un mapping para rastrear el total donado por cada dirección.

    struct Donation {
        address donor; // La dirección del donante.
        uint256 amount; // La cantidad de ether donada.
        uint256 date; // La fecha de la donación.
    }

    Donation[] public donations; // Crear un array de Donacion para almacenar todas las donaciones realizadas al contrato.

    address[] public uniqueAddresses; // Array de direcciones únicas de donantes.

    address public owner; // Dirección del propietario del contrato.

    // Constructor para establecer al propietario
    constructor() {
        owner = msg.sender;
    }

    /* 
    Emitir un evento DonacionRealizada que incluya:
    La dirección del donante.
    La cantidad de ether donada.
    La fecha de la donación.
    */
    event DonationMade(address indexed donor, uint256 donation, uint256 date);

    /*
    Una función donar() que permita a los usuarios enviar ether al contrato. Esta función debe:
    Aceptar ether (debe ser payable).
    Crear un nuevo registro en el array de donaciones.
    Actualizar el mapping para reflejar el total donado por el donante.
    Emitir el evento DonacionRealizada.
    */
    function donate() external payable {
        address _sender = msg.sender;
        donations.push(Donation(_sender, msg.value, block.timestamp)); // Registrar la donación.
        if (balance[_sender] == 0) {
            uniqueAddresses.push(_sender); // Agregar la dirección si es nueva.
        }
        balance[_sender] += msg.value; // Actualizar el total donado por el usuario.
        emit DonationMade(_sender, msg.value, block.timestamp); // Emitir el evento.
    }

    /*
    Una función obtenerDonaciones() que retorne el total de donaciones realizadas 
    y el número de donantes únicos.
    */
    function getDonations() external view returns (Donation[] memory _donations) {
        uint256 len = uniqueAddresses.length;
        for (uint256 i = 0; i < len; i++) {
            _donations[i] = Donation(uniqueAddresses[i], balance[uniqueAddresses[i]], block.timestamp);
        }
        return _donations;
    }

    /*
    Una función retirarFondos() que permita al propietario del contrato retirar los fondos acumulados. Esta función debe:
    Validar que el llamador sea el propietario.
    Transferir el ether acumulado a la dirección del propietario utilizando address payable.
    */
    modifier onlyOwner() {
        require(msg.sender == owner, "Usted no tiene permisos");
        _;
    }

    function withdrawFunds() external onlyOwner {
        payable(msg.sender).transfer(address(this).balance); // Transferir los fondos al propietario.
    }
}
