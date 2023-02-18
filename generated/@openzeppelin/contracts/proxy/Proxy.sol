classDiagram
  %% 723:2523:0
  class Proxy {
    <<Contract>>
    ~_delegate(address implementation)
    ~_implementation(): (address)$
    ~_fallback()
    #fallback()
    #receive()
    ~_beforeFallback()
  }
  