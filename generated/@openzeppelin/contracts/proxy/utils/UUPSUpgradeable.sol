classDiagram
  %% 1279:1391:5
  class StorageSlot {
    <<Library>>
    ~getAddressSlot(bytes32 slot): (struct StorageSlot.AddressSlot storage r)
    ~getBooleanSlot(bytes32 slot): (struct StorageSlot.BooleanSlot storage r)
    ~getBytes32Slot(bytes32 slot): (struct StorageSlot.Bytes32Slot storage r)
    ~getUint256Slot(bytes32 slot): (struct StorageSlot.Uint256Slot storage r)
  }
  