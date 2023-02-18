classDiagram
  %% 196:884:0
  class ICrossDomainMessenger {
    <<Interface>>
    #xDomainMessageSender(): (address)$
    #sendMessage(address _target, bytes calldata _message, uint32 _gasLimit)$
  }
  