contract main {




// =====================  Runtime code  =====================


address msAddress;
address soteMasterAddress;
array of struct rewardStatus;
array of struct claimDateUpd;
array of struct voteDetails;
array of struct claimOfEmergencyPauseByIndex;
array of struct pendingClaimDetailsByIndex;
mapping of struct rewardDistributedIndex;
mapping of struct claimRewardDetail;
mapping of struct stor9;
mapping of struct stor10;
mapping of uint8 stor11;
mapping of uint256 stor12;
mapping of uint256 claimState12Count;
array of struct stor14;
array of struct stor15;
array of uint256 vote;
array of uint256 vote;
array of struct userClaimCount;
mapping of uint256 userClaimVoteCA;
mapping of uint256 userClaimVoteMember;
mapping of uint256 userClaimVotePausedOn;
uint256 firstClaimIndexToSubmitAfterEP;
uint256 firstClaimIndexToStartVotingAfterEP;
uint256 pendingClaimStart;
uint256 claimDepositTime;
uint256 maxVotingTime;
uint256 minVotingTime;
uint256 payoutRetryTime;
uint256 claimRewardPerc;
uint256 minVoteThreshold;
uint256 maxVoteThreshold;
uint256 majorityConsensus;
uint256 pauseDaysCA;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint8 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint8 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;

function getRewardDistributedIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewardDistributedIndex[address(arg1)].field_0, rewardDistributedIndex[address(arg1)].field_256
}

function minVoteThreshold() payable {
    return minVoteThreshold
}

function getClaimState12Count(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return claimState12Count[arg1]
}

function getVoteAddressMemberLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return vote[address(arg1)]
}

function getVoteAddressCALength(address arg1) payable {
    require calldata.size - 4 >= 32
    return vote[address(arg1)]
}

function majorityConsensus() payable {
    return majorityConsensus
}

function maxVotingTime() payable {
    return maxVotingTime
}

function userClaimVotePausedOn(address arg1) payable {
    require calldata.size - 4 >= 32
    return userClaimVotePausedOn[arg1]
}

function getUserClaimCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userClaimCount[address(arg1)].field_0
}

function maxVoteThreshold() payable {
    return maxVoteThreshold
}

function pendingClaimStart() payable {
    return pendingClaimStart
}

function getVoteDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < voteDetails.length
    return voteDetails[arg1].field_256, 
           voteDetails[arg1].field_512,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('param', 'arg1')), ('name', 'voteDetails', 4))))))),
           bool(uint8(voteDetails[arg1].field_776))
}

function getClaimDateUpd(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimDateUpd.length
    return claimDateUpd[arg1].field_256
}

function getRewardStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardStatus.length
    return rewardStatus[arg1].field_0, rewardStatus[arg1].field_256
}

function getLengthOfClaimSubmittedAtEP() payable {
    return claimOfEmergencyPauseByIndex.length
}

function minVotingTime() payable {
    return minVotingTime
}

function getLengthOfClaimVotingPause() payable {
    return pendingClaimDetailsByIndex.length
}

function getClaimOfEmergencyPauseByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimOfEmergencyPauseByIndex.length
    return claimOfEmergencyPauseByIndex[arg1].field_0, 
           claimOfEmergencyPauseByIndex[arg1].field_256,
           bool(uint8(claimOfEmergencyPauseByIndex[arg1].field_512))
}

function getUserClaimVoteCA(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return userClaimVoteCA[address(arg1)][arg2]
}

function ms() payable {
    return msAddress
}

function getPendingClaimDetailsByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pendingClaimDetailsByIndex.length
    return pendingClaimDetailsByIndex[arg1].field_0, 
           pendingClaimDetailsByIndex[arg1].field_256,
           bool(uint8(pendingClaimDetailsByIndex[arg1].field_512))
}

function claimRewardPerc() payable {
    return claimRewardPerc
}

