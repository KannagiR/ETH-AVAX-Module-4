// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenGToken is ERC20 {
    
    address public owner;
    
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor() ERC20 ("Degen","DGN") {
         owner = msg.sender;
    }

    string [3] public RedeemItems = ['1.Hoodie', '2.Cap', '3.Bagpack'];

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function.");
        _;
    }
   
    // Mint new tokens
    function minttoken(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
        emit Mint(to, amount);
    }

    // Transfering tokens.
    function transfertokens(address to, uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient tokens");
        require(amount > 0, "Too low value");
        _transfer(msg.sender, to, amount);
    }

    // Burning tokens
    function burntokens(uint256 amount) external {
        require(amount <= balanceOf(msg.sender), "Insufficient tokens");
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }

    function checkItemAvailability(uint256 itemno) public view returns (bool) {
    if(itemno < 1 || itemno > RedeemItems.length){
        return false;
    }
    return true;
    }

    // Redeeming tokens for items
    function redeemtokensForItem(uint256 itemno) external {
        uint256 redeemAmount; 
        uint256 shippingCost = 50;

       if(itemno == 1){ redeemAmount = 100;}
      
       else if(itemno == 2) { redeemAmount = 200;}
       
       else if(itemno == 3) { redeemAmount = 300;}
      
       else{
           revert("Incorrect item number");
       }
        require(balanceOf(msg.sender) >= redeemAmount + shippingCost, "Insufficient Tokens for redemption");
        _burn(msg.sender, redeemAmount);
    }

    function RedeemableItems() public view returns (string[3] memory) {
        return RedeemItems;
    }
}
