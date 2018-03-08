pragma solidity ^0.4.0;
import "./safemath.sol";
contract token{
    using safemath for uint256;
    address owner;
    struct bal{
        uint256 tok;
    }
     string   name="erc20";
     string   symbol="cft";
     string   decimal="18";
     uint256 totalSupply=100000;
     
    mapping(address=>bal)balanceOf;
   
    function transfer(address to,uint256 tokens)public  {
        require(balanceOf[msg.sender].tok>tokens && tokens>0);
        balanceOf[to].tok=balanceOf[to].tok.add(tokens);
        balanceOf[msg.sender].tok=balanceOf[msg.sender].tok.sub(tokens);
        
    }
    function mint(uint256 tokens)public  {
        require(tokens<=totalSupply);
        balanceOf[msg.sender].tok= balanceOf[msg.sender].tok.add(tokens);
       
    }
    function balanceof(address who)public constant returns(uint256){
        return balanceOf[who].tok;
    }
   
   
}
