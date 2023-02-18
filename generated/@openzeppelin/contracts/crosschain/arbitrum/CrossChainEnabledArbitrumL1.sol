classDiagram
  %% 341:4934:5
  class IOutbox {
    <<Interface>>
    #rollup(): (address)$
    #bridge(): (contract IBridge)$
    #spent(uint256): (bytes32)$
    #roots(bytes32): (bytes32)$
    #OUTBOX_VERSION(): (uint128)$
    #updateSendRoot(bytes32 sendRoot, bytes32 l2BlockHash)$
    #l2ToL1Sender(): (address)$
    #l2ToL1Block(): (uint256)$
    #l2ToL1EthBlock(): (uint256)$
    #l2ToL1Timestamp(): (uint256)$
    #l2ToL1OutputId(): (bytes32)$
    #executeTransaction(bytes32[] calldata proof, uint256 index, address l2Sender, address to, uint256 l2Block, uint256 l1Block, uint256 l2Timestamp, uint256 value, bytes calldata data)$
    #executeTransactionSimulation(uint256 index, address l2Sender, address to, uint256 l2Block, uint256 l1Block, uint256 l2Timestamp, uint256 value, bytes calldata data)$
    #isSpent(uint256 index): (bool)$
    #calculateItemHash(address l2Sender, address to, uint256 l2Block, uint256 l1Block, uint256 l2Timestamp, uint256 value, bytes calldata data): (bytes32)$
    #calculateMerkleRoot(bytes32[] memory proof, uint256 path, bytes32 item): (bytes32)$
  }
  