pragma solidity ^0.4.18;

import "./TokenConnectorInterface.sol";
import "../Tokens/ERC20.sol";

contract ERC20TokenConnector is TokenConnectorInterface {

    function deposit(ERC20 token, uint amount) {
        require(token.transferFrom(msg.sender, amount));
    }

    function withdraw(address token, address to, uint amount) external {
        ERC20(token).transfer(to, amount);
    }

    function balance(address token) public view returns (uint) {
        return ERC20(token).balanceOf(this);
    }

}
