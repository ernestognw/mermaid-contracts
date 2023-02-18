classDiagram
  %% 399:391:1
  class ERC721Holder {
    <<Contract>>
    +onERC721Received(address, address, uint256, bytes memory): (bytes4)
  }
  
  ERC721Holder --|> IERC721Receiver
  
  %% 294:692:0
  class IERC721Receiver {
    <<Interface>>
    #onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data): (bytes4)$
  }
  