// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract key_val{
    
string[][] public key_val_pairs;
uint[] public arr;
string[][] my1DArray;
uint c = 0;
uint[] cnt;
string[][] public vendors;
string [][] public cvendors;
string[][]  public acptord;
string[][] public cacptord;

    
   
 function save(string[][] memory a) public{
        key_val_pairs=a;
        
        for (uint i = 0; i < key_val_pairs.length; i++) {
            
                my1DArray.push(key_val_pairs[i]); // Push the element into the 1D array
                c++;
        }
        cnt.push(c);
    
  }
function get_req() public view returns(uint [] memory)
{
  return cnt;
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
  function display1DArray() public view returns (string[][] memory) {
        return my1DArray;
    }
  function orders(string[][] memory b) public{
    
    vendors = b;
    for (uint i = 0; i < vendors.length; i++) {
            
                cvendors.push(vendors[i]); // Push the element into the 1D array
                
        }

  }
  function get_ord() public view returns (string[][] memory){
  
    return vendors;
  }
  function displayord() public view returns (string[][] memory) {
        return cvendors;
    }
  function acptorders(string[][] memory d) public{
    acptord = d;
    for (uint j = 0; j < acptord.length; j++) {
            
        cacptord.push(acptord[j]); // Push the element into the 1D array
                
    }

  }
  function get_acpt_ord() public view returns (string[][] memory){
  
    return acptord;
  }
  function acpt_displayord() public view returns (string[][] memory) {
        return cacptord;
    }
}
