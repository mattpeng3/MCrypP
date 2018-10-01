var MYPcryp = artifacts.require("./MYPcryp.sol");

module.exports = function(deployer) {
  deployer.deploy(MYPcryp, 1000000);
};
