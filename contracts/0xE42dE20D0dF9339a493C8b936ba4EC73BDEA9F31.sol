contract main {




// =====================  Runtime code  =====================


address msAddress;
array of uint256 stor1;
address walletAddress;
uint256 lockTokenTimeAfterCoverExp;
uint256 bookTime;
uint256 lockCADays;
uint256 lockMVDays;
uint256 scValidDays;
uint256 joiningFee;
uint256 stakerCommissionPer;
uint256 stakerMaxCommissionPer;
uint256 tokenExponent;
uint256 priceStep;
array of struct stakerStakedBurnedByIndex;
array of struct stakedContractStakerIndex;
mapping of struct stakerEarnedStakeCommission;
mapping of uint256 lastCompletedStakeCommission;
mapping of uint256 stakedContractCurrentCommissionIndex;
mapping of uint256 stakedContractCurrentBurnIndex;
mapping of struct depositedCN;
mapping of uint256 stor20;

function lockCADays() payable {
    return lockCADays
}

function depositedCN(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return depositedCN[arg1].field_0, bool(uint8(depositedCN[arg1].field_256))
}

function lockMVDays() payable {
    return lockMVDays
}

function getStakedContractStakerIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakedContractStakerIndex[address(arg1)].field_0
    return stakedContractStakerIndex[address(arg1)][arg2].field_256
}

function getStakerEarnedStakeCommission(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerEarnedStakeCommission[address(stor13[address(arg1)][arg2].field_0)][stor13[address(arg1)][arg2].field_256].field_0
}

function getStakerStakedBurnedByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerStakedBurnedByIndex[address(arg1)][arg2].field_1280
}

function getStakerInitialStakedAmountOnContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerStakedBurnedByIndex[address(arg1)][arg2].field_768
}

function stakerMaxCommissionPer() payable {
    return stakerMaxCommissionPer
}

function walletAddress() payable {
    return walletAddress
}

function joiningFee() payable {
    return joiningFee
}

function getStakerStakedContractIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerStakedBurnedByIndex[address(arg1)][arg2].field_256
}

function stakedContractCurrentCommissionIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedContractCurrentCommissionIndex[arg1]
}

function priceStep() payable {
    return priceStep
}

function bookTime() payable {
    return bookTime
}

function getStakerStakedContractByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return address(stakerStakedBurnedByIndex[address(arg1)][arg2].field_0)
}

function ms() payable {
    return msAddress
}

function stakedContractStakeCommission(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return stakerEarnedStakeCommission[arg1][arg2].field_0, stakerEarnedStakeCommission[arg1][arg2].field_256
}

function getStakerStakedUnlockableBeforeLastBurnByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerStakedBurnedByIndex[address(arg1)][arg2].field_1536
}

function getStakedContractStakerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakedContractStakerIndex[address(arg1)].field_0
    return address(stakedContractStakerIndex[address(arg1)][arg2].field_0)
}

function stakedContractStakers(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakedContractStakerIndex[arg1].field_0
    return address(stakedContractStakerIndex[arg1][arg2].field_0), stakedContractStakerIndex[arg1][arg2].field_256
}

function soteMasterAddress() payable {
    return address(stor1.length)
}

function stakerStakedContracts(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[arg1].field_0
    return address(stakerStakedBurnedByIndex[arg1][arg2].field_0), 
           stakerStakedBurnedByIndex[arg1][arg2].field_256,
           stakerStakedBurnedByIndex[arg1][arg2].field_512,
           stakerStakedBurnedByIndex[arg1][arg2].field_768,
           stakerStakedBurnedByIndex[arg1][arg2].field_1024,
           stakerStakedBurnedByIndex[arg1][arg2].field_1280,
           stakerStakedBurnedByIndex[arg1][arg2].field_1536
}

function scValidDays() payable {
    return scValidDays
}

function lockTokenTimeAfterCoverExp() payable {
    return lockTokenTimeAfterCoverExp
}

function lastCompletedStakeCommission(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastCompletedStakeCommission[arg1]
}

function stakerCommissionPer() payable {
    return stakerCommissionPer
}

function getStakerStakedContractLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakerStakedBurnedByIndex[address(arg1)].field_0
}

function tokenExponent() payable {
    return tokenExponent
}

function getStakedContractStakersLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedContractStakerIndex[address(arg1)].field_0
}

function getStakerRedeemedStakeCommission(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerEarnedStakeCommission[address(stor13[address(arg1)][arg2].field_0)][stor13[address(arg1)][arg2].field_256].field_256
}

function stakedContractCurrentBurnIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakedContractCurrentBurnIndex[arg1]
}

function getStakerUnlockedStakedTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    return stakerStakedBurnedByIndex[address(arg1)][arg2].field_1024
}

function _fallback() payable {
    revert
}

function changeDependentContractAddress() payable {
  stop
}

function isCATokensBooked(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= stor20[address(arg1)]:
        return 0
    return 1
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    address(stor1.length) = arg1
}

function changeWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    walletAddress = arg1
}

function setDepositCNAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    depositedCN[arg1].field_0 = arg2
}

function setStakedContractCurrentBurnIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stakedContractCurrentBurnIndex[address(arg1)] = arg2
}

function setLastCompletedStakeCommissionIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lastCompletedStakeCommission[address(arg1)] = arg2
}

function setStakedContractCurrentCommissionIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stakedContractCurrentCommissionIndex[address(arg1)] = arg2
}

function setUnlockableBeforeLastBurnTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    stakerStakedBurnedByIndex[address(arg1)][arg2].field_1536 = arg3
}

function setDepositCN(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 == 1:
        if uint8(depositedCN[arg1].field_256):
            revert with 0, 'Cover note already deposited'
    uint8(depositedCN[arg1].field_256) = uint8(arg2)
}

function bookCATokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if block.timestamp < stor20[address(arg1)]:
        revert with 0, 'Tokens already booked'
    require bookTime + block.timestamp >= block.timestamp
    stor20[address(arg1)] = bookTime + block.timestamp
}

function pushEarnedStakeCommissions(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg4 + stakerEarnedStakeCommission[address(arg2)][arg3].field_0 >= stakerEarnedStakeCommission[address(arg2)][arg3].field_0
    stakerEarnedStakeCommission[address(arg2)][arg3].field_0 += arg4
    emit Commission(arg4, arg1, arg2, arg3);
}

function pushBurnedTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg3 + stakerStakedBurnedByIndex[address(arg1)][arg2].field_1280 >= stakerStakedBurnedByIndex[address(arg1)][arg2].field_1280
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    stakerStakedBurnedByIndex[address(arg1)][arg2].field_1280 += arg3
}

function pushUnlockedStakedTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg3 + stakerStakedBurnedByIndex[address(arg1)][arg2].field_1024 >= stakerStakedBurnedByIndex[address(arg1)][arg2].field_1024
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    stakerStakedBurnedByIndex[address(arg1)][arg2].field_1024 += arg3
}

function pushUnlockableBeforeLastBurnTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg3 + stakerStakedBurnedByIndex[address(arg1)][arg2].field_1536 >= stakerStakedBurnedByIndex[address(arg1)][arg2].field_1536
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    stakerStakedBurnedByIndex[address(arg1)][arg2].field_1536 += arg3
}

function getStakerTotalEarnedStakeCommission(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stakerStakedBurnedByIndex[address(arg1)].field_0:
        require idx < stakerStakedBurnedByIndex[address(arg1)].field_0
        require idx < stakerStakedBurnedByIndex[address(arg1)].field_0
        _18 = sha3(stakerStakedBurnedByIndex[address(arg1)][idx].field_256, sha3(address(stakerStakedBurnedByIndex[address(arg1)][idx].field_0), 15))
        require stakerEarnedStakeCommission[address(stor13[address(arg1)][idx].field_0)][stor13[address(arg1)][idx].field_256].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 13
        idx = idx + 1
        s = stakerEarnedStakeCommission[address(stor13[address(arg1)][idx].field_0)][stor13[address(arg1)][idx].field_256].field_0 + s
        continue 
    return (stor[_18] * stakerStakedBurnedByIndex[address(arg1)].field_0)
}

function getStakerTotalReedmedStakeCommission(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stakerStakedBurnedByIndex[address(arg1)].field_0:
        require idx < stakerStakedBurnedByIndex[address(arg1)].field_0
        require idx < stakerStakedBurnedByIndex[address(arg1)].field_0
        _18 = sha3(stakerStakedBurnedByIndex[address(arg1)][idx].field_256, sha3(address(stakerStakedBurnedByIndex[address(arg1)][idx].field_0), 15))
        require stakerEarnedStakeCommission[address(stor13[address(arg1)][idx].field_0)][stor13[address(arg1)][idx].field_256].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 13
        idx = idx + 1
        s = stakerEarnedStakeCommission[address(stor13[address(arg1)][idx].field_0)][stor13[address(arg1)][idx].field_256].field_256 + s
        continue 
    return (uint256(stor1[_18]) * stakerStakedBurnedByIndex[address(arg1)].field_0)
}

