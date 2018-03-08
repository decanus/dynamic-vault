pragma solidity ^0.4.18;

interface TokenConnector {

    function withdraw(address token, address to, uint amount) external;
    function balance(address token) public view returns (uint);

}
