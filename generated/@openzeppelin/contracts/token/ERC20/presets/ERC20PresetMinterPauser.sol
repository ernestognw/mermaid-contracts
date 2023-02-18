classDiagram
  %% 1321:11630:16
  class EnumerableSet {
    <<Library>>
    -_add(struct EnumerableSet.Set storage set, bytes32 value): (bool)
    -_remove(struct EnumerableSet.Set storage set, bytes32 value): (bool)
    -_contains(struct EnumerableSet.Set storage set, bytes32 value): (bool)
    -_length(struct EnumerableSet.Set storage set): (uint256)
    -_at(struct EnumerableSet.Set storage set, uint256 index): (bytes32)
    -_values(struct EnumerableSet.Set storage set): (bytes32[] memory)
    ~add(struct EnumerableSet.Bytes32Set storage set, bytes32 value): (bool)
    ~remove(struct EnumerableSet.Bytes32Set storage set, bytes32 value): (bool)
    ~contains(struct EnumerableSet.Bytes32Set storage set, bytes32 value): (bool)
    ~length(struct EnumerableSet.Bytes32Set storage set): (uint256)
    ~at(struct EnumerableSet.Bytes32Set storage set, uint256 index): (bytes32)
    ~values(struct EnumerableSet.Bytes32Set storage set): (bytes32[] memory)
    ~add(struct EnumerableSet.AddressSet storage set, address value): (bool)
    ~remove(struct EnumerableSet.AddressSet storage set, address value): (bool)
    ~contains(struct EnumerableSet.AddressSet storage set, address value): (bool)
    ~length(struct EnumerableSet.AddressSet storage set): (uint256)
    ~at(struct EnumerableSet.AddressSet storage set, uint256 index): (address)
    ~values(struct EnumerableSet.AddressSet storage set): (address[] memory)
    ~add(struct EnumerableSet.UintSet storage set, uint256 value): (bool)
    ~remove(struct EnumerableSet.UintSet storage set, uint256 value): (bool)
    ~contains(struct EnumerableSet.UintSet storage set, uint256 value): (bool)
    ~length(struct EnumerableSet.UintSet storage set): (uint256)
    ~at(struct EnumerableSet.UintSet storage set, uint256 index): (uint256)
    ~values(struct EnumerableSet.UintSet storage set): (uint256[] memory)
  }
  