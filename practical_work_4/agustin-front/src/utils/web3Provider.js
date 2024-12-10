import { ethers } from "ethers";

let provider;

export const connectWallet = async () => {
  try {
    if (!window.ethereum) throw new Error("MetaMask is not installed.");
    await window.ethereum.request({ method: "eth_requestAccounts" });
    provider = new ethers.providers.Web3Provider(window.ethereum);
    return provider;
  } catch (error) {
    console.error("Error connecting the wallet:", error);
    throw error;
  }
};

export const getProvider = () => {
  if (!provider) {
    throw new Error("Connection not initialized. Call connectWallet first");
  }
  return provider;
};

