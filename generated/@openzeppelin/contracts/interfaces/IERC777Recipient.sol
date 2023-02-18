classDiagram
  %% 534:715:1
  class IERC777Recipient {
    <<Interface>>
    #tokensReceived(address operator, address from, address to, uint256 amount, bytes calldata userData, bytes calldata operatorData)$
  }
  