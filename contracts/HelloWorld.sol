// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract HelloWorld {
    string private message;

    function contructor(string memory mess) public {
        message = mess;
    }

    function SetMessage(string memory mess) public {
        message = mess;
    }

    function GetMessage() public view returns (string memory) {
        return message;
    }
}
