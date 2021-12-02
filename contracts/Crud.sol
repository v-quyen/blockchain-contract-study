// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Crud {
    struct User {
        uint256 id;
        string name;
    }

    User[] public users;
    uint public nextId;
    
    function create(string memory name) public {
        users.push(User(nextId, name));
        nextId++;
    }

    function read(uint id) view public returns(uint, string memory) {
        uint idx = find(id);
        return(users[idx].id, users[idx].name);
    }

    function update(uint id, string memory name) public {
        uint idx = find(id);
        users[idx].name = name;
    }

    function deleteUser(uint id) public{
        uint idx = find(id);
        delete users[idx];
    }

    function find(uint id) view internal returns(uint){
        for (uint256 i = 0; i < users.length; i++) {
            if (users[i].id == id){
                return i;
            }
        }
        revert('User does not exist');
    }
}
