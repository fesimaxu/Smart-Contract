// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract igweToken is ERC20 {

    uint256 public igweTokenPerEth = 1000 * 10 ** decimals();

    constructor() ERC20 ("igweToken", "ITN") {
        _mint(msg.sender, 1000000 * (10 ** decimals()));
    }

    function buyToken(address _beneficiary) public payable {
        uint256 amountToreceive = (msg.value/10 ** decimals()) * igweTokenPerEth;
        _mint(_beneficiary, amountToreceive);
    }
    
  
}
