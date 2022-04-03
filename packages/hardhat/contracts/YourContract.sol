pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

struct Finances {
    string name;
    uint256 amount;
}

contract YourContract {
    event SetPurpose(address sender, string purpose);

    //address public owner = 0xb43F7be1CbBB7c96AeAEaff4598044052a8A2097;
    string public purpose = "Building Unstoppable Apps!!!";
    
    mapping(address => Finances) finances;

    constructor() {
        // what should we do on deploy?
        finances[msg.sender].name = "test";
        finances[msg.sender].amount = 400;
    }

    function getFinances() public view returns (Finances memory) {
        Finances storage _finances = finances[msg.sender];
        return _finances;
    }

    function getUserFinances(address user) public view returns (Finances memory) {
        Finances storage _finances = finances[user];
        return _finances;
    }

    function setFinances(address user, string calldata _name, uint256 _amount) public {
        Finances memory _finances = Finances({ 
            name: _name,
            amount: _amount
        });
        finances[user] = _finances;
        console.log(msg.sender, "set finances to", _amount);
    }

    function setPurpose(string memory newPurpose) public {
        purpose = newPurpose;
        console.log(msg.sender, "set purpose to", purpose);
        emit SetPurpose(msg.sender, purpose);
    }
}
