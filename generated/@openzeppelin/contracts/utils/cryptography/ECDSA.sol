classDiagram
  %% 202:12302:2
  class Math {
    <<Library>>
    ~max(uint256 a, uint256 b): (uint256)
    ~min(uint256 a, uint256 b): (uint256)
    ~average(uint256 a, uint256 b): (uint256)
    ~ceilDiv(uint256 a, uint256 b): (uint256)
    ~mulDiv(uint256 x, uint256 y, uint256 denominator): (uint256 result)
    ~mulDiv(uint256 x, uint256 y, uint256 denominator, enum Math.Rounding rounding): (uint256)
    ~sqrt(uint256 a): (uint256)
    ~sqrt(uint256 a, enum Math.Rounding rounding): (uint256)
    ~log2(uint256 value): (uint256)
    ~log2(uint256 value, enum Math.Rounding rounding): (uint256)
    ~log10(uint256 value): (uint256)
    ~log10(uint256 value, enum Math.Rounding rounding): (uint256)
    ~log256(uint256 value): (uint256)
    ~log256(uint256 value, enum Math.Rounding rounding): (uint256)
  }
  