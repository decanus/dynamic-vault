pragma solidity ^0.4.18;

import "./Connectors/TokenConnectorInterface.sol";

contract Vault is VaultInterface {

    mapping (address => TokenConnectorInterface) connectors;

    function addConnector(address token, TokenConnectorInterface connector) public {
        connectors[token] = connector;
    }

    function withdraw(address token, uint amount) external {
        connectors[token].withdraw(amount);
    }

    function balanceOf(address token) public returns (uint) {
        return connectors[token].balance();
    }
}
