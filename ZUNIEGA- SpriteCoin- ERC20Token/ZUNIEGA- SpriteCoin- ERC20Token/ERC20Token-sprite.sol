// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SpriteCoin 
{
    string public name = "Sprite Coin";
    string public symbol = "SC";
    uint public supply = 0;
    mapping (address => uint) public coinBalances; 

    function mintCoins(address to, uint amount) public 
    {
        supply += amount; 
        coinBalances[to] += amount;
    }

    function burncoins(address from, uint amount) public 
    {
        require(coinBalances[from]>= amount, "Balance is not enough to burn.");
        supply -= amount;
        coinBalances[from] -= amount;
    }
    function trasnferCoins(address from, address recipient, uint amount) public 
    {
        require (coinBalances[from] >= amount, "Insufficient Amount. Cannot proceed to transfer coins.");
        coinBalances[from] -= amount;
        coinBalances[recipient] += amount;
        supply -= amount;
    }

}