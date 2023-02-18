classDiagram
  %% 405:1184:14
  class BitMaps {
    <<Library>>
    ~get(struct BitMaps.BitMap storage bitmap, uint256 index): (bool)
    ~setTo(struct BitMaps.BitMap storage bitmap, uint256 index, bool value)
    ~set(struct BitMaps.BitMap storage bitmap, uint256 index)
    ~unset(struct BitMaps.BitMap storage bitmap, uint256 index)
  }
  