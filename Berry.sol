// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("Berry", "by")Ownable(msg.sender) {}
    
    function mintBerry(uint256 amount) public onlyOwner {
        _mint(msg.sender, amount);
    }
     function decimals() override public pure returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function transferBerry(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Berry Tokens");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnBerry(uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "You do not have enough Berry Tokens");
        _burn(msg.sender, _value);
    }

}

      
