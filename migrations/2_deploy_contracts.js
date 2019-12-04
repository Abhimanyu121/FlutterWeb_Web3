var Migrations = artifacts.require("voteApp");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};