// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Products {
    uint256 productCount;

    struct ProductStruct {
        string id;
        address sender;
        string category;
        bool halal;
        string slaughterhouseName;
        string slaughterhouseLocation;
        uint256 timestamp;
        uint useWithinDays;
        uint batchNo;
    }

   /*  function generateID(address sender, uint256 timestamp) private pure returns (bytes32) {
        return  keccak256(abi.encodePacked(sender, timestamp)) ;
    } */

    ProductStruct[] products;

    function addToBlockchain(string memory id, string memory category, bool halal, string memory slaughterhouseName, string memory slaughterhouseLocation, uint useWithinDays, uint batchNo ) public {
        productCount += 1;
   // bytes32 id = generateID(msg.sender, block.timestamp);
        products.push(ProductStruct(id, msg.sender, category, halal, slaughterhouseName, slaughterhouseLocation, block.timestamp, useWithinDays, batchNo));
    }

    function getAllProducts() public view returns (ProductStruct[] memory) {
        return products;
    }

    function getProductCount() public view returns (uint256) {
        return productCount;
    }

    function getProductById(string memory ID) public view returns (ProductStruct memory) {
         ProductStruct memory prod;
        for(uint i =0; i < products.length; i++) {
            if(keccak256(abi.encodePacked( products[i].id)) == keccak256(abi.encodePacked(ID))
             ) {
                prod = products[i];
                break;
            }
        }
        return prod;
    }

}

