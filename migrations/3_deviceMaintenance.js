var MaintenanceContract = artifacts.require("./MaintenanceContract.sol");

module.exports = function(deployer) {
  deployer.deploy(MaintenanceContract);
};
