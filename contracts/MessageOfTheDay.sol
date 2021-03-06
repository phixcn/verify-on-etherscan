pragma solidity 0.4.23;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";


contract MessageOfTheDay is Ownable {
    string public message;

    constructor(string _message) public {
        message = _message;
    }

    function setMessage(string _message) public onlyOwner returns (bool) {
        message = _message;
        return true;
    }
}
