pragma solidity 0.7.3;

import '@openzeppelin/contracts/token/ERC721.ERC721.sol';

contract ERC721OpenZeppelin1 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {}
}

//adding safe mint to an ERC721 contract
contract ERC721OpenZeppelin2 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {
        _safeMint(msg.sender, 0);
    }
}

//putting safe mint into separate function only called by admin
contract ERC721OpenZeppelin3 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {
        admin = msg.sender;
    }
    function mint(address to, uint tokenId) external {
        require(msg.sender == admin, 'only admin can mint');
        _safeMint(msg.sender, 0);    
    }
}

//contract where any user could mint NFT's
contract ERC721OpenZeppelin4 is ERC721 {
    constructor() ERC721('Token Name', 'Token Symbol') {
        admin = msg.sender;
    }
    function faucet(address to, uint tokenId) external {
        _safeMint(msg.sender, 0);    
    }
}