function claimDepositTime() payable {
    return claimDepositTime
}

function getUserClaimVoteMember(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return userClaimVoteMember[address(arg1)][arg2]
}

function getFirstClaimIndexToSubmitAfterEP() payable {
    return firstClaimIndexToSubmitAfterEP
}

function getFirstClaimIndexToStartVotingAfterEP() payable {
    return firstClaimIndexToStartVotingAfterEP
}

function pauseDaysCA() payable {
    return pauseDaysCA
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function actualClaimLength() payable {
    return claimDateUpd.length
}

function getClaimRewardDetail(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return claimRewardDetail[arg1].field_0, claimRewardDetail[arg1].field_256, claimRewardDetail[arg1].field_512
}

function getVoterVote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < voteDetails.length
    return address(voteDetails[arg1].field_0)
}

function payoutRetryTime() payable {
    return payoutRetryTime
}

function getVoteAddressMember(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < vote[address(arg1)]
    return vote[address(arg1)][arg2]
}

function getVoteAddressCA(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < vote[address(arg1)]
    return vote[address(arg1)][arg2]
}

function _fallback() payable {
    revert
}

function getAllVoteLength() payable {
    require 1 <= voteDetails.length
    return (voteDetails.length - 1)
}

function getClaimStatusNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1, stor12[arg1]
}

function getClaimLength() payable {
    require pendingClaimStart <= claimDateUpd.length
    return (claimDateUpd.length - pendingClaimStart)
}

function getClaimsTokenCA(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1, stor9[arg1].field_0, stor9[arg1].field_256
}

function getClaimsTokenMV(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return arg1, stor10[arg1].field_0, stor10[arg1].field_256
}

function getClaimCoverId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimDateUpd.length
    return arg1, claimDateUpd[arg1].field_0
}

function getClaimVoteLength(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != 1:
        return arg1, stor15[arg1].field_0
    return arg1, stor14[arg1].field_0
}

function getFinalVerdict(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor11', 11)))))))
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getTokensClaim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require userClaimVoteCA[address(arg1)][arg2] < voteDetails.length
    return arg2, voteDetails[stor19[address(arg1)][arg2]].field_256
}

function changeDependentContractAddress() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getAllClaimsByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimDateUpd.length
    return claimDateUpd[arg1].field_0, 
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor11', 11))))))),
           stor12[arg1],
           claimDateUpd[arg1].field_256,
           claimState12Count[arg1]
}

function getClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimDateUpd.length
    return arg1, 
           claimDateUpd[arg1].field_0,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('stor', ('map', ('param', 'arg1'), ('name', 'stor11', 11))))))),
           stor12[arg1],
           claimDateUpd[arg1].field_256,
           claimState12Count[arg1]
}

function getUserClaimByIndex(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < userClaimCount[address(arg2)].field_0
    require userClaimCount[address(arg2)][arg1].field_0 < claimDateUpd.length
    return stor12[stor18[address(arg2)][arg1].field_0], 
           claimDateUpd[stor18[address(arg2)][arg1].field_0].field_0,
           userClaimCount[address(arg2)][arg1].field_0
}

function setClaimStatus(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor12[arg1] = arg2
}

function setFirstClaimIndexToSubmitAfterEP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    firstClaimIndexToSubmitAfterEP = arg1
}

function setFirstClaimIndexToStartVotingAfterEP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    firstClaimIndexToStartVotingAfterEP = arg1
}

function setpendingClaimStart(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require pendingClaimStart <= arg1
    pendingClaimStart = arg1
}

function setUserClaimVotePausedOn(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    userClaimVotePausedOn[address(arg1)] = block.timestamp
}

function setRewardDistributedIndexCA(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    rewardDistributedIndex[address(arg1)].field_0 = arg2
}

function setRewardDistributedIndexMV(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    rewardDistributedIndex[address(arg1)].field_256 = arg2
}

function callClaimEvent(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit ClaimRaise(arg3, arg4, arg1, arg2);
}

