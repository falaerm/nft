pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract NFT is ERC1155 {
    
    constructor() ERC1155('ipfs://QmR1A9tKpWs72YeuQfzFbmyekAG5ni3G7JWsagjiRwu9wo/{id}.json') {
        for(uint  i = 1 ; i < 500 ; i++) {
           _mint(msg.sender, i, 1, bytes(abi.encodePacked("Feeling crazy by Falaerm number #", Strings.toString(i)))); 
        }
    }
    
    function uri(uint _tokenId) override public pure returns(string memory) {
        return string(abi.encodePacked(
            "ipfs://QmR1A9tKpWs72YeuQfzFbmyekAG5ni3G7JWsagjiRwu9wo/",
            Strings.toString(_tokenId),
            ".json"
        ));
    }

    function name() public pure returns(string memory) {
        string memory collection = "Feeling crazy by Falaerm";
        return collection;
    }
}
