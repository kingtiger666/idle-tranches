// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
  address public minter;

  constructor(
    string memory _name, // eg. IdleDAI
    string memory _symbol // eg. IDLEDAI
  ) ERC20(_name, _symbol) {
    minter = msg.sender;
    _mint(msg.sender, 10000 * 10**18);
  }

  function mint(address account, uint256 amount) external {
    _mint(account, amount);
  }
  function burn(address account, uint256 amount) external {
    _burn(account, amount);
  }
}