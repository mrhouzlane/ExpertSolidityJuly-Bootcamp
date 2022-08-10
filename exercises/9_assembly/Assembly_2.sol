// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;
contract Add {
    function addAssembly(uint x, uint y) public pure returns (uint) {        

        // Intermediate variables can't communicate 
        assembly {            

            let result := add(x, y)  
            mstore(0x0, result)
            return(0x0, 32)            
        }
    }
    
    function addSolidity(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}


