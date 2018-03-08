pragma solidity ^0.4.18;

import "./TokenConnectorInterface.sol";

contract EtherTokenConnector is TokenConnectorInterface {

    function withdraw(address token, address to, uint amount) external {
        to.transfer(amount);
    }

    function () public payable { }

    function balance(address token) public view returns (uint) {
        return address(this).balance;
    }

}
