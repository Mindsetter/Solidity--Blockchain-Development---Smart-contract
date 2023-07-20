// SPDX-License-Identifier: MIT

pragma solidity 0.8.19; // solidity version

contract SimpleStorage {
    // variable
    uint256 favoriteNumber;

    // method or function to store favoriteNumber
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view & pure require no transaction fees when reading or fetching data
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // uint256[] listOfFavoriteNumber;

    struct Person {
        uint256 myLuckyNumber;
        address myAddress;
    }

    Person[] public listPfContributors;

    mapping(address => uint256) public addressToLuckyNumbers;

    //    Person public contributor = Person({myLuckyNumber: 5, myAddress: 0xA02136cccBD67BC00E9e9344d4B6044a2723Ef0f});

    function addPerson(address _myAddress, uint256 _myLuckyNumber) public {
        listPfContributors.push(Person(_myLuckyNumber, _myAddress));
        addressToLuckyNumbers[_myAddress] = _myLuckyNumber;
    }
}