function setClaimdateUpd(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < claimDateUpd.length
    claimDateUpd[arg1].field_256 = arg2
}

function addClaimVoteCA(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor14[arg1].field_0++
    stor14[arg1][stor14[arg1].field_0].field_0 = arg2
}

function getVoteToken(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 != 1:
        if arg2 < stor15[arg1].field_0:
            if stor15[arg1][arg2].field_0 < voteDetails.length:
                return voteDetails[stor15[arg1][arg2].field_0].field_256
    else:
        if arg2 < stor14[arg1].field_0:
            if stor14[arg1][arg2].field_0 < voteDetails.length:
                return voteDetails[stor14[arg1][arg2].field_0].field_256
    revert
}

function addClaimVotemember(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor15[arg1].field_0++
    stor15[arg1][stor15[arg1].field_0].field_0 = arg2
}

function changeFinalVerdict(uint256 arg1, int8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint8(stor11[arg1]) = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg2'))))
}

function getVoteVoter(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 != 1:
        if arg2 < stor15[arg1].field_0:
            if stor15[arg1][arg2].field_0 < voteDetails.length:
                return address(voteDetails[stor15[arg1][arg2].field_0].field_0)
    else:
        if arg2 < stor14[arg1].field_0:
            if stor14[arg1][arg2].field_0 < voteDetails.length:
                return address(voteDetails[stor14[arg1][arg2].field_0].field_0)
    revert
}

function setRewardClaimed(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < voteDetails.length
    Mask(248, 0, voteDetails[arg1].field_776) = Mask(248, 0, arg2)
}

function updateState12Count(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + claimState12Count[arg1] >= claimState12Count[arg1]
    claimState12Count[arg1] += arg2
}

function setPendingClaimVoteStatus(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < pendingClaimDetailsByIndex.length
    uint8(pendingClaimDetailsByIndex[arg1].field_512) = uint8(arg2)
}

function setClaimSubmittedAtEPTrue(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 < claimOfEmergencyPauseByIndex.length
    uint8(claimOfEmergencyPauseByIndex[arg1].field_512) = uint8(arg2)
}

function setUserClaimVoteCA(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    userClaimVoteCA[address(arg1)][arg2] = arg3
    vote[address(arg1)]++
    vote[address(arg1)][vote[address(arg1)]] = arg3
}

function setUserClaimVoteMember(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    userClaimVoteMember[address(arg1)][arg2] = arg3
    vote[address(arg1)]++
    vote[address(arg1)][vote[address(arg1)]] = arg3
}

function setClaimRewardDetail(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    claimRewardDetail[arg1].field_0 = arg2
    claimRewardDetail[arg1].field_256 = arg3
    claimRewardDetail[arg1].field_512 = arg4
}

function setClaimAtEmergencyPause(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    claimOfEmergencyPauseByIndex.length++
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = uint8(arg3)
}

function callVoteEvent(address arg1, uint256 arg2, bytes4 arg3, uint256 arg4, uint256 arg5, int8 arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit VoteCast(arg4, arg5, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('param', 'arg6')))), arg1, arg2, Mask(32, 224, arg3));
}

function getCaClaimVotesToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor14[arg1].field_0:
        require idx < stor14[arg1].field_0
        _11 = sha3(sha3(arg1, 14))
        require stor14[arg1][idx].field_0 < voteDetails.length
        _12 = sha3(4)
        require voteDetails[stor14[arg1][idx].field_0].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        s = voteDetails[stor14[arg1][idx].field_0].field_256 + s
        continue 
    return arg1, stor[(4 * stor[_11 + stor14[arg1].field_0]) + _12 + 1] * stor14[arg1].field_0
}

function setPendingClaimDetails(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    pendingClaimDetailsByIndex.length++
    pendingClaimDetailsByIndex[pendingClaimDetailsByIndex.length].field_0 = arg1
    storF652[stor6.length] = arg2
    storF652[stor6.length] = uint8(arg3)
}

function getMemberClaimVotesToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor15[arg1].field_0:
        require idx < stor15[arg1].field_0
        _11 = sha3(sha3(arg1, 15))
        require stor15[arg1][idx].field_0 < voteDetails.length
        _12 = sha3(4)
        require voteDetails[stor15[arg1][idx].field_0].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 15
        idx = idx + 1
        s = voteDetails[stor15[arg1][idx].field_0].field_256 + s
        continue 
    return arg1, stor[(4 * stor[_11 + stor15[arg1].field_0]) + _12 + 1] * stor15[arg1].field_0
}

function addClaim(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    claimDateUpd.length++
    claimDateUpd[claimDateUpd.length].field_0 = arg2
    storC257[stor3.length] = arg4
    userClaimCount[address(arg3)].field_0++
    userClaimCount[address(arg3)][userClaimCount[address(arg3)].field_0].field_0 = arg1
}

function addVote(address arg1, uint256 arg2, uint256 arg3, int8 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    voteDetails.length++
    address(voteDetails[voteDetails.length].field_0) = arg1
    stor8A35[stor4.length] = arg2
    stor8A35[stor4.length] = arg3
    uint8(stor8A35[stor4.length].field_0) = uint8(('signextend', 0, ('signextend', 0, ('signextend', 0, ('param', 'arg4')))))
    Mask(248, 0, stor8A35[stor4.length].field_8) = 0
}

function setClaimTokensCA(uint256 arg1, int8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 1 == ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
        require arg3 + stor9[arg1].field_0 >= stor9[arg1].field_0
        stor9[arg1].field_0 += arg3
    if -1 == ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
        require arg3 + stor9[arg1].field_256 >= stor9[arg1].field_256
        stor9[arg1].field_256 += arg3
}

function setClaimTokensMV(uint256 arg1, int8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if 1 == ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
        require arg3 + stor10[arg1].field_0 >= stor10[arg1].field_0
        stor10[arg1].field_0 += arg3
    if -1 == ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
        require arg3 + stor10[arg1].field_256 >= stor10[arg1].field_256
        stor10[arg1].field_256 += arg3
}

function getVoteVerdict(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 != 1:
        if arg2 < stor15[arg1].field_0:
            if stor15[arg1][arg2].field_0 < voteDetails.length:
                return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('field', 0, ('stor', ('array', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'stor15', 15)))))), ('name', 'voteDetails', 4)))))))
    else:
        if arg2 < stor14[arg1].field_0:
            if stor14[arg1][arg2].field_0 < voteDetails.length:
                return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('field', 0, ('stor', ('array', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'stor14', 14)))))), ('name', 'voteDetails', 4)))))))
    revert
}

function getClaimVote(uint256 arg1, int8 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor14[arg1].field_0:
        require idx < stor14[arg1].field_0
        require stor14[arg1][idx].field_0 < voteDetails.length
        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('field', 0, ('stor', ('array', ('var', 0), ('map', ('param', 'arg1'), ('name', 'stor14', 14)))))), ('name', 'voteDetails', 4)))))) != ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
            mem[0] = arg1
            mem[32] = 14
            idx = idx + 1
            s = s
            continue 
        require idx < stor14[arg1].field_0
        require stor14[arg1][idx].field_0 < voteDetails.length
        require voteDetails[stor14[arg1][idx].field_0].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 14
        idx = idx + 1
        s = voteDetails[stor14[arg1][idx].field_0].field_256 + s
        continue 
    return arg1, s
}

