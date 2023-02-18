classDiagram
  %% 168:1873:0
  class Timers {
    <<Library>>
    ~getDeadline(struct Timers.Timestamp memory timer): (uint64)
    ~setDeadline(struct Timers.Timestamp storage timer, uint64 timestamp)
    ~reset(struct Timers.Timestamp storage timer)
    ~isUnset(struct Timers.Timestamp memory timer): (bool)
    ~isStarted(struct Timers.Timestamp memory timer): (bool)
    ~isPending(struct Timers.Timestamp memory timer): (bool)
    ~isExpired(struct Timers.Timestamp memory timer): (bool)
    ~getDeadline(struct Timers.BlockNumber memory timer): (uint64)
    ~setDeadline(struct Timers.BlockNumber storage timer, uint64 timestamp)
    ~reset(struct Timers.BlockNumber storage timer)
    ~isUnset(struct Timers.BlockNumber memory timer): (bool)
    ~isStarted(struct Timers.BlockNumber memory timer): (bool)
    ~isPending(struct Timers.BlockNumber memory timer): (bool)
    ~isExpired(struct Timers.BlockNumber memory timer): (bool)
  }
  