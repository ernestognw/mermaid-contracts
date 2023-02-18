classDiagram
  %% 277:2080:0
  class ICompoundTimelock {
    <<Interface>>
    #receive()$
    #GRACE_PERIOD(): (uint256)$
    #MINIMUM_DELAY(): (uint256)$
    #MAXIMUM_DELAY(): (uint256)$
    #admin(): (address)$
    #pendingAdmin(): (address)$
    #delay(): (uint256)$
    #queuedTransactions(bytes32): (bool)$
    #setDelay(uint256)$
    #acceptAdmin()$
    #setPendingAdmin(address)$
    #queueTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta): (bytes32)$
    #cancelTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta)$
    #executeTransaction(address target, uint256 value, string memory signature, bytes memory data, uint256 eta): (bytes memory)$
  }
  