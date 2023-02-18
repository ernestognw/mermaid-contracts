classDiagram
  %% 299:629:0
  class IERC3156FlashBorrower {
    <<Interface>>
    #onFlashLoan(address initiator, address token, uint256 amount, uint256 fee, bytes calldata data): (bytes32)$
  }
  