function getClaimMVote(uint256 arg1, int8 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor15[arg1].field_0:
        require idx < stor15[arg1].field_0
        require stor15[arg1][idx].field_0 < voteDetails.length
        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('field', 0, ('stor', ('array', ('var', 0), ('map', ('param', 'arg1'), ('name', 'stor15', 15)))))), ('name', 'voteDetails', 4)))))) != ('signextend', 0, ('signextend', 0, ('param', 'arg2'))):
            mem[0] = arg1
            mem[32] = 15
            idx = idx + 1
            s = s
            continue 
        require idx < stor15[arg1].field_0
        require stor15[arg1][idx].field_0 < voteDetails.length
        require voteDetails[stor15[arg1][idx].field_0].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 15
        idx = idx + 1
        s = voteDetails[stor15[arg1][idx].field_0].field_256 + s
        continue 
    return arg1, s
}

function getAllClaimsByAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userClaimCount[address(arg1)].field_0:
        mem[(32 * userClaimCount[address(arg1)].field_0) + 128] = 32
        mem[(32 * userClaimCount[address(arg1)].field_0) + 160] = userClaimCount[address(arg1)].field_0
        mem[(32 * userClaimCount[address(arg1)].field_0) + 192 len floor32(userClaimCount[address(arg1)].field_0)] = mem[128 len floor32(userClaimCount[address(arg1)].field_0)]
        return memory
          from (32 * userClaimCount[address(arg1)].field_0) + 128
           len (96 * userClaimCount[address(arg1)].field_0) + 64
    mem[128] = userClaimCount[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * userClaimCount[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = userClaimCount[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * userClaimCount[address(arg1)].field_0) + 192 len floor32(userClaimCount[address(arg1)].field_0)] = mem[128 len floor32(userClaimCount[address(arg1)].field_0)]
    return Array(len=userClaimCount[address(arg1)].field_0, data=mem[128 len floor32(userClaimCount[address(arg1)].field_0)], mem[(32 * userClaimCount[address(arg1)].field_0) + floor32(userClaimCount[address(arg1)].field_0) + 192 len (32 * userClaimCount[address(arg1)].field_0) - floor32(userClaimCount[address(arg1)].field_0)]), 
}

function getUintParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x43414d4158565400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), maxVotingTime / 3600
    if Mask(64, 192, arg1) == 0x43414d494e565400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), minVotingTime / 3600
    if Mask(64, 192, arg1) == 'CAPRETRY' << 192:
        return Mask(64, 192, arg1), payoutRetryTime / 3600
    if Mask(64, 192, arg1) == 0x4341444550540000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), claimDepositTime / 24 * 3600
    if Mask(64, 192, arg1) == 0x4341524557504552000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), claimRewardPerc
    if Mask(64, 192, arg1) == 0x43414d494e544800000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), minVoteThreshold
    if Mask(64, 192, arg1) == 0x43414d4158544800000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), maxVoteThreshold
    if Mask(64, 192, arg1) == 0x4341434f4e504552000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), majorityConsensus
    if Mask(64, 192, arg1) != 0x4341504155534554000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), 0
    return Mask(64, 192, arg1), pauseDaysCA / 24 * 3600
}

function getAllVotesForClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor14[arg1].field_0:
        mem[128] = stor14[arg1].field_0
        idx = 128
        s = 0
        while (32 * stor14[arg1].field_0) + 96 > idx:
            mem[idx + 32] = stor14[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor15[arg1].field_0:
        mem[(32 * stor14[arg1].field_0) + 160] = stor15[arg1].field_0
        idx = (32 * stor14[arg1].field_0) + 160
        s = 0
        while (32 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + 128 > idx:
            mem[idx + 32] = stor15[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + 288 len floor32(stor14[arg1].field_0)] = mem[128 len floor32(stor14[arg1].field_0)]
    mem[(64 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + 288] = stor15[arg1].field_0
    mem[(64 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + 320 len floor32(stor15[arg1].field_0)] = mem[(32 * stor14[arg1].field_0) + 160 len floor32(stor15[arg1].field_0)]
    return arg1, 
           Array(len=stor14[arg1].field_0, data=mem[128 len floor32(stor14[arg1].field_0)], mem[(32 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + floor32(stor14[arg1].field_0) + 288 len (32 * stor14[arg1].field_0) + (32 * stor15[arg1].field_0) + -floor32(stor14[arg1].field_0) + 32]),
           (32 * stor14[arg1].field_0) + 128
}

function updateUintParameters(bytes8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if Mask(64, 192, arg1) == 0x43414d4158565400000000000000000000000000000000000000000000000000:
        maxVotingTime = 3600 * arg2
    else:
        if Mask(64, 192, arg1) == 0x43414d494e565400000000000000000000000000000000000000000000000000:
            minVotingTime = 3600 * arg2
        else:
            if Mask(64, 192, arg1) == 'CAPRETRY' << 192:
                payoutRetryTime = 3600 * arg2
            else:
                if Mask(64, 192, arg1) == 0x4341444550540000000000000000000000000000000000000000000000000000:
                    claimDepositTime = 24 * 3600 * arg2
                else:
                    if Mask(64, 192, arg1) == 0x4341524557504552000000000000000000000000000000000000000000000000:
                        claimRewardPerc = arg2
                    else:
                        if Mask(64, 192, arg1) == 0x43414d494e544800000000000000000000000000000000000000000000000000:
                            minVoteThreshold = arg2
                        else:
                            if Mask(64, 192, arg1) == 0x43414d4158544800000000000000000000000000000000000000000000000000:
                                maxVoteThreshold = arg2
                            else:
                                if Mask(64, 192, arg1) == 0x4341434f4e504552000000000000000000000000000000000000000000000000:
                                    majorityConsensus = arg2
                                else:
                                    if Mask(64, 192, arg1) != 0x4341504155534554000000000000000000000000000000000000000000000000:
                                        revert with 0, 'Invalid param code'
                                    pauseDaysCA = 24 * 3600 * arg2
}

function getClaimFromNewStart(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 + pendingClaimStart >= pendingClaimStart
    require arg1 + pendingClaimStart < claimDateUpd.length
    if not userClaimVoteCA[address(arg2)][arg1 + stor24]:
        if not userClaimVoteMember[address(arg2)][arg1 + stor24]:
            return claimDateUpd[arg1 + stor24].field_0, arg1 + pendingClaimStart, 0, 0, stor12[arg1 + stor24]
        if userClaimVoteMember[address(arg2)][arg1 + stor24] < voteDetails.length:
            return claimDateUpd[arg1 + stor24].field_0, 
                   arg1 + pendingClaimStart,
                   0,
                   ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('stor', ('map', ('add', ('param', 'arg1'), ('stor', ('name', 'stor24', 24))), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor20', 20))))), ('name', 'voteDetails', 4))))))),
                   stor12[arg1 + stor24]
    else:
        if userClaimVoteCA[address(arg2)][arg1 + stor24] < voteDetails.length:
            if not userClaimVoteMember[address(arg2)][arg1 + stor24]:
                return claimDateUpd[arg1 + stor24].field_0, 
                       arg1 + pendingClaimStart,
                       ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('stor', ('map', ('add', ('param', 'arg1'), ('stor', ('name', 'stor24', 24))), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor19', 19))))), ('name', 'voteDetails', 4))))))),
                       0,
                       stor12[arg1 + stor24]
            if userClaimVoteMember[address(arg2)][arg1 + stor24] < voteDetails.length:
                return claimDateUpd[arg1 + stor24].field_0, 
                       arg1 + pendingClaimStart,
                       ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('stor', ('map', ('add', ('param', 'arg1'), ('stor', ('name', 'stor24', 24))), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor19', 19))))), ('name', 'voteDetails', 4))))))),
                       ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 4, ('stor', ('map', ('add', ('param', 'arg1'), ('stor', ('name', 'stor24', 24))), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor20', 20))))), ('name', 'voteDetails', 4))))))),
                       stor12[arg1 + stor24]
    revert
}



}
