classDiagram
  %% 608:235:7
  class Context {
    <<Contract>>
    ~_msgSender(): (address)
    ~_msgData(): (bytes calldata)
  }
  