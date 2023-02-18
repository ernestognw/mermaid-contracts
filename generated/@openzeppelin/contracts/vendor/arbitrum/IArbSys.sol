classDiagram
  %% 531:4773:0
  class IArbSys {
    <<Interface>>
    #arbBlockNumber(): (uint256)$
    #arbBlockHash(uint256 arbBlockNum): (bytes32)$
    #arbChainID(): (uint256)$
    #arbOSVersion(): (uint256)$
    #getStorageGasAvailable(): (uint256)$
    #isTopLevelCall(): (bool)$
    #mapL1SenderContractAddressToL2Alias(address sender, address unused): (address)$
    #wasMyCallersAddressAliased(): (bool)$
    #myCallersAddressWithoutAliasing(): (address)$
    #withdrawEth(address destination): (uint256)$
    #sendTxToL1(address destination, bytes calldata data): (uint256)$
    #sendMerkleTreeState(): (uint256 size, bytes32 root, bytes32[] memory partials)$
  }
  