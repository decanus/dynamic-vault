pragma solidity ^0.4.18;

import "./TokenConnectorInterface.sol";

contract EtherTokenConnector is TokenConnectorInterface {

    function () payable { }

    function withdraw(address token, address to, uint amount) external {
        to.transfer(amount);
    }

    function balance(address token) public view returns (uint) {
        return this.balance;
    }

}
