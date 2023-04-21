// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract key_val{
    
string[][] public key_val_pairs;
uint[] public arr;
   
 function save(string[][] memory a) public{
        key_val_pairs=a;
  }

function get_pairs() public view returns(string [][] memory){
        return key_val_pairs;
  }
  function addprice(uint a) public{
    arr.push(a);
  }
  function showprice() public view returns(uint [] memory){
    return arr;
  }
}
