classDiagram
  %% 482:6300:0
  class SafeMath {
    <<Library>>
    ~tryAdd(uint256 a, uint256 b): (bool, uint256)
    ~trySub(uint256 a, uint256 b): (bool, uint256)
    ~tryMul(uint256 a, uint256 b): (bool, uint256)
    ~tryDiv(uint256 a, uint256 b): (bool, uint256)
    ~tryMod(uint256 a, uint256 b): (bool, uint256)
    ~add(uint256 a, uint256 b): (uint256)
    ~sub(uint256 a, uint256 b): (uint256)
    ~mul(uint256 a, uint256 b): (uint256)
    ~div(uint256 a, uint256 b): (uint256)
    ~mod(uint256 a, uint256 b): (uint256)
    ~sub(uint256 a, uint256 b, string memory errorMessage): (uint256)
    ~div(uint256 a, uint256 b, string memory errorMessage): (uint256)
    ~mod(uint256 a, uint256 b, string memory errorMessage): (uint256)
  }
  