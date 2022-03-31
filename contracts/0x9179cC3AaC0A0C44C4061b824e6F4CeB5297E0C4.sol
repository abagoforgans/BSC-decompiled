contract main {




// =====================  Runtime code  =====================


#
#  - pauseAllPendingClaimsVoting()
#  - submitCAVote(uint256 arg1, int8 arg2)
#  - submitMemberVote(uint256 arg1, int8 arg2)
#
address msAddress;
address soteMasterAddress;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
uint256 stor8;
address stor9;
uint256 stor9;
address stor10;
uint256 stor10;
address stor11;
uint256 stor11;
address stor12;
uint256 stor12;

function ms() payable {
    return msAddress
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function _fallback() payable {
    revert
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getUserClaimByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getUserClaimByIndex(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getClaimFromNewStart(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaimFromNewStart(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ('signextend', 0, ('signextend', 0, ('ext_call.return_data', 64, 32))),
           ('signextend', 0, ('signextend', 0, ('ext_call.return_data', 96, 32))),
           ext_call.return_data[128]
}

function getClaimbyIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaim(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(address(stor11))
    staticcall address(stor11).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg1, 
           ext_call.return_data[96],
           ('signextend', 0, ('signextend', 0, ('ext_call.return_data', 64, 32))),
           address(ext_call.return_data[0]),
           ext_call.return_data[32]
}

function changePendingClaimStart() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).pendingClaimStart() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).actualClaimLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = ext_call.return_data[0]
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        staticcall address(stor7).getClaim(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[96] <= 5:
        if 12 == ext_call.return_data[96]:
            if ext_call.return_data[160] < 60:
        mem[96] = 0xcfda120600000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        require ext_code.size(address(stor7))
        call address(stor7).setpendingClaimStart(uint256 rg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[160]
        s = ext_call.return_data[96]
        continue 
}

function getCATokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor11))
    staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor12))
    staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
            gas gas_remaining wei
           args Mask(32, 224, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    if arg2:
        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
    else:
        staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
    if not ext_call.return_data[64] + ext_call.return_data[32]:
        return 0
    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
    return ((ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18)
}

function startAllPendingClaimsVoting() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getFirstClaimIndexToStartVotingAfterEP() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getLengthOfClaimVotingPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = ext_call.return_data[0]
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        staticcall address(stor7).getPendingClaimDetailsByIndex(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(address(stor7))
        staticcall address(stor7).maxVotingTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= block.timestamp
        require ext_call.return_data[32] >= 0
        require ext_code.size(address(stor7))
        call address(stor7).setClaimdateUpd(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[32] + block.timestamp - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        call address(stor7).setPendingClaimVoteStatus(uint256 rg1, bool rg2) with:
             gas gas_remaining wei
            args idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCoverMemberAddress(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).claimDepositTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + ext_call.return_data[32] >= ext_call.return_data[32]
        mem[164] = ext_call.return_data[0] + ext_call.return_data[32]
        require ext_code.size(address(stor2))
        call address(stor2).extendCNEPOff(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[0] + ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xa19ed78300000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        mem[132] = uint64(ext_call.return_data[32] + block.timestamp - ext_call.return_data[0])
        require ext_code.size(address(stor6))
        call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], uint64(ext_call.return_data[32] + block.timestamp - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(address(stor7))
    call address(stor7).setFirstClaimIndexToStartVotingAfterEP(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5444000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8 = ext_call.return_data[12 len 20] or Mask(96, 160, stor8)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5446000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5443000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 = ext_call.return_data[12 len 20] or Mask(96, 160, stor4)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5031000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5032000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5044000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4352000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4344000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5144000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x4d43000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
}

function submitClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor11))
    staticcall address(stor11).getCoverMemberAddress(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(stor11))
    staticcall address(stor11).getCoverDetailsByCoverID2(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 4 == ext_call.return_data[63 len 1]:
        revert with 0, 'Claim already submitted'
    if 3 == ext_call.return_data[63 len 1]:
        revert with 0, 'Cover already expired'
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        call address(stor7).setClaimAtEmergencyPause(uint256 rg1, uint256 rg2, bool rg3) with:
             gas gas_remaining wei
            args arg1, block.timestamp, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor11))
        call address(stor11).changeCoverStatusNo(uint256 rg1, uint8 rg2) with:
             gas gas_remaining wei
            args arg1, 5
    else:
        require ext_code.size(address(stor2))
        call address(stor2).depositCN(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).actualClaimLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        call address(stor7).addClaim(uint256 rg1, uint256 rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], arg1, address(ext_call.return_data[0]), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        call address(stor7).callClaimEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, uint32(arg1), address(ext_call.return_data[0]), ext_call.return_data[0], block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor11))
        call address(stor11).changeCoverStatusNo(uint256 rg1, uint8 rg2) with:
             gas gas_remaining wei
            args arg1, 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(stor9))
            staticcall address(stor9).getCurrencyAssetVarMin(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor9))
            call address(stor9).changeCurrencyAssetVarMin(bytes4 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0]), ext_call.return_data[0]
        else:
            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
            require ext_code.size(address(stor9))
            staticcall address(stor9).getCurrencyAssetVarMin(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor9))
            call address(stor9).changeCurrencyAssetVarMin(bytes4 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0]), 1000000000000000001 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor10))
        call address(stor10).internalLiquiditySwap(bytes4 rg1) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        staticcall address(stor7).maxVotingTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function submitClaimAfterEPOff() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(stor7))
    staticcall address(stor7).getLengthOfClaimSubmittedAtEP() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getFirstClaimIndexToSubmitAfterEP() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[96]
    s = 0
    s = 0
    s = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(address(stor7))
        staticcall address(stor7).getClaimOfEmergencyPauseByIndex(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require not ext_call.return_data[64]
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCoverMemberAddress(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        call address(stor2).depositCN(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        staticcall address(stor7).actualClaimLength() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor7))
        call address(stor7).addClaim(uint256 rg1, uint256 rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0], address(ext_call.return_data[0]), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164] = ext_call.return_data[0]
        mem[196] = ext_call.return_data[32]
        require ext_code.size(address(stor7))
        call address(stor7).callClaimEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor11))
        call address(stor11).changeCoverStatusNo(uint256 rg1, uint8 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor11))
        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(stor9))
            staticcall address(stor9).getCurrencyAssetVarMin(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor9))
            call address(stor9).changeCurrencyAssetVarMin(bytes4 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0]), ext_call.return_data[0]
        else:
            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
            require ext_code.size(address(stor9))
            staticcall address(stor9).getCurrencyAssetVarMin(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1000000000000000001 * ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(address(stor9))
            call address(stor9).changeCurrencyAssetVarMin(bytes4 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0]), 1000000000000000001 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor10))
        call address(stor10).internalLiquiditySwap(bytes4 rg1) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(stor7))
        staticcall address(stor7).maxVotingTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor6))
        call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xc344ccc600000000000000000000000000000000000000000000000000000000
        mem[100] = idx
        mem[132] = 1
        require ext_code.size(address(stor7))
        call address(stor7).setClaimSubmittedAtEPTrue(uint256 rg1, bool rg2) with:
             gas gas_remaining wei
            args idx, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        continue 
    require ext_code.size(address(stor7))
    call address(stor7).setFirstClaimIndexToSubmitAfterEP(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaim(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaimStatusNumber(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg2 == 12:
        if 12 == ext_call.return_data[32]:
            require ext_code.size(address(stor7))
            call address(stor7).updateState12Count(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).0xf511bdfe with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[160] >= 60:
        if 12 == arg2:
            require ext_code.size(address(stor7))
            call address(stor7).0xf511bdfe with:
                 gas gas_remaining wei
                args arg1, 13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor11))
            call address(stor11).changeCoverStatusNo(uint256 rg1, uint8 rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7))
    call address(stor7).setClaimdateUpd(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 >= 2:
        if arg2 <= 5:
            require ext_code.size(address(stor7))
            staticcall address(stor7).maxVotingTime() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor6))
            call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args arg1, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if 12 == arg2:
        require ext_code.size(address(stor7))
        staticcall address(stor7).payoutRetryTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
        if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
            if 12 == arg2:
                require ext_code.size(address(stor7))
                staticcall address(stor7).payoutRetryTime() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
                    if ext_call.return_data[160] < 60:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).payoutRetryTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                        require block.timestamp <= ext_call.return_data[0] + ext_call.return_data[128]
                        require ext_code.size(address(stor6))
                        call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args arg1, uint64(ext_call.return_data[0] + ext_call.return_data[128] - block.timestamp)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[160] < 60:
                require ext_code.size(address(stor7))
                staticcall address(stor7).payoutRetryTime() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 12 == arg2:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).payoutRetryTime() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                    if ext_call.return_data[0] + ext_call.return_data[128] > block.timestamp:
                        if ext_call.return_data[160] < 60:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).payoutRetryTime() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + ext_call.return_data[128] >= ext_call.return_data[128]
                            require block.timestamp <= ext_call.return_data[0] + ext_call.return_data[128]
                            require ext_code.size(address(stor6))
                            call address(stor6).closeClaimsOraclise(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args arg1, uint64(ext_call.return_data[0] + ext_call.return_data[128] - block.timestamp)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}

