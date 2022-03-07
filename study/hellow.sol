//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract hellow{
    uint index = 0;

    struct Character{
        uint256 age;
        string name;
        string job;
    }
    
    mapping(uint256=>Character) public CharacterMapping;
    Character[] public CharacterArray;

    function createCharacter(uint256 _age,string memory _name,string memory _job) pure public returns(Character memory) {
        return Character(_age,_name,_job);
    }

    function createChracterMapping(uint256 _age,string memory _name,string memory _job )  public {
       CharacterMapping[index++] = Character(_age,_name,_job);
    }  

}