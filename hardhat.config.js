require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

const GOERLI_API_KEY=process.env.GOERLI_API_KEY;
const MTMS_PRIVATE_KEY=process.env.MTMS_PRIVATE_KEY;
const ETHERSCAN_API_KEY=process.env.ETHERSCAN_API_KEY;

module.exports = {
  solidity: "0.8.18",
  networks: {
    goerli: {
      url: `https://goerli.infura.io/v3/${GOERLI_API_KEY}`,
      accounts: [MTMS_PRIVATE_KEY],
    },
  },
  etherscan:{
    apiKey: ETHERSCAN_API_KEY
  }
};
