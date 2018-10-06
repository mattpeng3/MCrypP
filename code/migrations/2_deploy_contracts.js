var MYPcryp = artifacts.require("./MYPcryp.sol");
var MYPSale = artifacts.require("./MYPcrypSale.sol");

module.exports = function(deployer) {
  deployer.deploy(MYPcryp, 1000000).then(function() {
    // Token price is 0.001 Ether
    var tokenPrice = 1000000000000000;
    return deployer.deploy(MYPSale, MYPcryp.address, tokenPrice);
  });
};
