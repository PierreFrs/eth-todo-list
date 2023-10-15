// Smart contract abstraction => put/deploy in the block chain

const TodoList = artifacts.require("./TodoList.sol");

module.exports = function (deployer) {
  deployer.deploy(TodoList);
};
