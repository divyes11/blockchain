//SPDX-License_Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorege {
    //int256 id = 1;
    //int256 Userid = 12;
    //bool status = true;
    //string name = "Tushar";
    //address useraddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //bytes64

    //this will get init

    uint256 favariteNumber;
   // bool favariteNumber;
    string name;
    struct People{
        uint256 favariteNumber;
        string name;
    }

    People public person = People({favariteNumber:2,name:"divyesh"});
    People[] public people;
    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favariteNumber) public {  
                 favariteNumber = _favariteNumber;
    }
    //view
    function retrieve() public view returns(uint256) {
        return favariteNumber;
    }
    function addperson(string memory _name, uint256 _favariteNumber) public {
        people.push(People(_favariteNumber, _name));
        nameToFavoriteNumber[_name] = _favariteNumber;
    }
    
}



