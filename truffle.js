module.exports = {
  networks: {
    azure: {
      network_id: 72,
      host: "visionuiwqqf.westeurope.cloudapp.azure.com",
      port: 8545,
      gas: 400000   
    },
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    }    
  }};
