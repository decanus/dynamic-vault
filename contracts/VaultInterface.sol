pragma solidity ^0.4.18;

interface VaultInterface {

    function withdraw(address token, uint amount) external;
    function balanceOf(address token) public returns (uint);

}
