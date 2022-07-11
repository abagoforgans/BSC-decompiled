contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
address tokenAddress;
address guardianAddress;
mapping of struct totalAmount;
array of struct stor5;
mapping of uint256 stor6;

function guardian() payable {
    return guardianAddress
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function totalAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalAmount[address(arg1)].field_256
}

function vestings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalAmount[arg1].field_0, 
           totalAmount[arg1].field_256,
           totalAmount[arg1].field_512,
           totalAmount[arg1].field_768,
           totalAmount[arg1].field_1024,
           totalAmount[arg1].field_1024,
           totalAmount[arg1].field_1056
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if guardianAddress != msg.sender:
        revert with 0, 'Not guardian'
    guardianAddress = arg1
    emit NewGuardian(msg.sender, arg1);
}

function sub_d8449b63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'invalid investor address'
    return (totalAmount[address(arg1)].field_1056 == address(arg1))
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function tokensVestedPerDay(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount[address(arg1)].field_512 == 10000:
        return 0
    if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
        revert with 'NH{q', 17
    if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000:
        revert with 'NH{q', 17
    if not totalAmount[address(arg1)].field_1024:
        revert with 'NH{q', 18
    return (totalAmount[address(arg1)].field_256 - (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) / totalAmount[address(arg1)].field_1024)
}

function emergencyWithdraw() payable {
    if guardianAddress != msg.sender:
        revert with 0, 'Not guardian'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args guardianAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    emit EmergencyWithdraw(ext_call.return_data[0], guardianAddress);
}