function pushRedeemedStakeCommissions(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg2 < stakerStakedBurnedByIndex[address(arg1)].field_0
    require arg3 + stakerEarnedStakeCommission[address(stor13[address(arg1)][arg2].field_0)][stor13[address(arg1)][arg2].field_256].field_256 >= stakerEarnedStakeCommission[address(stor13[address(arg1)][arg2].field_0)][stor13[address(arg1)][arg2].field_256].field_256
    stakerEarnedStakeCommission[address(stor13[address(arg1)][arg2].field_0)][stor13[address(arg1)][arg2].field_256].field_256 += arg3
}

function getUintParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x544f4b4558500000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), tokenExponent
    if Mask(64, 192, arg1) == 0x544f4b5354455000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), priceStep
    if Mask(64, 192, arg1) == 0x52414c4f434b5400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), scValidDays
    if Mask(64, 192, arg1) == 0x5241434f4d4d0000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), stakerCommissionPer
    if Mask(64, 192, arg1) == 0x52414d4158430000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), stakerMaxCommissionPer
    if Mask(64, 192, arg1) == 0x4341424f4f4b5400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), bookTime / 3600
    if Mask(64, 192, arg1) == 0x43414c4f434b5400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), lockCADays / 24 * 3600
    if Mask(64, 192, arg1) == 0x4d564c4f434b5400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), lockMVDays / 24 * 3600
    if Mask(64, 192, arg1) == 0x51554f4c4f434b54000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), lockTokenTimeAfterCoverExp / 24 * 3600
    if Mask(64, 192, arg1) != 'JOINFEE' << 200:
        return Mask(64, 192, arg1), 0
    return Mask(64, 192, arg1), joiningFee
}

function addStake(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stakedContractStakerIndex[address(arg2)].field_0++
    address(stakedContractStakerIndex[address(arg2)][stakedContractStakerIndex[address(arg2)].field_0].field_0) = arg1
    stakedContractStakerIndex[address(arg2)][stakedContractStakerIndex[address(arg2)].field_0].field_256 = stakerStakedBurnedByIndex[address(arg1)].field_0
    require 1 <= stakedContractStakerIndex[address(arg2)].field_0 + 1
    stakerStakedBurnedByIndex[address(arg1)].field_0++
    address(stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_0) = arg2
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_256 = stakedContractStakerIndex[address(arg2)].field_0
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_512 = block.timestamp
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_768 = arg3
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_1024 = 0
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_1280 = 0
    stakerStakedBurnedByIndex[address(arg1)][stakerStakedBurnedByIndex[address(arg1)].field_0].field_1536 = 0
    return stakedContractStakerIndex[address(arg2)].field_0
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
    if Mask(64, 192, arg1) == 0x544f4b4558500000000000000000000000000000000000000000000000000000:
        tokenExponent = arg2
    else:
        if Mask(64, 192, arg1) == 0x544f4b5354455000000000000000000000000000000000000000000000000000:
            priceStep = arg2
        else:
            if Mask(64, 192, arg1) == 0x52414c4f434b5400000000000000000000000000000000000000000000000000:
                scValidDays = arg2
            else:
                if Mask(64, 192, arg1) == 0x5241434f4d4d0000000000000000000000000000000000000000000000000000:
                    stakerCommissionPer = arg2
                else:
                    if Mask(64, 192, arg1) == 0x52414d4158430000000000000000000000000000000000000000000000000000:
                        stakerMaxCommissionPer = arg2
                    else:
                        if Mask(64, 192, arg1) == 0x4341424f4f4b5400000000000000000000000000000000000000000000000000:
                            bookTime = 3600 * arg2
                        else:
                            if Mask(64, 192, arg1) == 0x43414c4f434b5400000000000000000000000000000000000000000000000000:
                                lockCADays = 24 * 3600 * arg2
                            else:
                                if Mask(64, 192, arg1) == 0x4d564c4f434b5400000000000000000000000000000000000000000000000000:
                                    lockMVDays = 24 * 3600 * arg2
                                else:
                                    if Mask(64, 192, arg1) == 0x51554f4c4f434b54000000000000000000000000000000000000000000000000:
                                        lockTokenTimeAfterCoverExp = 24 * 3600 * arg2
                                    else:
                                        if Mask(64, 192, arg1) != 'JOINFEE' << 200:
                                            revert with 0, 'Invalid param code'
                                        joiningFee = arg2
}



}
