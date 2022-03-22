// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract HelloWorld {
  // variavel de estado
  string public messageState = "Ola Jonbrand!";

  string public constant MESSAGE_CONSTANT = "Ola Dev!";

  //constante
  address public constant DONATION_ADDRESS = 0x8daa623f9F22586825149E48C4BE66105C7e9a9a;

  // imultavel
  address public immutable OWNER;

  constructor () {
    OWNER = msg.sender;
  }

  function getMessage() public pure returns (string memory){
    // variavel de escopo de funcao
    string memory internalMessage = "Ola Jonbrand!";

    return internalMessage;
  }

  function getBlockNumber() public view returns (uint) {
    return block.number;
  }
}