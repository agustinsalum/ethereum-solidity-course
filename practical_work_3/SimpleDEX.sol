// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SimpleDEX {
    address public owner;
    //  Direcciones de los contratos de TokenA y TokenB
    IERC20 public tokenA;
    IERC20 public tokenB;
    uint256 public reserveA;
    uint256 public reserveB;

    event LiquidityAdded(uint256 amountA, uint256 amountB);
    event LiquidityRemoved(uint256 amountA, uint256 amountB);
    event TokensSwapped(address indexed user, uint256 amountIn, uint256 amountOut, string direction);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor(address _tokenA, address _tokenB) {
        owner = msg.sender;
        tokenA = IERC20(_tokenA);
        tokenB = IERC20(_tokenB);
    }

    // Permite al owner añadir liquidez al pool
    function addLiquidity(uint256 amountA, uint256 amountB) external onlyOwner {
        require(amountA > 0 && amountB > 0, "Amounts must be greater than 0");

        tokenA.transferFrom(msg.sender, address(this), amountA);
        tokenB.transferFrom(msg.sender, address(this), amountB);

        reserveA += amountA;
        reserveB += amountB;

        emit LiquidityAdded(amountA, amountB);
    }

    // Permite al owner retirar liquidez del pool
    function removeLiquidity(uint256 amountA, uint256 amountB) external onlyOwner {
        require(amountA <= reserveA && amountB <= reserveB, "Insufficient reserves");

        reserveA -= amountA;
        reserveB -= amountB;

        tokenA.transfer(msg.sender, amountA);
        tokenB.transfer(msg.sender, amountB);

        emit LiquidityRemoved(amountA, amountB);
    }

    // Permite a los usuarios intercambiar TokenA por TokenB utilizando la fórmula del producto constante
    function swapAforB(uint256 amountAIn) external {
        require(amountAIn > 0, "Amount must be greater than 0");
        require(reserveA > 0 && reserveB > 0, "Insufficient liquidity");

        uint256 amountBOut = getOutputAmount(amountAIn, reserveA, reserveB);

        tokenA.transferFrom(msg.sender, address(this), amountAIn);
        tokenB.transfer(msg.sender, amountBOut);

        reserveA += amountAIn;
        reserveB -= amountBOut;

        emit TokensSwapped(msg.sender, amountAIn, amountBOut, "A to B");
    }

    // Similar a swapAforB, pero permite intercambiar TokenB por TokenA
    function swapBforA(uint256 amountBIn) external {
        require(amountBIn > 0, "Amount must be greater than 0");
        require(reserveA > 0 && reserveB > 0, "Insufficient liquidity");

        uint256 amountAOut = getOutputAmount(amountBIn, reserveB, reserveA);

        tokenB.transferFrom(msg.sender, address(this), amountBIn);
        tokenA.transfer(msg.sender, amountAOut);

        reserveB += amountBIn;
        reserveA -= amountAOut;

        emit TokensSwapped(msg.sender, amountBIn, amountAOut, "B to A");
    }

    // Función auxiliar que calcula cuántos tokens recibirán los usuarios basándose en la fórmula del producto constante y aplicando una comisión del 0.3%

    function getOutputAmount(
        uint256 inputAmount,
        uint256 inputReserve,
        uint256 outputReserve
    ) public pure returns (uint256) {
        require(inputReserve > 0 && outputReserve > 0, "Invalid reserves");
        uint256 inputAmountWithFee = inputAmount * 997; // 0.3% fee
        uint256 numerator = inputAmountWithFee * outputReserve;
        uint256 denominator = (inputReserve * 1000) + inputAmountWithFee;
        return numerator / denominator;
    }

    //  Calcula el precio relativo de un token basado en las reservas del pool
    function getPrice(address _token) external view returns (uint256) {
        if (_token == address(tokenA)) {
            return (reserveB * 1e18) / reserveA; // Precio de TokenA en términos de TokenB
        } else if (_token == address(tokenB)) {
            return (reserveA * 1e18) / reserveB; // Precio de TokenB en términos de TokenA
        } else {
            revert("Invalid token address");
        }
    }
}
