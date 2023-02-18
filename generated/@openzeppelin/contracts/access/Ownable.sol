classDiagram
  %% 608:235:1
  class Context {
    <<Contract>>
    ~_msgSender(): (address)
    ~_msgData(): (bytes calldata)
  }
  