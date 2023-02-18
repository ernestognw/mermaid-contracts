classDiagram
  %% 608:235:3
  class Context {
    <<Contract>>
    ~_msgSender(): (address)
    ~_msgData(): (bytes calldata)
  }
  