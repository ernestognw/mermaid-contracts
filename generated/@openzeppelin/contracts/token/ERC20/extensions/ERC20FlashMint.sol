classDiagram
  %% 608:235:6
  class Context {
    <<Contract>>
    ~_msgSender(): (address)
    ~_msgData(): (bytes calldata)
  }
  