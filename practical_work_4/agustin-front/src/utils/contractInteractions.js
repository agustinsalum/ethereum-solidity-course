import { getProvider } from "./web3Provider";
import contracts from "./eth";
import { ethers } from "ethers";

export const getBalanceOf = async (contractKey, address) => {
  try {
    const provider = getProvider();
    const contract = new ethers.Contract(contracts[contractKey].address, contracts[contractKey].abi, provider);
    return await contract.balanceOf(address);
  } catch (error) {
    console.error("Error getting balance:", error);
    throw error;
  }
};

export const addLiquidity = async (amountA, amountB, signer) => {
  try {
    const provider = getProvider();
    const contract = new ethers.Contract(contracts.simpleDEX.address, contracts.simpleDEX.abi, signer);
    const tx = await contract.addLiquidity(amountA, amountB);
    return await tx.wait();
  } catch (error) {
    console.error("Error adding liquidity:", error);
    throw error;
  }
};
