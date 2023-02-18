classDiagram
  %% 316:3649:0
  class IBridge {
    <<Interface>>
    #allowedDelayedInboxList(uint256): (address)$
    #allowedOutboxList(uint256): (address)$
    #delayedInboxAccs(uint256): (bytes32)$
    #sequencerInboxAccs(uint256): (bytes32)$
    #rollup(): (address)$
    #sequencerInbox(): (address)$
    #activeOutbox(): (address)$
    #allowedDelayedInboxes(address inbox): (bool)$
    #allowedOutboxes(address outbox): (bool)$
    #sequencerReportedSubMessageCount(): (uint256)$
    #enqueueDelayedMessage(uint8 kind, address sender, bytes32 messageDataHash): (uint256)$
    #executeCall(address to, uint256 value, bytes calldata data): (bool success, bytes memory returnData)$
    #delayedMessageCount(): (uint256)$
    #sequencerMessageCount(): (uint256)$
    #enqueueSequencerMessage(bytes32 dataHash, uint256 afterDelayedMessagesRead, uint256 prevMessageCount, uint256 newMessageCount): (uint256 seqMessageIndex, bytes32 beforeAcc, bytes32 delayedAcc, bytes32 acc)$
    #submitBatchSpendingReport(address batchPoster, bytes32 dataHash): (uint256 msgNum)$
    #setSequencerInbox(address _sequencerInbox)$
    #setDelayedInbox(address inbox, bool enabled)$
    #setOutbox(address inbox, bool enabled)$
    #initialize(address rollup_)$
  }
  