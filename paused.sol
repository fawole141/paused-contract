pragma solidity ^0.5.0;
contract functionModifier{

   uint public count;

   bool public paused;

modifier whenNotPaused(){
require(!paused);
_;
}

   function setPause(bool _x) public whenNotPaused {
      paused = _x;
   }

function increase() public whenNotPaused{

    count += 1;
}

function decrease() public{

    count -= 1;
}

modifier basket(uint _x){
require(_x<100,"above 100");
_;
}

function incBy(uint _x) public basket(_x){

 count += 1;
}

}


