classDiagram
  %% 209:2710:0
  class IAccessControl {
    <<Interface>>
    #hasRole(bytes32 role, address account): (bool)$
    #getRoleAdmin(bytes32 role): (bytes32)$
    #grantRole(bytes32 role, address account)$
    #revokeRole(bytes32 role, address account)$
    #renounceRole(bytes32 role, address account)$
  }
  