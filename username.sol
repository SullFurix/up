// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Username
 * @dev Store & return username for address
 */
contract Username {

    mapping(address => string) public username;

    /**
     * @dev Set username for msg.sender
     * @param _username to set for msg.sender
     */
    function setUsername(string memory _username) external {
        username[msg.sender] = _username;
    }

    /**
     * @dev Get username for _owner
     * @param _owner of username
     * @return username
     */
    function getUsername(address _owner) public view returns (string memory){
        return username[_owner];
    }
}
