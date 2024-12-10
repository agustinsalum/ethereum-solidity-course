import Web3 from 'web3';

// Web3 instance
const web3 = new Web3(window.ethereum);

// SimpleDEX contract address
const contractAddress = process.env.REACT_APP_CONTRACT_ADDRESS;


// Contract ABI
const abi = [
  process.env.REACT_APP_CONTRACT_ADDRESS
];

// Create the contract instance
const contract = new web3.eth.Contract(abi, contractAddress);

// Function to add liquidity
export const addLiquidity = async (tokenA, tokenB, amountA, amountB, fromAddress) => {
  try {
    await contract.methods
      .addLiquidity(tokenA, tokenB, amountA, amountB)
      .send({ from: fromAddress });
    console.log("Liquidity successfully added");
  } catch (error) {
    console.error("Error adding liquidity:", error);
  }
};

// Function to remove liquidity
export const removeLiquidity = async (tokenA, tokenB, amountA, amountB, fromAddress) => {
  try {
    await contract.methods
      .removeLiquidity(tokenA, tokenB, amountA, amountB)
      .send({ from: fromAddress });
    console.log("Liquidity successfully removed");
  } catch (error) {
    console.error("Error removing liquidity:", error);
  }
};

// Function to swap token A for token B
export const swapTokens = async (tokenIn, tokenOut, amountIn, fromAddress) => {
  try {
    await contract.methods
      .swapTokens(tokenIn, tokenOut, amountIn)
      .send({ from: fromAddress });
    console.log("Swap successful");
  } catch (error) {
    console.error("Error swapping tokens:", error);
  }
};

// Function to get the price of a token
export const getPrice = async (tokenIn, tokenOut) => {
  try {
    const price = await contract.methods
      .getPrice(tokenIn, tokenOut)
      .call();
    console.log("Price obtained:", price);
    return price;
  } catch (error) {
    console.error("Error getting the price:", error);
  }
};
