import TokenAABI from "../abi/TokenA.json";
import TokenBABI from "../abi/TokenB.json";
import SimpleDEXABI from "../abi/SimpleDEX.json";

const contracts = {
  tokenA: {
    address: process.env.REACT_APP_TOKEN_A_ADDRESS,
    abi: TokenAABI,
  },
  tokenB: {
    address: process.env.REACT_APP_TOKEN_B_ADDRESS,
    abi: TokenBABI,
  },
  simpleDEX: {
    address: process.env.REACT_APP_CONTRACT_ADDRESS,
    abi: SimpleDEXABI,
  },
};

export default contracts;
