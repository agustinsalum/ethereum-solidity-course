import React, { useEffect, useState } from "react";
import Web3 from "web3";

function TokenBalance({ tokenKey, address }) {
  const [balance, setBalance] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (!window.ethereum) {
      setError("MetaMask is not installed.");
      setLoading(false);
      return;
    }

    // We use Web3 with MetaMask injection
    const web3 = new Web3(window.ethereum);

    // ERC-20 contract address
    const tokenAddress = tokenKey; 

    // Basic ABI to interact with an ERC-20 contract (balanceOf)
    const tokenABI = [
      {
        constant: true,
        inputs: [
          {
            name: "_owner",
            type: "address",
          },
        ],
        name: "balanceOf",
        outputs: [
          {
            name: "balance",
            type: "uint256",
          },
        ],
        payable: false,
        stateMutability: "view",
        type: "function",
      },
    ];

    const tokenContract = new web3.eth.Contract(tokenABI, tokenAddress);

    // Get the token balance
    const getBalance = async () => {
      try {
        const result = await tokenContract.methods.balanceOf(address).call();
        setBalance(web3.utils.fromWei(result, "ether")); // Convert to readable format (ether)
        setLoading(false);
      } catch (err) {
        setError("Error getting the balance.");
        setLoading(false);
      }
    };

    getBalance();
  }, [tokenKey, address]);

  if (loading) {
    return <p>Loading the balance...</p>;
  }

  if (error) {
    return <p>{error}</p>;
  }

  return (
    <div>
      <h2>Token balance</h2>
      <p>Address: {address}</p>
      <p>Balance: {balance} Tokens</p>
    </div>
  );
}

export default TokenBalance;
