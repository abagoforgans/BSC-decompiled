contract main {




// =====================  Runtime code  =====================


array of uint256 lockReason;
mapping of struct lockedTokensValidity;
address msAddress;
address soteMasterAddress;
address tokenAddress;
uint256 stor4;
address pooledStakingAddress;
uint256 stor5;
uint256 minCALockTime;

function getLockedTokensValidity(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return lockedTokensValidity[address(arg1)][arg2].field_256
}

function pooledStaking() payable {
    return address(pooledStakingAddress)
}

function lockReason(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lockReason[arg1]
    return lockReason[arg1][arg2]
}

function ms() payable {
    return msAddress
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function minCALockTime() payable {
    return minCALockTime
}

function locked(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return lockedTokensValidity[arg1][arg2].field_0, 
           lockedTokensValidity[arg1][arg2].field_256,
           bool(lockedTokensValidity[arg1][arg2].field_512)
}

function token() payable {
    return address(tokenAddress)
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

function tokensLocked(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if lockedTokensValidity[address(arg1)][arg2].field_512:
        return 0
    return lockedTokensValidity[address(arg1)][arg2].field_0
}

function tokensLockedAtTime(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 >= lockedTokensValidity[address(arg1)][arg2].field_256:
        return 0
    return lockedTokensValidity[address(arg1)][arg2].field_0
}

function tokensUnlockable(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < lockedTokensValidity[address(arg1)][arg2].field_256:
        return 0
    if lockedTokensValidity[address(arg1)][arg2].field_512:
        return 0
    return lockedTokensValidity[address(arg1)][arg2].field_0
}

function totalSupply() payable {
    require ext_code.size(address(tokenAddress))
    staticcall address(tokenAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockForMemberVote(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x4c47e71d with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).changeOperator(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).addToWhiteList(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).removeFromWhiteList(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if Mask(64, 192, arg1) != 0x4d4e434c54000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Invalid param code'
    if not arg2:
        minCALockTime = 0
    else:
        require 24 * 3600 * arg2 / arg2 == 24 * 3600
        minCALockTime = 24 * 3600 * arg2
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x79cc6790 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function changeDependentContractAddress() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    require ext_code.size(msAddress)
    staticcall msAddress.getLatestAddress(bytes2 rg1) with:
            gas gas_remaining wei
           args 0x5053000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
}

function reduceLock(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not lockedTokensValidity[address(arg1)][arg2].field_512
    require lockedTokensValidity[address(arg1)][arg2].field_0 > 0
    emit 0xfe11f87f: lockedTokensValidity[address(arg1)][arg2].field_0, arg1, arg2
    require arg3 <= lockedTokensValidity[address(arg1)][arg2].field_256
    lockedTokensValidity[address(arg1)][arg2].field_256 -= arg3
    emit Locked(lockedTokensValidity[address(arg1)][arg2].field_0, lockedTokensValidity[address(arg1)][arg2].field_256 - arg3, arg1, arg2);
}

function getUnlockableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if block.timestamp < lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_256:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        if lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
        continue 
    return s
}

function extendLockOf(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not lockedTokensValidity[address(arg1)][arg2].field_512
    require lockedTokensValidity[address(arg1)][arg2].field_0 > 0
    emit 0xfe11f87f: lockedTokensValidity[address(arg1)][arg2].field_0, arg1, arg2
    require arg3 + lockedTokensValidity[address(arg1)][arg2].field_256 >= lockedTokensValidity[address(arg1)][arg2].field_256
    lockedTokensValidity[address(arg1)][arg2].field_256 += arg3
    emit Locked(lockedTokensValidity[address(arg1)][arg2].field_0, arg3 + lockedTokensValidity[address(arg1)][arg2].field_256, arg1, arg2);
    return 1
}

function totalLockedBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if arg2 >= lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_256:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
        continue 
    require ext_code.size(address(pooledStakingAddress))
    staticcall address(pooledStakingAddress).stakerDeposit(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + s >= s
    return (ext_call.return_data[0] + s)
}

function extendLock(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if arg1 != 0x434c410000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Restricted to reason CLA'
    require not lockedTokensValidity[address(msg.sender)][arg1].field_512
    require lockedTokensValidity[address(msg.sender)][arg1].field_0 > 0
    emit 0xfe11f87f: lockedTokensValidity[address(msg.sender)][arg1].field_0, msg.sender, arg1
    require arg2 + lockedTokensValidity[address(msg.sender)][arg1].field_256 >= lockedTokensValidity[address(msg.sender)][arg1].field_256
    lockedTokensValidity[address(msg.sender)][arg1].field_256 += arg2
    emit Locked(lockedTokensValidity[address(msg.sender)][arg1].field_0, arg2 + lockedTokensValidity[address(msg.sender)][arg1].field_256, msg.sender, arg1);
    return 1
}

function increaseLockAmount(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if arg1 != 0x434c410000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Restricted to reason CLA'
    require not lockedTokensValidity[address(msg.sender)][arg1].field_512
    require lockedTokensValidity[address(msg.sender)][arg1].field_0 > 0
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).operatorTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + lockedTokensValidity[msg.sender][arg1].field_0 >= lockedTokensValidity[msg.sender][arg1].field_0
    lockedTokensValidity[msg.sender][arg1].field_0 += arg2
    emit Locked(arg2, lockedTokensValidity[msg.sender][arg1].field_256, msg.sender, arg1);
    return 1
}

function lockOf(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not lockedTokensValidity[address(arg1)][arg2].field_512:
        require not lockedTokensValidity[address(arg1)][arg2].field_0
    require arg3
    if not lockedTokensValidity[address(arg1)][arg2].field_0:
        lockReason[address(arg1)]++
        lockReason[address(arg1)][lockReason[address(arg1)]] = arg2
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).operatorTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg4 + block.timestamp >= block.timestamp
    lockedTokensValidity[address(arg1)][arg2].field_0 = arg3
    lockedTokensValidity[address(arg1)][arg2].field_256 = arg4 + block.timestamp
    lockedTokensValidity[address(arg1)][arg2].field_512 = 0
    emit Locked(arg3, arg4 + block.timestamp, arg1, arg2);
    return 1
}

function operatorTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if address(pooledStakingAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xa443616c6c206973206f6e6c7920616c6c6f7765642066726f6d20506f6f6c65645374616b696e6720616464726573,
                    mem[211 len 17]
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).operatorTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Operator transfer failed'
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Internal transfer failed'
    return 1
}

function lock(bytes32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if arg1 != 0x434c410000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Restricted to reason CLA'
    if minCALockTime > arg3:
        revert with 0, 'Should lock for minimum time'
    if not lockedTokensValidity[address(msg.sender)][arg1].field_512:
        require not lockedTokensValidity[address(msg.sender)][arg1].field_0
    require arg2
    if not lockedTokensValidity[address(msg.sender)][arg1].field_0:
        lockReason[address(msg.sender)]++
        lockReason[address(msg.sender)][lockReason[address(msg.sender)]] = arg1
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).operatorTransfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 + block.timestamp >= block.timestamp
    lockedTokensValidity[address(msg.sender)][arg1].field_0 = arg2
    lockedTokensValidity[address(msg.sender)][arg1].field_256 = arg3 + block.timestamp
    lockedTokensValidity[address(msg.sender)][arg1].field_512 = 0
    emit Locked(arg2, arg3 + block.timestamp, msg.sender, arg1);
    return 1
}

function unlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isPause() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if block.timestamp < lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_256:
        return 0
    if lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_512:
        return 0
    if lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_0:
        lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_512 = 1
        emit 0xfe11f87f: lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_0, arg1, 0x434c410000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    return lockedTokensValidity[address(arg1)][0x434c410000000000000000000000000000000000000000000000000000000000].field_0
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(tokenAddress))
    staticcall address(tokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = ext_call.return_data[0]
    while idx < lockReason[address(arg1)]:
        require idx < lockReason[address(arg1)]
        if lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_512:
            require s >= s
            mem[0] = arg1
            mem[32] = 0
            idx = idx + 1
            s = s
            continue 
        require lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s >= s
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        s = lockedTokensValidity[address(arg1)][stor0[address(arg1)][idx]].field_0 + s
        continue 
    require ext_code.size(address(pooledStakingAddress))
    staticcall address(pooledStakingAddress).stakerReward(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(pooledStakingAddress))
    staticcall address(pooledStakingAddress).stakerDeposit(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + s >= s
    require ext_call.return_data[0] >= 0
    return ((2 * ext_call.return_data[0]) + s)
}

function burnLockedTokens(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if lockedTokensValidity[address(arg1)][arg2].field_512:
        require 0 >= arg3
        if 0 == arg3:
            lockedTokensValidity[address(arg1)][arg2].field_512 = 1
    else:
        require lockedTokensValidity[address(arg1)][arg2].field_0 >= arg3
        if lockedTokensValidity[address(arg1)][arg2].field_0 == arg3:
            lockedTokensValidity[address(arg1)][arg2].field_512 = 1
    require arg3 <= lockedTokensValidity[address(arg1)][arg2].field_0
    lockedTokensValidity[address(arg1)][arg2].field_0 -= arg3
    if not lockedTokensValidity[address(arg1)][arg2].field_0 - arg3:
        idx = 0
        while idx < lockReason[address(arg1)]:
            mem[32] = 0
            require idx < lockReason[address(arg1)]
            mem[0] = sha3(address(arg1), 0)
            if lockReason[address(arg1)][idx] != arg2:
                idx = idx + 1
                continue 
            require 1 <= lockReason[address(arg1)]
            require lockReason[address(arg1)] - 1 < lockReason[address(arg1)]
            require idx < lockReason[address(arg1)]
            lockReason[address(arg1)][idx] = lockReason[address(arg1)][lockReason[address(arg1)]]
            require lockReason[address(arg1)]
            lockReason[address(arg1)][lockReason[address(arg1)]] = 0
            lockReason[address(arg1)]--
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).burn(uint256 rg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Burned(arg2, arg3, arg1);
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).burn(uint256 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Burned(arg2, arg3, arg1);
}

function releaseLockedTokens(address arg1, bytes32 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if lockedTokensValidity[address(arg1)][arg2].field_512:
        require 0 >= arg3
        if 0 == arg3:
            lockedTokensValidity[address(arg1)][arg2].field_512 = 1
    else:
        require lockedTokensValidity[address(arg1)][arg2].field_0 >= arg3
        if lockedTokensValidity[address(arg1)][arg2].field_0 == arg3:
            lockedTokensValidity[address(arg1)][arg2].field_512 = 1
    require arg3 <= lockedTokensValidity[address(arg1)][arg2].field_0
    lockedTokensValidity[address(arg1)][arg2].field_0 -= arg3
    if not lockedTokensValidity[address(arg1)][arg2].field_0 - arg3:
        idx = 0
        while idx < lockReason[address(arg1)]:
            mem[32] = 0
            require idx < lockReason[address(arg1)]
            mem[0] = sha3(address(arg1), 0)
            if lockReason[address(arg1)][idx] != arg2:
                idx = idx + 1
                continue 
            require 1 <= lockReason[address(arg1)]
            require lockReason[address(arg1)] - 1 < lockReason[address(arg1)]
            require idx < lockReason[address(arg1)]
            lockReason[address(arg1)][idx] = lockReason[address(arg1)][lockReason[address(arg1)]]
            require lockReason[address(arg1)]
            lockReason[address(arg1)][lockReason[address(arg1)]] = 0
            lockReason[address(arg1)]--
            require ext_code.size(address(tokenAddress))
            call address(tokenAddress).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0xfe11f87f: arg3, arg1, arg2
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xfe11f87f: arg3, arg1, arg2
}



}
