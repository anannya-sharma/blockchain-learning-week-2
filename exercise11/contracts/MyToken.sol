pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    uint256 public totalSupply;

    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        _mint(msg.sender, initialSupply);
        totalSupply = initialSupply;
    }

    // Mint new tokens
    function mint(address recipient, uint256 amount) public {
        // Safety check: prevent overflow
        require(totalSupply + amount <= type(uint256).max, "Minting would exceed max supply");

        _mint(recipient, amount);
        totalSupply += amount;
    }

    // Burn tokens
    function burn(uint256 amount) public {
        // Safety check: prevent burning more than balance
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to burn");

        _burn(msg.sender, amount);
        totalSupply -= amount;
    }

    // Transfer tokens
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        // Safety check: prevent transferring more than balance
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to transfer");

        // Call the parent transfer function with safety checks
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}