classDiagram
  %% 194:8964:3
  class Address {
    <<Library>>
    ~isContract(address account): (bool)
    ~sendValue(address payable recipient, uint256 amount)
    ~functionCall(address target, bytes memory data): (bytes memory)
    ~functionCall(address target, bytes memory data, string memory errorMessage): (bytes memory)
    ~functionCallWithValue(address target, bytes memory data, uint256 value): (bytes memory)
    ~functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage): (bytes memory)
    ~functionStaticCall(address target, bytes memory data): (bytes memory)
    ~functionStaticCall(address target, bytes memory data, string memory errorMessage): (bytes memory)
    ~functionDelegateCall(address target, bytes memory data): (bytes memory)
    ~functionDelegateCall(address target, bytes memory data, string memory errorMessage): (bytes memory)
    ~verifyCallResultFromTarget(address target, bool success, bytes memory returndata, string memory errorMessage): (bytes memory)
    ~verifyCallResult(bool success, bytes memory returndata, string memory errorMessage): (bytes memory)
    -_revert(bytes memory returndata, string memory errorMessage)
  }
  