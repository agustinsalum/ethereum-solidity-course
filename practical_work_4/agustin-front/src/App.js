

import React, { useState } from "react";
import { addLiquidity, removeLiquidity, swapTokens, getPrice } from "./components/SimpleDEX";

function App() {
  const [amountA, setAmountA] = useState("");
  const [amountB, setAmountB] = useState("");
  const [tokenA, setTokenA] = useState("");
  const [tokenB, setTokenB] = useState("");
  const [price, setPrice] = useState(null);
  const [fromAddress] = useState("");

  const handleAddLiquidity = async () => {
    await addLiquidity(tokenA, tokenB, amountA, amountB, fromAddress);
  };

  const handleRemoveLiquidity = async () => {
    await removeLiquidity(tokenA, tokenB, amountA, amountB, fromAddress);
  };

  const handleSwapTokens = async () => {
    await swapTokens(tokenA, tokenB, amountA, fromAddress);
  };

  const handleGetPrice = async () => {
    const price = await getPrice(tokenA, tokenB);
    setPrice(price);
  };

  return (
    <div className="App">
      <h1>Interaction with SimpleDEX</h1>
      <div>
        <h2>Add Liquidity</h2>
        <input
          type="text"
          placeholder="Token A"
          value={tokenA}
          onChange={(e) => setTokenA(e.target.value)}
        />
        <input
          type="text"
          placeholder="Token B"
          value={tokenB}
          onChange={(e) => setTokenB(e.target.value)}
        />
        <input
          type="number"
          placeholder="Amount of Token A"
          value={amountA}
          onChange={(e) => setAmountA(e.target.value)}
        />
        <input
          type="number"
          placeholder="Amount of Token B"
          value={amountB}
          onChange={(e) => setAmountB(e.target.value)}
        />
        <button onClick={handleAddLiquidity}>Add Liquidity</button>
      </div>

      <div>
        <h2>Remove Liquidity</h2>
        <button onClick={handleRemoveLiquidity}>Remove Liquidity</button>
      </div>

      <div>
        <h2>Swap Tokens</h2>
        <button onClick={handleSwapTokens}>Swap Tokens</button>
      </div>

      <div>
        <h2>Get Price</h2>
        <button onClick={handleGetPrice}>Get Price</button>
        {price && <p>Price: {price}</p>}
      </div>
    </div>
  );
}

export default App;

