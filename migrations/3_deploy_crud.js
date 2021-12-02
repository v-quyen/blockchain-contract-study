const crud = artifacts.require("Crud.sol");

module.exports = function (deployer) {
    deployer.deploy(crud);
};