# ETH-AVAX-PROOF-Intermediate-EVM-Course-4
## DegenToken contract.
### LICENSCE
 it is using the MIT license.
### VERSION
 SOLIDITY VERSION ^0.8.9

### IMPORTS CONTRACTS FROM OPENZEPPELIN LIBRARY 
 These lines import three different Solidity contracts from the OpenZeppelin library. 
 * The first import is for the ERC20 contract, which provides a basic implementation of the ERC20 token standard.
 * The second import is for the ERC20Burnable contract, which extends ERC20 and adds functionality to burn tokens.
 * The third import is for the Ownable contract, which provides a basic access control mechanism.
### DegenToken
 contract named "DegenToken" and specifies that it inherits from the ERC20, ERC20Burnable, and Ownable contracts. By inheriting these contracts, the DegenToken contract inherits their functions and variables
 
### constructor()
 `constructor function that is executed when the contract is deployed. It calls the constructor of the ERC20 contract with the parameters "DegenToken" and "DGN" to set the token name and symbol, respectively. Then, it mints 10,000 tokens to the address of the contract deployer (msg.sender) using the _mint function inherited from ERC20.
 * `mint function`
 function allows the contract owner to mint new tokens. It takes two parameters: the recipient's address (to) and the amount of tokens to be minted (amount). The onlyOwner modifier ensures that only the contract owner can call this function. The function then calls the inherited _mint function to create new tokens and assigns them to the specified address.
 * `transfer function`
 transfer function from the ERC20 contract. It allows token holders to transfer tokens to another address (to). It takes two parameters: the recipient's address (to) and the amount of tokens to be transferred (amount). The function calls the internal _transfer function (inherited from ERC20) to perform the actual token transfer and returns true if the transfer is successful.
 * `redeem function`
 function allows token holders to burn (destroy) their tokens. It takes one parameter: the amount of tokens to be burned (amount). The function calls the internal _burn function (inherited from ERC20Burnable) to burn the specified amount of tokens owned by the caller.
 * `balanceOf function`
 This function allows anyone to retrieve the token balance of a specific address (account). It overrides the balanceOf function inherited from ERC20 and returns the token balance of the specified address by calling the inherited balanceOf function using the super keyword.
 
 Overall, this code defines a basic ERC20 token contract named "DegenToken" with additional functionalities inherited from ERC20Burnable and Ownable contracts. It includes features such as token minting, burning, and transfers.

  ## snowtrace
  verify your contrace at avalanche fuji testnet on `snowtrace.io` and check the contract transaction

  ## metamask 
  also set the network metamask to avalanchefuji network manually
* and transfer testtoken from avalanche mainnet

  ### helping video
  `https://www.loom.com/share/654ebd302e72422b94a1e8076b1929bd?sid=2486da8a-c994-4db2-a68c-d6469e55f33e`
