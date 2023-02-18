classDiagram
  %% 424:971:0
  class Counters {
    <<Library>>
    ~current(struct Counters.Counter storage counter): (uint256)
    ~increment(struct Counters.Counter storage counter)
    ~decrement(struct Counters.Counter storage counter)
    ~reset(struct Counters.Counter storage counter)
  }
  