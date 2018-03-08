pragma solidity ^0.4.18;

interface TokenConnector {

    function withdraw(uint amount) external;
    function balance() public view returns (uint);

}
