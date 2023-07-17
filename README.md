# ETH-AVAX Module 4
## DegenToken contract.
### LICENSE
 it is using the MIT license.
### VERSION
 SOLIDITY VERSION ^0.8.9

### Contract Details
The DegenToken.sol file contains the source code for the DEGEN token contract. Here are the key details of the contract:

 **Token Name:** Degen Gaming Token
 **Token Symbol:** DEGEN
 **Total Supply:** 100000 
 The contract includes standard ERC-20 functions such as balanceOf, transfer, redeem.. It also includes additional functionalities for minting and burning 
 tokens.

The contract owner has special privileges and is the only address allowed to mint new tokens. Other addresses can interact with the contract by transferring tokens, redeeming tokens for purchases, and burning their own tokens.

### Deployment on Avalanche Fuji Test Network using Remix Injector
To deploy the DEGEN token contract to the Avalanche Fuji Test Network using Remix Injector, follow these steps:

1.Open the Remix online IDE in your browser.
2.Create a new file named DegenToken.sol and copy the contents of the DegenToken.sol file from this repository into it.
3.Select the Solidity compiler version 0.8.0 or a compatible version.
4.Compile the contract by clicking the "Compile" button.
5.Switch to the "Deploy & Run Transactions" tab.
6.In the "Environment" , select "Injected Web3" to connect Remix to your MetaMask wallet.
7.Make sure your MetaMask wallet is connected to the Avalanche Fuji Test Network.
8.Click the "Deploy" button next to the DegenToken contract.
9.Confirm the deployment transaction in MetaMask.
10.Wait for the deployment transaction to be confirmed on the Avalanche network.
11.Once the contract is deployed, you will see the contract address in the Remix console.
 
### Functions
1. Use the balanceOf function to check the token balance of a specific address.
2. Use the transfer function to send DEGEN tokens from your address to another address.
3. Use the burn function to burn a specific amount of your DEGEN tokens.
4. Use redeem function to buy available items from the list using the available tokens.
5. Use the mint function (accessible only to the contract owner) to mint new DEGEN tokens.
6. Use the get owner function to check if he/she is the owner of the contract.

## snowtrace
Verify your contrace at avalanche fuji testnet on `snowtrace.io` and check the contract transaction

## metamask 
Also set the network metamask to avalanchefuji network manually
* and transfer testtoken from avalanche mainnet.

 
