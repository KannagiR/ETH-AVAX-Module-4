// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DegenToken {
    string public name;
    string public symbol;
    uint256 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;
    address public owner;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Redeem(address indexed from, string itemName);
    
    string[] public items; 

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }

    constructor() {
        name = "Degen Gaming Token";
        symbol = "DGN";
        decimals = 15;
        totalSupply = 0;
        owner = msg.sender;

        items.push("Hoodie");
        items.push("T-shirt");
        items.push("Bagpack");
        items.push("Surprise");
    }
    // tranfer tokens
    function transfer(address recipient, uint256 amount) external returns (bool) {
        require(amount <= balances[msg.sender], "No available tokens");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
        return true;
    }
    // mint tokens
   function mint(address to, uint256 amount) external onlyOwner {
        totalSupply += amount;
        balances[to] += amount;
        emit Mint(to, amount);
    }
    // burn tokens
    function burn(uint256 amount) external {
        require(amount <= balances[msg.sender], "No available tokens");
        balances[msg.sender] -= amount;
        totalSupply -= amount;
        emit Burn(msg.sender, amount);
    }
    // redeem tokens
    function redeem() external returns (string memory) {
        require(balances[msg.sender] > 500, "Insufficient tokens to redeem");
        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender)));
        randomIndex %= items.length;
        string memory chosenItem = items[randomIndex];

        
        uint256 redemptionAmount = 500; 
        balances[msg.sender] -= redemptionAmount;
        emit Redeem(msg.sender, items[randomIndex]);
        return chosenItem;
    }
    // fetch balance
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}