function recipients() payable {
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = uint256(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_e0c6aed2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'invalid recipient address'
    if totalAmount[address(arg1)].field_1056 != address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The recipient address has no vesting'
    if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_768:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    totalAmount[address(arg1)].field_0 = 0
    totalAmount[address(arg1)].field_256 = 0
    totalAmount[address(arg1)].field_512 = 0
    totalAmount[address(arg1)].field_768 = 0
    totalAmount[address(arg1)].field_1024 = 0
    totalAmount[address(arg1)].field_1040 = 0
    totalAmount[address(arg1)].field_1056 = 0
    if not stor6[address(arg1)]:
        revert with 0, 'failed to remove recipient'
    if stor6[address(arg1)] < 1:
        revert with 'NH{q', 17
    if stor5.length < 1:
        revert with 'NH{q', 17
    if stor5.length - 1 != stor6[address(arg1)] - 1:
        if stor5.length - 1 >= stor5.length:
            revert with 'NH{q', 50
        if stor6[address(arg1)] - 1 >= stor5.length:
            revert with 'NH{q', 50
        stor5[stor6[address(arg1)]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
    if not stor5.length:
        revert with 'NH{q', 49
    stor5[stor5.length].field_0 = 0
    stor5.length--
    stor6[address(arg1)] = 0
    emit 0xf4b9e62a: address(arg1)
    stor1 = 1
}

function sub_358659bb(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'invalid recipient address'
    if arg2 < block.timestamp:
        revert with 0, 'Start time < block.timestamp'
    if arg4 > 10000:
        revert with 0, 'basis point too large'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'failed to transfer token from sender to contract'
    if not address(arg1):
        revert with 0, 'invalid investor address'
    if totalAmount[address(arg1)].field_1056 == address(arg1):
        if arg2 < totalAmount[address(arg1)].field_0:
            revert with 0, 'new start time too early'
        if totalAmount[address(arg1)].field_768:
            revert with 0, 'Amount claimed must be 0'
        totalAmount[address(arg1)].field_0 = arg2
        totalAmount[address(arg1)].field_1024 = uint16(arg5)
        totalAmount[address(arg1)].field_1040 = uint16(arg6)
        if totalAmount[address(arg1)].field_256 > -arg3 - 1:
            revert with 'NH{q', 17
        totalAmount[address(arg1)].field_256 += arg3
        totalAmount[address(arg1)].field_512 = arg4
        totalAmount[address(arg1)].field_1024 = totalAmount[address(arg1)].field_1024
        totalAmount[address(arg1)].field_1040 = totalAmount[address(arg1)].field_1040
        totalAmount[address(arg1)].field_1056 = totalAmount[address(arg1)].field_1056
    else:
        totalAmount[address(arg1)].field_0 = arg2
        totalAmount[address(arg1)].field_256 = arg3
        totalAmount[address(arg1)].field_512 = arg4
        totalAmount[address(arg1)].field_768 = 0
        totalAmount[address(arg1)].field_1024 = uint16(arg5)
        totalAmount[address(arg1)].field_1040 = uint16(arg6)
        totalAmount[address(arg1)].field_1056 = address(arg1)
        if stor6[address(arg1)]:
            revert with 0, 'failed to add recipient'
        stor5.length++
        stor5[stor5.length].field_0 = address(arg1)
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
    emit VestingAdded(arg3, address(arg1));
    stor1 = 1
}

function sub_87bc79aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'invalid investor address'
    if totalAmount[address(arg1)].field_1056 != address(arg1):
        return 0
    if block.timestamp <= totalAmount[address(arg1)].field_0:
        return 0
    if totalAmount[address(arg1)].field_512 == 10000:
        if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_768:
            revert with 'NH{q', 17
        return 0, totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768
    if block.timestamp < totalAmount[address(arg1)].field_0:
        revert with 'NH{q', 17
    if block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600 < totalAmount[address(arg1)].field_1040:
        if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
            revert with 'NH{q', 17
        if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 < totalAmount[address(arg1)].field_768:
            revert with 'NH{q', 17
        return 0, 
               (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768
    if (block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040 >= totalAmount[address(arg1)].field_1024:
        if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_768:
            revert with 'NH{q', 17
        return totalAmount[address(arg1)].field_1024, totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768
    if totalAmount[totalAmount[address(arg1)].field_1024].field_512 == 10000:
        if uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) and 0 > -1 / uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040):
            revert with 'NH{q', 17
        if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
            revert with 'NH{q', 17
        if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 > -1:
            revert with 'NH{q', 17
        if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 < totalAmount[address(arg1)].field_768:
            revert with 'NH{q', 17
        return (block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040 << 240, 
               (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768
    if totalAmount[totalAmount[address(arg1)].field_1024].field_256 and totalAmount[totalAmount[address(arg1)].field_1024].field_512 > -1 / totalAmount[totalAmount[address(arg1)].field_1024].field_256:
        revert with 'NH{q', 17
    if totalAmount[totalAmount[address(arg1)].field_1024].field_256 < totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000:
        revert with 'NH{q', 17
    if not totalAmount[totalAmount[address(arg1)].field_1024].field_1024:
        revert with 'NH{q', 18
    if uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) and totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024 > -1 / uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040):
        revert with 'NH{q', 17
    if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
        revert with 'NH{q', 17
    if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 > (-1 * uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - 1:
        revert with 'NH{q', 17
    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) < totalAmount[address(arg1)].field_768:
        revert with 'NH{q', 17
    return (block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040 << 240, 
           (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - totalAmount[address(arg1)].field_768
}

function claimVestedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0, 'invalid investor address'
    if totalAmount[address(arg1)].field_1056 != arg1:
        revert with 0, 'Amount vested is 0'
    if block.timestamp <= totalAmount[address(arg1)].field_0:
        revert with 0, 'Amount vested is 0'
    if totalAmount[address(arg1)].field_512 == 10000:
        if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_768:
            revert with 'NH{q', 17
        if totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768 <= 0:
            revert with 0, 'Amount vested is 0'
        if totalAmount[address(arg1)].field_768 > -totalAmount[address(arg1)].field_256 + totalAmount[address(arg1)].field_768 - 1:
            revert with 'NH{q', 17
        totalAmount[address(arg1)].field_768 = totalAmount[address(arg1)].field_256
        if totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768 > totalAmount[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountVested is larger than totalAmount'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args totalAmount[address(arg1)].field_1024, totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Token transfer failed'
        emit TokensClaimed((totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768), totalAmount[address(arg1)].field_1056);
    else:
        if block.timestamp < totalAmount[address(arg1)].field_0:
            revert with 'NH{q', 17
        if block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600 < totalAmount[address(arg1)].field_1040:
            if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
                revert with 'NH{q', 17
            if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 < totalAmount[address(arg1)].field_768:
                revert with 'NH{q', 17
            if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768 <= 0:
                revert with 0, 'Amount vested is 0'
            if totalAmount[address(arg1)].field_768 > -(totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + totalAmount[address(arg1)].field_768 - 1:
                revert with 'NH{q', 17
            totalAmount[address(arg1)].field_768 = totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000
            if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768 > totalAmount[address(arg1)].field_256:
                revert with 0, 'amountVested is larger than totalAmount'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args totalAmount[address(arg1)].field_1024, (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Token transfer failed'
            emit TokensClaimed(((totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768), totalAmount[address(arg1)].field_1056);
        else:
            if (block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040 >= totalAmount[address(arg1)].field_1024:
                if totalAmount[address(arg1)].field_256 < totalAmount[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768 <= 0:
                    revert with 0, 'Amount vested is 0'
                if totalAmount[address(arg1)].field_768 > -totalAmount[address(arg1)].field_256 + totalAmount[address(arg1)].field_768 - 1:
                    revert with 'NH{q', 17
                totalAmount[address(arg1)].field_768 = totalAmount[address(arg1)].field_256
                if totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768 > totalAmount[address(arg1)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountVested is larger than totalAmount'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args totalAmount[address(arg1)].field_1024, totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Token transfer failed'
                emit TokensClaimed((totalAmount[address(arg1)].field_256 - totalAmount[address(arg1)].field_768), totalAmount[address(arg1)].field_1056);
            else:
                if totalAmount[totalAmount[address(arg1)].field_1024].field_512 == 10000:
                    if uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) and 0 > -1 / uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040):
                        revert with 'NH{q', 17
                    if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 > -1:
                        revert with 'NH{q', 17
                    if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 < totalAmount[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768 <= 0:
                        revert with 0, 'Amount vested is 0'
                    if totalAmount[address(arg1)].field_768 > -(totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + totalAmount[address(arg1)].field_768 - 1:
                        revert with 'NH{q', 17
                    totalAmount[address(arg1)].field_768 = totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000
                    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768 > totalAmount[address(arg1)].field_256:
                        revert with 0, 'amountVested is larger than totalAmount'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args totalAmount[address(arg1)].field_1024, (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Token transfer failed'
                    emit TokensClaimed(((totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) - totalAmount[address(arg1)].field_768), totalAmount[address(arg1)].field_1056);
                else:
                    if totalAmount[totalAmount[address(arg1)].field_1024].field_256 and totalAmount[totalAmount[address(arg1)].field_1024].field_512 > -1 / totalAmount[totalAmount[address(arg1)].field_1024].field_256:
                        revert with 'NH{q', 17
                    if totalAmount[totalAmount[address(arg1)].field_1024].field_256 < totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000:
                        revert with 'NH{q', 17
                    if not totalAmount[totalAmount[address(arg1)].field_1024].field_1024:
                        revert with 'NH{q', 18
                    if uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) and totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024 > -1 / uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040):
                        revert with 'NH{q', 17
                    if totalAmount[address(arg1)].field_256 and totalAmount[address(arg1)].field_512 > -1 / totalAmount[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000 > (-1 * uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - 1:
                        revert with 'NH{q', 17
                    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) < totalAmount[address(arg1)].field_768:
                        revert with 'NH{q', 17
                    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - totalAmount[address(arg1)].field_768 <= 0:
                        revert with 0, 'Amount vested is 0'
                    if totalAmount[address(arg1)].field_768 > -(totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (-1 * uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) + totalAmount[address(arg1)].field_768 - 1:
                        revert with 'NH{q', 17
                    totalAmount[address(arg1)].field_768 = (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024)
                    if (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - totalAmount[address(arg1)].field_768 > totalAmount[address(arg1)].field_256:
                        revert with 0, 'amountVested is larger than totalAmount'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args totalAmount[address(arg1)].field_1024, (totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - totalAmount[address(arg1)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Token transfer failed'
                    emit TokensClaimed(((totalAmount[address(arg1)].field_256 * totalAmount[address(arg1)].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(arg1)].field_0 / 24 * 3600) - totalAmount[address(arg1)].field_1040) * totalAmount[totalAmount[address(arg1)].field_1024].field_256 - (totalAmount[totalAmount[address(arg1)].field_1024].field_256 * totalAmount[totalAmount[address(arg1)].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(arg1)].field_1024].field_1024) - totalAmount[address(arg1)].field_768), totalAmount[address(arg1)].field_1056);
    stor1 = 1
}

function sub_fb5f749f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'invalid investor address'
        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056 != address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'Amount vested is 0'
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        if block.timestamp <= totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            revert with 0, 'Amount vested is 0'
        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 == 10000:
            if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768:
                revert with 'NH{q', 17
            if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 <= 0:
                revert with 0, 'Amount vested is 0'
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 + totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 - 1:
                revert with 'NH{q', 17
            totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256
            if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                revert with 0, 'amountVested is larger than totalAmount'
            mem[mem[64] + 4] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
            mem[mem[64] + 36] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024, totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_113] == bool(mem[_113])
            if not mem[_113]:
                revert with 0, 'Token transfer failed'
            mem[mem[64]] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
            emit TokensClaimed((totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768), totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056);
        else:
            if block.timestamp < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                revert with 'NH{q', 17
            if block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600 < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040:
                _101 = mem[64]
                mem[64] = mem[64] + 224
                mem[_101] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                mem[_101 + 32] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                mem[_101 + 64] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                mem[_101 + 96] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[_101 + 128] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                mem[_101 + 160] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040
                mem[_101 + 192] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 and totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > -1 / totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                    revert with 'NH{q', 17
                if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000 < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768:
                    revert with 'NH{q', 17
                if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 <= 0:
                    revert with 0, 'Amount vested is 0'
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -(totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 - 1:
                    revert with 'NH{q', 17
                totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000
                if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                    revert with 0, 'amountVested is larger than totalAmount'
                mem[mem[64] + 4] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                mem[mem[64] + 36] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024, (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == bool(mem[_138])
                if not mem[_138]:
                    revert with 0, 'Token transfer failed'
                mem[mem[64]] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                emit TokensClaimed(((totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768), totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056);
            else:
                if (block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040 >= totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                    if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768:
                        revert with 'NH{q', 17
                    if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 <= 0:
                        revert with 0, 'Amount vested is 0'
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 + totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 - 1:
                        revert with 'NH{q', 17
                    totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                    if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                        revert with 0, 'amountVested is larger than totalAmount'
                    mem[mem[64] + 4] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                    mem[mem[64] + 36] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024, totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_134] == bool(mem[_134])
                    if not mem[_134]:
                        revert with 0, 'Token transfer failed'
                    mem[mem[64]] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                    emit TokensClaimed((totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768), totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056);
                else:
                    mem[0] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                    mem[32] = 4
                    if totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 == 10000:
                        if uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) and 0 > -1 / uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040):
                            revert with 'NH{q', 17
                        _116 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_116] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                        mem[_116 + 32] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                        mem[_116 + 64] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                        mem[_116 + 96] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        mem[_116 + 128] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                        mem[_116 + 160] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040
                        mem[_116 + 192] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 and totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > -1 / totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 'NH{q', 17
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000 > -1:
                            revert with 'NH{q', 17
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000 < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768:
                            revert with 'NH{q', 17
                        if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 <= 0:
                            revert with 0, 'Amount vested is 0'
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 4
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -(totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 - 1:
                            revert with 'NH{q', 17
                        totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000
                        if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 'amountVested is larger than totalAmount'
                        mem[mem[64] + 4] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                        mem[mem[64] + 36] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024, (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_158] == bool(mem[_158])
                        if not mem[_158]:
                            revert with 0, 'Token transfer failed'
                        mem[mem[64]] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        emit TokensClaimed(((totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768), totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056);
                    else:
                        _108 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_108] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_0
                        mem[_108 + 32] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256
                        mem[_108 + 64] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512
                        mem[_108 + 96] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_768
                        mem[_108 + 128] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024
                        mem[_108 + 160] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1040
                        mem[_108 + 192] = totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1056
                        if totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 and totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 > -1 / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256:
                            revert with 'NH{q', 17
                        if totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 < totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000:
                            revert with 'NH{q', 17
                        if not totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024:
                            revert with 'NH{q', 18
                        if uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) and totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024 > -1 / uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040):
                            revert with 'NH{q', 17
                        _139 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_139] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                        mem[_139 + 32] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256
                        mem[_139 + 64] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512
                        mem[_139 + 96] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        mem[_139 + 128] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024
                        mem[_139 + 160] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040
                        mem[_139 + 192] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 and totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 > -1 / totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 'NH{q', 17
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000 > (-1 * uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - 1:
                            revert with 'NH{q', 17
                        if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) < totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768:
                            revert with 'NH{q', 17
                        if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 <= 0:
                            revert with 0, 'Amount vested is 0'
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 4
                        if totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -(totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (-1 * uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) + totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 - 1:
                            revert with 'NH{q', 17
                        totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024)
                        if (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256:
                            revert with 0, 'amountVested is larger than totalAmount'
                        mem[mem[64] + 4] = totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056
                        mem[mem[64] + 36] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024, (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_171] == bool(mem[_171])
                        if not mem[_171]:
                            revert with 0, 'Token transfer failed'
                        mem[mem[64]] = (totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768
                        emit TokensClaimed(((totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_256 * totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_512 / 10000) + (uint16((block.timestamp - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_0 / 24 * 3600) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1040) * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 - (totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_256 * totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_512 / 10000) / totalAmount[totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1024].field_1024) - totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_768), totalAmount[address(cd[((32 * idx) + cd[4] + 36)])].field_1056);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor1 = 1
}



}
