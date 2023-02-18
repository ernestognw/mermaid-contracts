classDiagram
  %% 835:5066:24
  class DoubleEndedQueue {
    <<Library>>
    ~pushBack(struct DoubleEndedQueue.Bytes32Deque storage deque, bytes32 value)
    ~popBack(struct DoubleEndedQueue.Bytes32Deque storage deque): (bytes32 value)
    ~pushFront(struct DoubleEndedQueue.Bytes32Deque storage deque, bytes32 value)
    ~popFront(struct DoubleEndedQueue.Bytes32Deque storage deque): (bytes32 value)
    ~front(struct DoubleEndedQueue.Bytes32Deque storage deque): (bytes32 value)
    ~back(struct DoubleEndedQueue.Bytes32Deque storage deque): (bytes32 value)
    ~at(struct DoubleEndedQueue.Bytes32Deque storage deque, uint256 index): (bytes32 value)
    ~clear(struct DoubleEndedQueue.Bytes32Deque storage deque)
    ~length(struct DoubleEndedQueue.Bytes32Deque storage deque): (uint256)
    ~empty(struct DoubleEndedQueue.Bytes32Deque storage deque): (bool)
  }
  