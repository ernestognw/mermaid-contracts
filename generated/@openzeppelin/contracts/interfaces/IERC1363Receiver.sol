classDiagram
  %% 125:1209:0
  class IERC1363Receiver {
    <<Interface>>
    #onTransferReceived(address operator, address from, uint256 value, bytes memory data): (bytes4)$
  }
  