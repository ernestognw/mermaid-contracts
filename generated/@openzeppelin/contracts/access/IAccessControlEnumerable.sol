classDiagram
  %% 261:966:1
  class IAccessControlEnumerable {
    <<Interface>>
    #getRoleMember(bytes32 role, uint256 index): (address)$
    #getRoleMemberCount(bytes32 role): (uint256)$
  }
  
  IAccessControlEnumerable --|> IAccessControl
  
  %% 209:2710:0
  class IAccessControl {
    <<Interface>>
    #hasRole(bytes32 role, address account): (bool)$
    #getRoleAdmin(bytes32 role): (bytes32)$
    #grantRole(bytes32 role, address account)$
    #revokeRole(bytes32 role, address account)$
    #renounceRole(bytes32 role, address account)$
  }
  