//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract aaasdasdasd{

    /*
        1. x가 100일때 맵핑, 어레이에 넣는다.
        2. 맵핑, 어레이에는 100이 저장된다.
        3. x의 값을 바꾼다.
        4. 맵핑, 어레이를 조회해도 기존값 100이 리턴된다.
    */

    uint256 x = 100;
    uint256[] xArr;
    mapping(uint256 => uint256) mapArr; 


    function putX() public {
        xArr.push(x);
        mapArr[0] = x;
    }

    function getX() view public returns(uint256){
        return x;
    }

    function setX() public {
        x = 255;
    }   

    function getArrX0() view public returns(uint256) {
        return xArr[0];
    }

    function getMapX0() view public returns(uint256) {
        return mapArr[0];
    }
}