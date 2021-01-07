pragma solidity 0.7.3;

import'@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract TokenOpenZeppelin1 is ERC20 {
    constructor() ERC20('Token Name', 'TOKEN_TICKER') {}
}

contract TokenOpenZeppelin2 is ERC20 {
    constructor() ERC20('Token Name', 'TOKEN_TICKER') {
        _mint(msg.sender, 100000);
    }
}

contract TokenOpenZeppelin2 is ERC20 {
    constructor() ERC20('Token Name', 'TOKEN_TICKER') {
        admin = msg.sender;
    }

    function mint(address to, uint amount) external {
        require(msg.sender == admin, 'only admin can mint');
        _mint(to, amount);
    }
}