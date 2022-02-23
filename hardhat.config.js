require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: " https://eth-ropsten.alchemyapi.io/v2/GjiW-7dRfpYNWpPFixvBpHQjljCO8M2C",
      accounts: [
        "91c764e402e347d3f30088d76c26958e01dc35201488719aee038c839e958309",
      ],
    },
  },
};