function checkVoteClosing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaimStatusNumber(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor7))
    staticcall address(stor7).getClaimDateUpd(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] != 12:
        if ext_call.return_data[32] > 5:
            if ext_call.return_data[32] != 12:
                return -1
            if ext_call.return_data[32]:
                if ext_call.return_data[32] < 1:
                    return 0
                if ext_call.return_data[32] > 5:
                    return 0
            require ext_code.size(address(stor7))
            staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(stor11))
            staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor12))
            staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                    gas gas_remaining wei
                   args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor7))
            staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
            if not ext_call.return_data[64] + ext_call.return_data[32]:
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if not ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if 10^18 * ext_call.return_data[0]:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                    return 0
                        else:
                            if 10^18 * ext_call.return_data[0]:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                else:
                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                return 0
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if not 10^18 * ext_call.return_data[0]:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                            else:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                    return 0
                        else:
                            if 10^18 * ext_call.return_data[0]:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
            else:
                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if not ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                        else:
                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if 10^18 * ext_call.return_data[0]:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                    return 0
                        else:
                            if not 10^18 * ext_call.return_data[0]:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                            else:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                else:
                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                return 0
                        else:
                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                            if not 10^18 * ext_call.return_data[0]:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                            else:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                    return 0
                        else:
                            if not 10^18 * ext_call.return_data[0]:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                            else:
                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
        else:
            if 12 == ext_call.return_data[32]:
                if ext_call.return_data[32]:
                    if ext_call.return_data[32] < 1:
                        return 0
                    if ext_call.return_data[32] > 5:
                        return 0
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor11))
                staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor12))
                staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                        gas gas_remaining wei
                       args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if not ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                else:
                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                            else:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                            else:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
            else:
                require ext_code.size(address(stor7))
                staticcall address(stor7).maxVotingTime() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                if 2 * ext_call.return_data[0] > block.timestamp:
                    if ext_call.return_data[32] != 12:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).minVotingTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] >= block.timestamp:
                            return 0
                    if ext_call.return_data[32]:
                        if ext_call.return_data[32] < 1:
                            return 0
                        if ext_call.return_data[32] > 5:
                            return 0
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor12))
                    staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                            gas gas_remaining wei
                           args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
    else:
        require ext_code.size(address(stor7))
        staticcall address(stor7).payoutRetryTime() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        if 2 * ext_call.return_data[0] >= block.timestamp:
            if ext_call.return_data[32] > 5:
                if ext_call.return_data[32] != 12:
                    return -1
                if ext_call.return_data[32]:
                    if ext_call.return_data[32] < 1:
                        return 0
                    if ext_call.return_data[32] > 5:
                        return 0
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(stor11))
                staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor12))
                staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                        gas gas_remaining wei
                       args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor7))
                staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                if not ext_call.return_data[64] + ext_call.return_data[32]:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                else:
                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                            else:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if 10^18 * ext_call.return_data[0]:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    return 0
                            else:
                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                        else:
                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        return 0
                            else:
                                if not 10^18 * ext_call.return_data[0]:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                else:
                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
            else:
                if 12 == ext_call.return_data[32]:
                    if ext_call.return_data[32]:
                        if ext_call.return_data[32] < 1:
                            return 0
                        if ext_call.return_data[32] > 5:
                            return 0
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor12))
                    staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                            gas gas_remaining wei
                           args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                else:
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).maxVotingTime() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] > block.timestamp:
                        if ext_call.return_data[32] != 12:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).minVotingTime() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                            if 2 * ext_call.return_data[0] >= block.timestamp:
                                return 0
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor12))
                        staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
        else:
            require ext_code.size(address(stor7))
            staticcall address(stor7).getClaimState12Count(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 60:
                if ext_call.return_data[32] > 5:
                    if ext_call.return_data[32] != 12:
                        return -1
                    if ext_call.return_data[32]:
                        if ext_call.return_data[32] < 1:
                            return 0
                        if ext_call.return_data[32] > 5:
                            return 0
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(stor11))
                    staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor12))
                    staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                            gas gas_remaining wei
                           args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor7))
                    staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                    else:
                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if 10^18 * ext_call.return_data[0]:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        return 0
                                else:
                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                            else:
                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                if ext_call.return_data[32]:
                                    if ext_call.return_data[32] < 1:
                                        return 0
                                    if ext_call.return_data[32] > 5:
                                        return 0
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            return 0
                                else:
                                    if not 10^18 * ext_call.return_data[0]:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                    else:
                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                else:
                    if 12 == ext_call.return_data[32]:
                        if ext_call.return_data[32]:
                            if ext_call.return_data[32] < 1:
                                return 0
                            if ext_call.return_data[32] > 5:
                                return 0
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor12))
                        staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                    else:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).maxVotingTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > block.timestamp:
                            if ext_call.return_data[32] != 12:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).minVotingTime() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                if 2 * ext_call.return_data[0] >= block.timestamp:
                                    return 0
                            if ext_call.return_data[32]:
                                if ext_call.return_data[32] < 1:
                                    return 0
                                if ext_call.return_data[32] > 5:
                                    return 0
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor12))
                            staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args Mask(32, 224, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                        else:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
            else:
                if ext_call.return_data[32] > 5:
                    if ext_call.return_data[32] != 12:
                        return -1
                    if not ext_call.return_data[32]:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(address(stor11))
                        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor12))
                        staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                gas gas_remaining wei
                               args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                        else:
                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if 10^18 * ext_call.return_data[0]:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            return 0
                                    else:
                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                else:
                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                    if ext_call.return_data[32]:
                                        if ext_call.return_data[32] < 1:
                                            return 0
                                        if ext_call.return_data[32] > 5:
                                            return 0
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                return 0
                                    else:
                                        if not 10^18 * ext_call.return_data[0]:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                        else:
                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                    else:
                        if ext_call.return_data[32] >= 1:
                            if ext_call.return_data[32] <= 5:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor12))
                                staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                    else:
                                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                            else:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                    else:
                                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                else:
                    if 12 == ext_call.return_data[32]:
                        if not ext_call.return_data[32]:
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            require ext_code.size(address(stor11))
                            staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor12))
                            staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                    gas gas_remaining wei
                                   args Mask(32, 224, ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor7))
                            staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                            else:
                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                        else:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if 10^18 * ext_call.return_data[0]:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                return 0
                                        else:
                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                    else:
                                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                        if ext_call.return_data[32]:
                                            if ext_call.return_data[32] < 1:
                                                return 0
                                            if ext_call.return_data[32] > 5:
                                                return 0
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    return 0
                                        else:
                                            if not 10^18 * ext_call.return_data[0]:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                            else:
                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                        else:
                            if ext_call.return_data[32] >= 1:
                                if ext_call.return_data[32] <= 5:
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    require ext_code.size(address(stor11))
                                    staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args ext_call.return_data[32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor12))
                                    staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                            gas gas_remaining wei
                                           args Mask(32, 224, ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                                        require ext_code.size(address(stor7))
                                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                                            require ext_code.size(address(stor11))
                                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                            else:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                                else:
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if 10^18 * ext_call.return_data[0]:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                                        else:
                                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                            require ext_code.size(address(stor11))
                                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                            else:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                                else:
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if not 10^18 * ext_call.return_data[0]:
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                    return 0
                                                            else:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                                    else:
                                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                        require ext_code.size(address(stor7))
                                        staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                                            require ext_code.size(address(stor11))
                                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                else:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                            else:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if 10^18 * ext_call.return_data[0]:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                                else:
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if 10^18 * ext_call.return_data[0]:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if 10^18 * ext_call.return_data[0]:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                                        else:
                                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                            require ext_code.size(address(stor11))
                                            staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                            else:
                                                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                if ext_call.return_data[32]:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            return 0
                                                else:
                                                    if not 10^18 * ext_call.return_data[0]:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if not 10^18 * ext_call.return_data[0]:
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                    return 0
                                                            else:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                                                    else:
                                                        require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if not 10^18 * ext_call.return_data[0]:
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                    return 0
                                                            else:
                                                                require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                    return 0
                    else:
                        require ext_code.size(address(stor7))
                        staticcall address(stor7).maxVotingTime() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > block.timestamp:
                            if ext_call.return_data[32] != 12:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).minVotingTime() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                if 2 * ext_call.return_data[0] >= block.timestamp:
                                    return 0
                            if not ext_call.return_data[32]:
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                require ext_code.size(address(stor11))
                                staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor12))
                                staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                        gas gas_remaining wei
                                       args Mask(32, 224, ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor7))
                                staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                if not ext_call.return_data[64] + ext_call.return_data[32]:
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                    else:
                                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                else:
                                    require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                    require ext_code.size(address(stor7))
                                    staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                    if not ext_call.return_data[64] + ext_call.return_data[32]:
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                            else:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if 10^18 * ext_call.return_data[0]:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                    else:
                                        require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    return 0
                                            else:
                                                if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                    if ext_call.return_data[32] < 1:
                                                        return 0
                                                    if ext_call.return_data[32] > 5:
                                                        return 0
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                        else:
                                            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                            if ext_call.return_data[32]:
                                                if ext_call.return_data[32] < 1:
                                                    return 0
                                                if ext_call.return_data[32] > 5:
                                                    return 0
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        return 0
                                            else:
                                                if not 10^18 * ext_call.return_data[0]:
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                else:
                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                            else:
                                if ext_call.return_data[32] >= 1:
                                    if ext_call.return_data[32] <= 5:
                                        require ext_code.size(address(stor7))
                                        staticcall address(stor7).getClaimCoverId(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        require ext_code.size(address(stor11))
                                        staticcall address(stor11).getCurrencyOfCover(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor12))
                                        staticcall address(stor12).calculateTokenPrice(bytes4 rg1) with:
                                                gas gas_remaining wei
                                               args Mask(32, 224, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor7))
                                        staticcall address(stor7).getClaimsTokenCA(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                        if not ext_call.return_data[64] + ext_call.return_data[32]:
                                            require ext_code.size(address(stor7))
                                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                                require ext_code.size(address(stor11))
                                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                    else:
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if 10^18 * ext_call.return_data[0]:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
                                            else:
                                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                                require ext_code.size(address(stor11))
                                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                    else:
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if not 10^18 * ext_call.return_data[0]:
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                        return 0
                                                                else:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
                                        else:
                                            require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                            require ext_code.size(address(stor7))
                                            staticcall address(stor7).getClaimsTokenMV(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
                                            if not ext_call.return_data[64] + ext_call.return_data[32]:
                                                require ext_code.size(address(stor11))
                                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                    else:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if 10^18 * ext_call.return_data[0]:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                    else:
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if 10^18 * ext_call.return_data[0]:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if 10^18 * ext_call.return_data[0]:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if 0 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
                                            else:
                                                require (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / ext_call.return_data[64] + ext_call.return_data[32] == ext_call.return_data[0]
                                                require ext_code.size(address(stor11))
                                                staticcall address(stor11).getCoverSumAssured(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            return 0
                                                    else:
                                                        if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                            if ext_call.return_data[32] < 1:
                                                                return 0
                                                            if ext_call.return_data[32] > 5:
                                                                return 0
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                else:
                                                    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                                                    if ext_call.return_data[32]:
                                                        if ext_call.return_data[32] < 1:
                                                            return 0
                                                        if ext_call.return_data[32] > 5:
                                                            return 0
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                return 0
                                                    else:
                                                        if not 10^18 * ext_call.return_data[0]:
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if not 10^18 * ext_call.return_data[0]:
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                        return 0
                                                                else:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
                                                        else:
                                                            require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                            if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                if ext_call.return_data[32] < 1:
                                                                    return 0
                                                                if ext_call.return_data[32] > 5:
                                                                    return 0
                                                                if not 10^18 * ext_call.return_data[0]:
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 0:
                                                                        return 0
                                                                else:
                                                                    require 10 * 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] == 10
                                                                    if (ext_call.return_data[64] * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10^18 < 10 * 10^18 * ext_call.return_data[0]:
                                                                        return 0
    return 1
}



}
