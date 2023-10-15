// SPDX-License-Identifier: MIT 
// Declare Solidity version
pragma solidity ^0.5.0;

// Declare the contract, all is written between {}
contract TodoList {
    // Declare task count as state variable
    uint public taskCount = 0;

    // defines Task as a type with "struct"
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // Declare state variable with mapping (some kind of array of key/value pairs)
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out dappuniversity.com");
    }

    // Declare a function that creates tasks
    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }


}