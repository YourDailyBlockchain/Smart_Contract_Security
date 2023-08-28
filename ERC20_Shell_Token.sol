
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract ShellToken is ERC20 {

    address public owner;
    
    constructor() ERC20("Shells", "shell") {
        owner = msg.sender;
    }

    function mint(address _to, uint _amount) external {
        require(msg.sender == owner, "Only the owner can mint");
        _mint(_to, _amount);
    }
}

