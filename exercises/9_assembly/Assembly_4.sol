// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;
contract Scope {

    uint public count = 10;
    
    function increment(uint numb) public {        

        // Modify state of the count from within 
        // the assembly segment
        assembly {
            let l
            l := sload(count.slot)
            
            sstore(count.slot, add(numb, l))
            
        }
    }    
}