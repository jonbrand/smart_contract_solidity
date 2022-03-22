// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Lottery {
  address public immutable OWNER;
  address[] public players;

  // codigo que define regras imutaveis do contrato
  constructor() {
    OWNER = msg.sender;
  }
  // pede uma quantidade minima para o usuario participar da loteria
  function enter() public payable {
    require(msg.value == 0.1 ether, 'Invalid amout');

    players.push(msg.sender);
  }

  // funcao para mostrar os jogadores
  function getPlayers() public view returns (address[] memory) {
    return players;
  }

  // igual um middleware
  modifier onlyOwner {
    require(OWNER == msg.sender, 'Only Owner');
    // continuar executando o codigo
    _;
  }
}