// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FakeNFT is ERC721 {
    uint256 tokenId = 1;
    uint256 constant price = 0.001 ether;

    constructor() ERC721("FAKE", "FAKE") {}

    function mint() public payable {
        require(msg.value == price, "Ether Send is incorrect");
        _mint(msg.sender, tokenId);
        tokenId += 1;
    }
}
