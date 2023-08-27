// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable ,ERC20Burnable{
    string public Token_Name = "Degen";
    string public Abb = "DGN";
    uint[] redeem_costs = [10,20,30,40];
    string public redeem_list = "Rifle[1] : 1; Shotgun[2] : 20 ; Pistol[3] : 30 ; Revolver[4] : 40";

    constructor() ERC20(Token_Name, Abb) {}

    function mint_token(address to, uint256 amount) public onlyOwner
    {
        _mint(to, amount);
    }

    function burn_token(uint _value) public
    {
        require(balanceOf(msg.sender) >= _value,"Insufficient balance");
        _burn(msg.sender, _value);
    }

    function transfer_token(address _to, uint _value) public 
    {   require(balanceOf(msg.sender) >= _value,"Insufficient balance");
        _transfer(msg.sender, _to, _value);
    }

    function redeem_token (uint number) public
    {
        require(balanceOf(msg.sender) >= redeem_costs[number-1],"Oops!! Out of money");
        _burn(msg.sender, redeem_costs[number-1]);
    }

    function self_balance() public view returns(uint)
    {
        return this.balanceOf(msg.sender);
    }

}
//Test-Account : 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
