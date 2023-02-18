classDiagram
  %% 888:1952:0
  class ReentrancyGuard {
    <<Contract>>
    ~constructor()
    -_nonReentrantBefore()
    -_nonReentrantAfter()
  }
  