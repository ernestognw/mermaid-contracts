classDiagram
  %% 279:438:1
  class Multicall {
    <<Contract>>
    #multicall(bytes[] calldata data): (bytes[] memory results)
  }
  