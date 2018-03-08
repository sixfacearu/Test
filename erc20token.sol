pragma solidity ^0.4.0;
import "./safemath.sol";
contract token{
    address owner;
    string name="six";
    string sympol="cft";
    uint256 decimal=18;
    uint256 totalsupply=100000;
     mapping(address=>uint256)balanceOf;
     modifier onlyowner{
         require(owner==msg.sender);
         _;
     }
     function token()public{
         owner=msg.sender;
     }
     
    mapping(address=>uint256)balanceOf;
   
    function transfer(address to,uint256 tokens)public onlyowner {
        require(balanceOf[msg.sender]>tokens && tokens>0);
        balanceOf[to]=balanceOf[to].add(tokens);
        balanceOf[msg.sender]=balanceOf[msg.sender].sub(tokens);
        
    }
    function mint(uint256 tokens)public onlyowner {
        require(tokens<=totalSupply);
        balanceOf[msg.sender]= balanceOf[msg.sender].add(tokens);
       
    }
    function balanceof(address who)public constant returns(uint256){
        return balanceOf[who];
    }
   
   
}
