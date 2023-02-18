classDiagram
  %% 620:1631:1
  class IERC20Permit {
    <<Interface>>
    #permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)$
    #nonces(address owner): (uint256)$
    #DOMAIN_SEPARATOR(): (bytes32)$
  }
  