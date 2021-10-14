// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/* if you wnat to create same smart contrcts and keep trcak of all addresses 
this Factory child pattern is used */

contract Factory {
    
    Child[] public children;
    event ChildCreated(
        uint date,
        uint data,
        address childAddress);
        
        function createChild(uint _data) external {
            Child child = new Child(_data);
            children.push(child);
            emit ChildCreated(
                block.timestamp,
                _data,
                address(child)
                );
        }
}

contract Child {
    uint data ;
    constructor (uint _data ) public {
        data = _data ;
    }
}
