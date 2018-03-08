pragma solidity ^0.4.18;

import "./Connectors/TokenConnectorInterface.sol";

contract Vault is VaultInterface {

    mapping (address => TokenConnectorInterface) connectors;

    function addConnector(address token, TokenConnectorInterface connector) public {
        connectors[token] = connector;
    }

    function withdraw(address token, uint amount) public {
        connectors[token].withdraw(amount);
    }
}
