pragma solidity ^0.4.18;

import "./Ownership/Ownable.sol";
import "./Connectors/TokenConnectorInterface.sol";

contract Vault is Ownable, VaultInterface {

    mapping (address => TokenConnectorInterface) connectors;

    function addConnector(address token, TokenConnectorInterface connector) public onlyOwner {
        connectors[token] = connector;
    }

    function withdraw(address token, uint amount) external {
        connectors[token].withdraw(token, msg.sender, amount);
    }

    function balanceOf(address token) public view returns (uint) {
        return connectors[token].balance(token);
    }
}
