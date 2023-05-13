// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BreakSolidity {

    // 더하기, 빼기, 곱하기, 나누기 그리고 제곱을 반환받는 계산기를 만드세요
    uint a;
    uint b;
    function plus() public view returns(uint) {
        return a + b;
    }
    function substract() public view returns(uint) {
        return a - b;
    }
    function mulitply() public view returns(uint) {
        return a * b;
    }
    function quotient() public view returns(uint) {
        return a / b;
    }
    function remainder() public view returns(uint) {
        return a % b;
    }
    function square() public view returns(uint) {
        return a ** b;
    }
    

    // 2개의 Input값을 가지고 1개의 output값을 가지는 4개의 함수를 만드시오. 각각의 함수는 더하기, 빼기, 곱하기, 나누기(몫)를 실행합니다.
    function plus(uint _a, uint _b) public pure returns(uint) {
        return _a + _b;
    }
    function substract(uint _a, uint _b) public pure returns(uint) {
        return _a - _b;
    }
    function mulitply(uint _a, uint _b) public pure returns(uint) {
        return _a * _b;
    }
    function quotient(uint _a, uint _b) public pure returns(uint) {
        return _a / _b;
    }
    function remainder(uint _a, uint _b) public pure returns(uint) {
        return _a % _b;
    }
    function square(uint _a, uint _b) public pure returns(uint) {
        return _a ** _b;
    }

    // 1개의 Input값을 가지고 1개의 output값을 가지는 2개의 함수를 만드시오. 각각의 함수는 제곱, 세제곱을 반환합니다.
    function square(uint _a) public pure returns(uint) {
        return _a ** 2;
    }
    function cubic(uint _a) public pure returns(uint) {
        return _a ** 3;
    }


    // 이름(string), 번호(uint), 듣는 수업 목록(string[])을 담은 student라는 구조체를 만들고 그 구조체들을 관리할 수 있는 array, students를 선언하세요.
    struct student {
        string name;
        uint number;
        string[] classes;
    }

    student[] students;


    /*
    1~3을 입력하면 입력한 수의 제곱을 반환받습니다.
    4~6을 입력하면 입력한 수의 2배를 반환받습니다.
    7~9를 입력하면 입력한 수를 3으로 나눈 나머지를 반환받습니다.
    */
    function exam5(uint _a) public pure returns(uint) {
        if(_a <= 3) {
            return _a ** 2;
        } else if(_a <= 6) {
            return _a * 2;
        } else if(_a <= 9) {
            return _a % 3;
        } else {
            revert("enter a value less than 10");
        }
    }


    // 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 9까지 자동으로 채우는 함수를 구현하세요.(for 문)
    uint[] numbers;
    function exam6() public returns(uint[] memory) {
        for(uint i = 0; i <= 9; i++) {
            numbers.push(i);
        }
        return numbers;
    }


    // 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 9까지 자동으로 채우는 함수를 구현하세요.(for 문)
    function exam7() public returns(uint[] memory, uint) {
        uint sum;
        for(uint i = 0; i <= 9; i++) {
            numbers.push(i);
            sum = sum + numbers[i];
        }
        return (numbers, sum);
    }


    /*
        1~10을 입력하면 “A” 반환받습니다.
        11~20을 입력하면 “B” 반환받습니다.
        21~30을 입력하면 “C” 반환받습니다.
    */
    function exam8(uint _a) public pure returns(string memory) {
        if(_a <= 10) {
            return "A";
        } else if(_a <= 20) {
            return "B";
        } else if(_a <= 30) {
            return "C";
        } else {
            revert("enter a value less than 30");
        }
    }


    // 문자형을 입력하면 bytes 형으로 변환하여 반환하는 함수를 구현하세요.
    function exam9(string memory _a) public pure returns(bytes memory) {
        return bytes(_a);
    }


    // 숫자만 들어가는 array numbers를 선언하고 숫자를 넣고(push), 빼고(pop), 특정 n번째 요소의 값을 볼 수 있는(get)함수를 구현하세요.
    function exam10Push(uint _a) public {
        numbers.push(_a);
    }
    function exam10Pop() public {
        numbers.pop();
    }
    function exam10Get(uint _n) public view returns(uint) {
        return numbers[_n];
    }

}