pragma solidity ^0.4.17;

contract Fridge {

    uint cola;

    function Fridge() public {
        cola = 100;
    }

    function fillCola(uint add) public returns (uint newStock) {
        cola = cola + add;
        return cola;
    }

    function giveColaToThomas() public returns (uint newCola) {
        cola = cola - 1;
        return cola;
    }

    function getStock() public returns (uint stock) {
        return cola;
    }


}