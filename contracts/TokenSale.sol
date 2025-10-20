// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

import {MyToken} from "./MyToken.sol";
import {MyNFT} from "./MyNFT.sol";

contract TokenSale {
    uint256 public ratio;
    uint256 public price;
    MyToken public tokenContract;
    MyNFT public nftContract;

    constructor(
        uint256 _ratio,
        uint256 _price,
        MyToken _tokenContract,
        MyNFT _nftContract
    ) {
        ratio = _ratio;
        price = _price;
        tokenContract = _tokenContract;
        nftContract = _nftContract;
    }

    function buyTokens() public payable {
        tokenContract.mint(msg.sender, msg.value * ratio);
    }
}
