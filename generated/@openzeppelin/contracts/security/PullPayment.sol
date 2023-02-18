classDiagram
  %% 825:1428:4
  class Escrow {
    <<Contract>>
    +depositsOf(address payee): (uint256)
    +deposit(address payee)
    +withdraw(address payable payee)
  }
  
  Escrow --|> Ownable
  
  %% 654:1968:0
  class Ownable {
    <<Contract>>
    ~constructor()
    +owner(): (address)
    ~_checkOwner()
    +renounceOwnership()
    +transferOwnership(address newOwner)
    ~_transferOwnership(address newOwner)
  }
  
  Ownable --|> Context
  
  %% 608:235:3
  class Context {
    <<Contract>>
    ~_msgSender(): (address)
    ~_msgData(): (bytes calldata)
  }
  