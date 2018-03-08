pragma solidity ^0.4.18;

import "./VaultInterface.sol";
import "./Ownership/Ownable.sol";
import "./Connectors/TokenConnectorInterface.sol";

contract Vault is Ownable, VaultInterface {

    mapping (address => TokenConnectorInterface) public connectors;

    function withdraw(address token, uint amount) external {
        connectors[token].withdraw(token, msg.sender, amount);
    }
    
    function addConnector(address token, TokenConnectorInterface connector) public onlyOwner {
        connectors[token] = connector;
    }

    function balanceOf(address token) public view returns (uint) {
        return connectors[token].balance(token);
    }
}
