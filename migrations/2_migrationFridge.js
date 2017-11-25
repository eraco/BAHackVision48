var Fridge = artifacts.require("./Fridge.sol");

module.exports = function(deployer) {
  deployer.deploy(Fridge);
};
