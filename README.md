# Degen Token for Gaming
DegenToken is a custom ERC20 token implemented as a Solidity smart contract. It provides standard ERC20 token functionality along with additional features such as minting, burning, transferring, and redeeming tokens. The contract is also integrated with OpenZeppelin's Ownable and ERC20Burnable contracts for ownership control and token burning capabilities.

## Features
1. Minting Tokens: The owner of the contract can mint new tokens and distribute them to specific addresses.

2. Burning Tokens: Users can burn their own tokens, effectively destroying them and reducing the overall token supply.

3. Transferring Tokens: Users can transfer tokens to other addresses if they have a sufficient balance.

4. Redeeming Tokens: Users can redeem their tokens for certain items by burning the required number of tokens. Redeemable items and their costs are predefined.

## Redeemable Items
The following items can be redeemed using tokens:

1. Rifle (Cost: 10 tokens) - Item Number: 1
2. Shotgun (Cost: 20 tokens) - Item Number: 2
3. Pistol (Cost: 30 tokens) - Item Number: 3
4. Revolver (Cost: 40 tokens) - Item Number: 4
5. 
## Process
First you need to change the environment in deploy tab to "injectd provider" then you need to select the wallet, here i have used matamask wallet for doing transactions.
Then you are done with it also you should have some amount in your wallet for transactions.
after every transactions you need to click on confirm button in your wallet.
## How and where to Run the Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Now once you are on the remix IDE you need to create a new ".sol" file by clicking on the create new file icon.

After creating the file you need to specify the 
```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //Version of solidity using
```
Now Write the remaining code after this, like declaring the variables and creating the functions like "mint" , "burn" and "transfer".

Now to run the code first you need to compile the code for that press `Ctrl+S` or you can compile the code by pressing the compile button in `solidity compiler` Tab on the left side of the IDE.

After compiling you need to deploy the contract by clicking the `deploy` button present in the `deploy & run transcations` tab.

At the bottom the you will find your contract running, there you will find all the public variables and functions, by clicking them and putting the values in the function you can get the output accordingly.

### Authors
@Vinay Kumar Gupta

### license
This project is licensed under the MIT License.



