classDiagram
  %% 662:1145:0
  class CrossChainEnabled {
    <<Contract>>
    ~_isCrossChain(): (bool)$
    ~_crossChainSender(): (address)$
  }
  