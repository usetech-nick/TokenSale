// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.28;

contract TokenSale {
    uint256 public ratio;
    uint256 public price;
    address public tokenAddress;
    address public nftAddress;

    constructor(
        uint256 _ratio,
        uint256 _price,
        address _tokenAddress,
        address _nftAddress
    ) {
        ratio = _ratio;
        price = _price;
        tokenAddress = _tokenAddress;
        nftAddress = _nftAddress;
    }
}
