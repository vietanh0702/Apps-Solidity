pragma solidity ^0.5.13;

contract SendMoney {
        uint public balaceReceived;
    
        function receiveMoney() public payable{
            balaceReceived+=msg.value;
        }
        
        function getBalance() public view returns(uint){
            return address(this).balance;
        }
        
        function withdrawMoney() public {
            address payable to = msg.sender;
            to.transfer(this.getBalance());
            
        }
        function withdrawMoneyTo(address payable _to)public  {
                _to.transfer(this.getBalance());
        }
}