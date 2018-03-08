pragma solidity ^0.4.0;
library safemath{
function add(uint256 a,uint256 b)public view returns(uint256 c){
c=a+b;
return c;}
function sub(uint256 a,uint256 b)public view returns(uint256 c){
c=a-b;
return c;}
function mul(uint256 a,uint256 b)public view returns(uint256 c){
c=a*b;
return c;}
function div(uint256 a,uint256 b)public view returns(uint256 c){
c=a/b;
return c;}}
