# SpriteCoin

The SpriteCoin smart contract is a simple implementation of an ERC20-like token using Solidity. This contract allows users to mint, burn, and transfer tokens, simulating basic token functionality. It is designed to illustrate fundamental concepts of token management in smart contracts on the Ethereum blockchain.

## Description

The SpriteCoin contract is written in Solidity and provides a basic implementation of token management. It includes functions for minting new tokens, burning existing tokens, and transferring tokens between addresses. This contract is intended for educational purposes and serves as a starting point for more complex token implementations.

### Features

- **Mint Tokens**: Add new tokens to a specified address.
- **Burn Tokens**: Remove tokens from a specified address.
- **Transfer Tokens**: Move tokens from one address to another.

## Getting Started

### Executing the Contract

To deploy and interact with this contract, you can use Remix, an online Solidity IDE. Follow these steps:

1. **Access Remix**: Go to the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).

2. **Create a New File**: Click on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `SpriteCoin.sol`).

3. **Paste the Code**: Copy and paste the following code into the file:

    ```solidity
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.25;
    
    contract SpriteCoin {
        string public name = "Sprite Coin";
        string public symbol = "SC";
        uint public supply = 0;
        mapping (address => uint) public coinBalances; 
    
        function mintCoins(address to, uint amount) public {
            supply += amount; 
            coinBalances[to] += amount;
        }
    
        function burnCoins(address from, uint amount) public {
            require(coinBalances[from] >= amount, "Balance is not enough to burn.");
            supply -= amount;
            coinBalances[from] -= amount;
        }
    
        function transferCoins(address from, address recipient, uint amount) public {
            require(coinBalances[from] >= amount, "Insufficient Amount. Cannot proceed to transfer coins.");
            coinBalances[from] -= amount;
            coinBalances[recipient] += amount;
            supply -= amount;
        }
    }
    ```

4. **Compile the Code**: Click on the "Solidity Compiler" tab in the left-hand sidebar. Ensure the "Compiler" option is set to "0.8.25" (or a compatible version), and then click on the "Compile SpriteCoin.sol" button.

5. **Deploy the Contract**: Click on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "SpriteCoin" contract from the dropdown menu, and then click on the "Deploy" button.

6. **Interact with the Contract**: After deployment, you can interact with the contract by calling the functions `mintCoins`, `burnCoins`, and `transferCoins` to manage the token supply and perform transactions.

## Authors

ZUNIEGA, Kane Nathaniel O.
## FEU INSTITUTE OF TECHNOLOGY

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
