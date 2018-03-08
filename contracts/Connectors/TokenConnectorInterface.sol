pragma solidity ^0.4.18;

interface TokenConnector {

    function withdraw(address token, uint amount) external;
    function balance(address token) public view returns (uint);

}
