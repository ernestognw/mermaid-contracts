classDiagram
  %% 802:8493:0
  class MerkleProof {
    <<Library>>
    ~verify(bytes32[] memory proof, bytes32 root, bytes32 leaf): (bool)
    ~verifyCalldata(bytes32[] calldata proof, bytes32 root, bytes32 leaf): (bool)
    ~processProof(bytes32[] memory proof, bytes32 leaf): (bytes32)
    ~processProofCalldata(bytes32[] calldata proof, bytes32 leaf): (bytes32)
    ~multiProofVerify(bytes32[] memory proof, bool[] memory proofFlags, bytes32 root, bytes32[] memory leaves): (bool)
    ~multiProofVerifyCalldata(bytes32[] calldata proof, bool[] calldata proofFlags, bytes32 root, bytes32[] memory leaves): (bool)
    ~processMultiProof(bytes32[] memory proof, bool[] memory proofFlags, bytes32[] memory leaves): (bytes32 merkleRoot)
    ~processMultiProofCalldata(bytes32[] calldata proof, bool[] calldata proofFlags, bytes32[] memory leaves): (bytes32 merkleRoot)
    -_hashPair(bytes32 a, bytes32 b): (bytes32)
    -_efficientHash(bytes32 a, bytes32 b): (bytes32 value)
  }
  