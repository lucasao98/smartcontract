// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Degree {
    address public owner;

    mapping(address => bytes32) degrees;

    event ToAward(address indexed _from, address indexed _to, bytes32 _hash);

    constructor() {
        owner = msg.sender;
    }

    function hash(string memory _json) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_json));
    }

    function emitDegree(address to, bytes32 hashvalue) external {
        degrees[to] = hashvalue;
        emit ToAward(msg.sender, to, hashvalue);
    }

    function getDegree(address account) external view returns (bytes32){
        return degrees[account];
    }
}