classDiagram
  %% 544:714:0
  class IERC777Sender {
    <<Interface>>
    #tokensToSend(address operator, address from, address to, uint256 amount, bytes calldata userData, bytes calldata operatorData)$
  }
  