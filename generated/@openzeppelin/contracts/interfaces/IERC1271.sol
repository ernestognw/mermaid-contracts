classDiagram
  %% 307:358:0
  class IERC1271 {
    <<Interface>>
    #isValidSignature(bytes32 hash, bytes memory signature): (bytes4 magicValue)$
  }
  