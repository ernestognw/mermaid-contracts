classDiagram
  %% 127:1553:2
  class IAMB {
    <<Interface>>
    #messageSender(): (address)$
    #maxGasPerTx(): (uint256)$
    #transactionHash(): (bytes32)$
    #messageId(): (bytes32)$
    #messageSourceChainId(): (bytes32)$
    #messageCallStatus(bytes32 _messageId): (bool)$
    #failedMessageDataHash(bytes32 _messageId): (bytes32)$
    #failedMessageReceiver(bytes32 _messageId): (address)$
    #failedMessageSender(bytes32 _messageId): (address)$
    #requireToPassMessage(address _contract, bytes calldata _data, uint256 _gas): (bytes32)$
    #requireToConfirmMessage(address _contract, bytes calldata _data, uint256 _gas): (bytes32)$
    #sourceChainId(): (uint256)$
    #destinationChainId(): (uint256)$
  }
  