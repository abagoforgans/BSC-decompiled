contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalVestedAmount;
uint256 totalReleasedAmount;
address tokenAddress;
array of struct nextVestingId;
array of struct sub_de671c93;

function getNextVestingId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nextVestingId[address(arg1)].field_0
}

function sub_3a8dd527(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < nextVestingId[arg1].field_0
    return nextVestingId[arg1][arg2].field_0, 
           nextVestingId[arg1][arg2].field_256,
           nextVestingId[arg1][arg2].field_512,
           nextVestingId[arg1][arg2].field_768,
           nextVestingId[arg1][arg2].field_1024,
           nextVestingId[arg1][arg2].field_1280,
           nextVestingId[arg1][arg2].field_1536
}

function totalVestedAmount() payable {
    return totalVestedAmount
}

function totalReleasedAmount() payable {
    return totalReleasedAmount
}

function owner() payable {
    return owner
}

function sub_de671c93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_de671c93.length
    return sub_de671c93[arg1].field_0, 
           sub_de671c93[arg1].field_256,
           sub_de671c93[arg1].field_512,
           sub_de671c93[arg1].field_768,
           sub_de671c93[arg1].field_1024,
           sub_de671c93[arg1].field_1280,
           sub_de671c93[arg1].field_1536
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

function getUnallocatedFundsAmount() payable {
    if totalVestedAmount < totalReleasedAmount:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalVestedAmount - totalReleasedAmount:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount)
}

function getAvailableAmountAtTimestamp(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= nextVestingId[address(arg1)].field_0:
        return 0
    if arg2 >= nextVestingId[address(arg1)].field_0:
        revert with 'NH{q', 50
    if nextVestingId[address(arg1)][arg2].field_256 > arg3:
        return 0
    if not nextVestingId[address(arg1)][arg2].field_1536:
        return 0
    if arg3 < nextVestingId[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if arg3 - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 >= nextVestingId[address(arg1)][arg2].field_1024:
        if nextVestingId[address(arg1)][arg2].field_512 < nextVestingId[address(arg1)][arg2].field_768:
            revert with 'NH{q', 17
        return (nextVestingId[address(arg1)][arg2].field_512 - nextVestingId[address(arg1)][arg2].field_768)
    if nextVestingId[address(arg1)][arg2].field_1536 and arg3 - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 > -1 / nextVestingId[address(arg1)][arg2].field_1536:
        revert with 'NH{q', 17
    if nextVestingId[address(arg1)][arg2].field_1536 * arg3 - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 > -nextVestingId[address(arg1)][arg2].field_1280 - 1:
        revert with 'NH{q', 17
    if (nextVestingId[address(arg1)][arg2].field_1536 * arg3 - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600) + nextVestingId[address(arg1)][arg2].field_1280 < nextVestingId[address(arg1)][arg2].field_768:
        revert with 'NH{q', 17
    return ((nextVestingId[address(arg1)][arg2].field_1536 * arg3 - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600) + nextVestingId[address(arg1)][arg2].field_1280 - nextVestingId[address(arg1)][arg2].field_768)
}

function getAvailableAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= nextVestingId[address(arg1)].field_0:
        return 0
    if arg2 >= nextVestingId[address(arg1)].field_0:
        revert with 'NH{q', 50
    if nextVestingId[address(arg1)][arg2].field_256 > block.timestamp:
        return 0
    if not nextVestingId[address(arg1)][arg2].field_1536:
        return 0
    if block.timestamp < nextVestingId[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if block.timestamp - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 >= nextVestingId[address(arg1)][arg2].field_1024:
        if nextVestingId[address(arg1)][arg2].field_512 < nextVestingId[address(arg1)][arg2].field_768:
            revert with 'NH{q', 17
        return (nextVestingId[address(arg1)][arg2].field_512 - nextVestingId[address(arg1)][arg2].field_768)
    if nextVestingId[address(arg1)][arg2].field_1536 and block.timestamp - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 > -1 / nextVestingId[address(arg1)][arg2].field_1536:
        revert with 'NH{q', 17
    if nextVestingId[address(arg1)][arg2].field_1536 * block.timestamp - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600 > -nextVestingId[address(arg1)][arg2].field_1280 - 1:
        revert with 'NH{q', 17
    if (nextVestingId[address(arg1)][arg2].field_1536 * block.timestamp - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600) + nextVestingId[address(arg1)][arg2].field_1280 < nextVestingId[address(arg1)][arg2].field_768:
        revert with 'NH{q', 17
    return ((nextVestingId[address(arg1)][arg2].field_1536 * block.timestamp - nextVestingId[address(arg1)][arg2].field_256 / 720 * 24 * 3600) + nextVestingId[address(arg1)][arg2].field_1280 - nextVestingId[address(arg1)][arg2].field_768)
}

function withdrawUnallocatedFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalVestedAmount < totalReleasedAmount:
        revert with 'NH{q', 17
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalVestedAmount - totalReleasedAmount:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount <= 0:
        revert with 0, 'DON_T_HAVE_UNALLOCATED_TOKENS'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount, 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x19bd0bc4: arg1
}

function getAvailableAmountAggregated(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < nextVestingId[address(arg1)].field_0:
        if idx >= nextVestingId[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[32] = 4
        if idx >= nextVestingId[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if nextVestingId[address(arg1)][idx].field_512 != nextVestingId[address(arg1)][idx].field_768:
            mem[0] = arg1
            mem[32] = 4
            if idx < nextVestingId[address(arg1)].field_0:
                mem[32] = 4
                if idx >= nextVestingId[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 4)
                _28 = mem[64]
                mem[64] = mem[64] + 224
                mem[_28] = nextVestingId[address(arg1)][idx].field_0
                mem[_28 + 32] = nextVestingId[address(arg1)][idx].field_256
                mem[_28 + 64] = nextVestingId[address(arg1)][idx].field_512
                mem[_28 + 96] = nextVestingId[address(arg1)][idx].field_768
                mem[_28 + 128] = nextVestingId[address(arg1)][idx].field_1024
                mem[_28 + 160] = nextVestingId[address(arg1)][idx].field_1280
                mem[_28 + 192] = nextVestingId[address(arg1)][idx].field_1536
                if nextVestingId[address(arg1)][idx].field_256 <= block.timestamp:
                    if nextVestingId[address(arg1)][idx].field_1536:
                        if block.timestamp < nextVestingId[address(arg1)][idx].field_256:
                            revert with 'NH{q', 17
                        if block.timestamp - nextVestingId[address(arg1)][idx].field_256 / 720 * 24 * 3600 >= nextVestingId[address(arg1)][idx].field_1024:
                            if nextVestingId[address(arg1)][idx].field_512 < nextVestingId[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if 0 > -nextVestingId[address(arg1)][idx].field_512 + nextVestingId[address(arg1)][idx].field_768 - 1:
                                revert with 'NH{q', 17
                        else:
                            if nextVestingId[address(arg1)][idx].field_1536 and block.timestamp - nextVestingId[address(arg1)][idx].field_256 / 720 * 24 * 3600 > -1 / nextVestingId[address(arg1)][idx].field_1536:
                                revert with 'NH{q', 17
                            if nextVestingId[address(arg1)][idx].field_1536 * block.timestamp - nextVestingId[address(arg1)][idx].field_256 / 720 * 24 * 3600 > -nextVestingId[address(arg1)][idx].field_1280 - 1:
                                revert with 'NH{q', 17
                            if (nextVestingId[address(arg1)][idx].field_1536 * block.timestamp - nextVestingId[address(arg1)][idx].field_256 / 720 * 24 * 3600) + nextVestingId[address(arg1)][idx].field_1280 < nextVestingId[address(arg1)][idx].field_768:
                                revert with 'NH{q', 17
                            if 0 > (-1 * nextVestingId[address(arg1)][idx].field_1536 * block.timestamp - nextVestingId[address(arg1)][idx].field_256 / 720 * 24 * 3600) + -nextVestingId[address(arg1)][idx].field_1280 + nextVestingId[address(arg1)][idx].field_768 - 1:
                                revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_dc9ffc50(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 < block.timestamp:
        revert with 0, 'TIMESTAMP_CANNOT_BE_IN_THE_PAST'
    if arg4 > arg2:
        revert with 0, 'START_AMOUNT_CANNOT_BE_GREATER'
    if totalVestedAmount < totalReleasedAmount:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalVestedAmount - totalReleasedAmount:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount < arg2:
        revert with 0, 'DON_T_HAVE_ENOUGH_PMA'
    if arg5 <= 0:
        sub_de671c93.length++
        sub_de671c93[sub_de671c93.length].field_0 = address(arg1)
        sub_de671c93[sub_de671c93.length].field_256 = arg3
        sub_de671c93[sub_de671c93.length].field_512 = arg2
        sub_de671c93[sub_de671c93.length].field_768 = 0
        sub_de671c93[sub_de671c93.length].field_1024 = arg5
        sub_de671c93[sub_de671c93.length].field_1280 = arg4
        sub_de671c93[sub_de671c93.length].field_1536 = 0
        nextVestingId[address(arg1)].field_0++
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_0 = address(arg1)
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_256 = arg3
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_512 = arg2
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_768 = 0
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1024 = arg5
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1280 = arg4
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1536 = 0
    else:
        if arg2 < arg4:
            revert with 'NH{q', 17
        if not arg5:
            revert with 'NH{q', 18
        sub_de671c93.length++
        sub_de671c93[sub_de671c93.length].field_0 = address(arg1)
        sub_de671c93[sub_de671c93.length].field_256 = arg3
        sub_de671c93[sub_de671c93.length].field_512 = arg2
        sub_de671c93[sub_de671c93.length].field_768 = 0
        sub_de671c93[sub_de671c93.length].field_1024 = arg5
        sub_de671c93[sub_de671c93.length].field_1280 = arg4
        sub_de671c93[sub_de671c93.length].field_1536 = arg2 - arg4 / arg5
        nextVestingId[address(arg1)].field_0++
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_0 = address(arg1)
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_256 = arg3
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_512 = arg2
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_768 = 0
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1024 = arg5
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1280 = arg4
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1536 = arg2 - arg4 / arg5
    if totalVestedAmount > -arg2 - 1:
        revert with 'NH{q', 17
    totalVestedAmount += arg2
    emit 0x8d486b51: address(arg1), arg2, arg3, arg4, arg5
}

function sub_11ed5b4f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < block.timestamp:
        revert with 0, 'TIMESTAMP_CANNOT_BE_IN_THE_PAST'
    if arg3 > arg2:
        revert with 0, 'START_AMOUNT_CANNOT_BE_GREATER'
    if totalVestedAmount < totalReleasedAmount:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalVestedAmount - totalReleasedAmount:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - totalVestedAmount + totalReleasedAmount < arg2:
        revert with 0, 'DON_T_HAVE_ENOUGH_PMA'
    if arg4 <= 0:
        sub_de671c93.length++
        sub_de671c93[sub_de671c93.length].field_0 = address(arg1)
        sub_de671c93[sub_de671c93.length].field_256 = block.timestamp
        sub_de671c93[sub_de671c93.length].field_512 = arg2
        sub_de671c93[sub_de671c93.length].field_768 = 0
        sub_de671c93[sub_de671c93.length].field_1024 = arg4
        sub_de671c93[sub_de671c93.length].field_1280 = arg3
        sub_de671c93[sub_de671c93.length].field_1536 = 0
        nextVestingId[address(arg1)].field_0++
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_0 = address(arg1)
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_256 = block.timestamp
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_512 = arg2
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_768 = 0
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1024 = arg4
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1280 = arg3
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1536 = 0
    else:
        if arg2 < arg3:
            revert with 'NH{q', 17
        if not arg4:
            revert with 'NH{q', 18
        sub_de671c93.length++
        sub_de671c93[sub_de671c93.length].field_0 = address(arg1)
        sub_de671c93[sub_de671c93.length].field_256 = block.timestamp
        sub_de671c93[sub_de671c93.length].field_512 = arg2
        sub_de671c93[sub_de671c93.length].field_768 = 0
        sub_de671c93[sub_de671c93.length].field_1024 = arg4
        sub_de671c93[sub_de671c93.length].field_1280 = arg3
        sub_de671c93[sub_de671c93.length].field_1536 = arg2 - arg3 / arg4
        nextVestingId[address(arg1)].field_0++
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_0 = address(arg1)
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_256 = block.timestamp
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_512 = arg2
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_768 = 0
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1024 = arg4
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1280 = arg3
        nextVestingId[address(arg1)][nextVestingId[address(arg1)].field_0].field_1536 = arg2 - arg3 / arg4
    if totalVestedAmount > -arg2 - 1:
        revert with 'NH{q', 17
    totalVestedAmount += arg2
    emit 0x8d486b51: address(arg1), arg2, block.timestamp, arg3, arg4
}

function sub_c958fe35(?) payable {
    if sub_de671c93.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_de671c93.length
    mem[64] = (32 * sub_de671c93.length) + 128
    if not sub_de671c93.length:
        idx = 0
        while idx < sub_de671c93.length:
            mem[0] = 5
            _34 = mem[64]
            mem[64] = mem[64] + 224
            mem[_34] = sub_de671c93[idx].field_0
            mem[_34 + 32] = sub_de671c93[idx].field_256
            mem[_34 + 64] = sub_de671c93[idx].field_512
            mem[_34 + 96] = sub_de671c93[idx].field_768
            mem[_34 + 128] = sub_de671c93[idx].field_1024
            mem[_34 + 160] = sub_de671c93[idx].field_1280
            mem[_34 + 192] = sub_de671c93[idx].field_1536
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _34
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _36 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _36:
            _61 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_61 + 32]
            mem[t + 64] = mem[_61 + 64]
            mem[t + 96] = mem[_61 + 96]
            mem[t + 128] = mem[_61 + 128]
            mem[t + 160] = mem[_61 + 160]
            mem[t + 192] = mem[_61 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _32 + (224 * _36) + -mem[64] + 64
    mem[64] = (32 * sub_de671c93.length) + 352
    mem[(32 * sub_de671c93.length) + 128] = 0
    mem[(32 * sub_de671c93.length) + 160] = 0
    mem[(32 * sub_de671c93.length) + 192] = 0
    mem[(32 * sub_de671c93.length) + 224] = 0
    mem[(32 * sub_de671c93.length) + 256] = 0
    mem[(32 * sub_de671c93.length) + 288] = 0
    mem[(32 * sub_de671c93.length) + 320] = 0
    mem[var8001] = (32 * sub_de671c93.length) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * sub_de671c93.length) + 128] = 0
        mem[(32 * sub_de671c93.length) + 160] = 0
        mem[(32 * sub_de671c93.length) + 192] = 0
        mem[(32 * sub_de671c93.length) + 224] = 0
        mem[(32 * sub_de671c93.length) + 256] = 0
        mem[(32 * sub_de671c93.length) + 288] = 0
        mem[(32 * sub_de671c93.length) + 320] = 0
        mem[s + 32] = (32 * sub_de671c93.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_de671c93.length:
        mem[0] = 5
        _86 = mem[64]
        mem[64] = mem[64] + 224
        mem[_86] = sub_de671c93[idx].field_0
        mem[_86 + 32] = sub_de671c93[idx].field_256
        mem[_86 + 64] = sub_de671c93[idx].field_512
        mem[_86 + 96] = sub_de671c93[idx].field_768
        mem[_86 + 128] = sub_de671c93[idx].field_1024
        mem[_86 + 160] = sub_de671c93[idx].field_1280
        mem[_86 + 192] = sub_de671c93[idx].field_1536
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _86
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _84 = mem[64]
    mem[mem[64]] = 32
    _88 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _88:
        _98 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_98 + 32]
        mem[t + 64] = mem[_98 + 64]
        mem[t + 96] = mem[_98 + 96]
        mem[t + 128] = mem[_98 + 128]
        mem[t + 160] = mem[_98 + 160]
        mem[t + 192] = mem[_98 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _84 + (224 * _88) + -mem[64] + 64
}

function withdrawAllAvailable() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 4
    idx = 0
    while idx < nextVestingId[address(msg.sender)].field_0:
        if idx >= nextVestingId[address(msg.sender)].field_0:
            if idx >= nextVestingId[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if nextVestingId[address(msg.sender)][idx].field_768 > -1:
                revert with 'NH{q', 17
            mem[32] = 4
            if idx >= nextVestingId[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 4)
        else:
            mem[32] = 4
            if idx >= nextVestingId[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 4)
            _115 = mem[64]
            mem[64] = mem[64] + 224
            mem[_115] = nextVestingId[address(msg.sender)][idx].field_0
            mem[_115 + 32] = nextVestingId[address(msg.sender)][idx].field_256
            mem[_115 + 64] = nextVestingId[address(msg.sender)][idx].field_512
            mem[_115 + 96] = nextVestingId[address(msg.sender)][idx].field_768
            mem[_115 + 128] = nextVestingId[address(msg.sender)][idx].field_1024
            mem[_115 + 160] = nextVestingId[address(msg.sender)][idx].field_1280
            mem[_115 + 192] = nextVestingId[address(msg.sender)][idx].field_1536
            if nextVestingId[address(msg.sender)][idx].field_256 > block.timestamp:
                if idx >= nextVestingId[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if nextVestingId[address(msg.sender)][idx].field_768 > -1:
                    revert with 'NH{q', 17
                mem[32] = 4
                if idx >= nextVestingId[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 4)
            else:
                if not nextVestingId[address(msg.sender)][idx].field_1536:
                    if idx >= nextVestingId[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if nextVestingId[address(msg.sender)][idx].field_768 > -1:
                        revert with 'NH{q', 17
                    mem[32] = 4
                    if idx >= nextVestingId[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 4)
                else:
                    if block.timestamp < nextVestingId[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600 >= nextVestingId[address(msg.sender)][idx].field_1024:
                        if nextVestingId[address(msg.sender)][idx].field_512 < nextVestingId[address(msg.sender)][idx].field_768:
                            revert with 'NH{q', 17
                        if 0 > -nextVestingId[address(msg.sender)][idx].field_512 + nextVestingId[address(msg.sender)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                        if idx >= nextVestingId[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        if nextVestingId[address(msg.sender)][idx].field_768 > -nextVestingId[address(msg.sender)][idx].field_512 + nextVestingId[address(msg.sender)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                        mem[32] = 4
                        if idx >= nextVestingId[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 4)
                        nextVestingId[address(msg.sender)][idx].field_768 = nextVestingId[address(msg.sender)][idx].field_512
                    else:
                        if nextVestingId[address(msg.sender)][idx].field_1536 and block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600 > -1 / nextVestingId[address(msg.sender)][idx].field_1536:
                            revert with 'NH{q', 17
                        if nextVestingId[address(msg.sender)][idx].field_1536 * block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600 > -nextVestingId[address(msg.sender)][idx].field_1280 - 1:
                            revert with 'NH{q', 17
                        if (nextVestingId[address(msg.sender)][idx].field_1536 * block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600) + nextVestingId[address(msg.sender)][idx].field_1280 < nextVestingId[address(msg.sender)][idx].field_768:
                            revert with 'NH{q', 17
                        if 0 > (-1 * nextVestingId[address(msg.sender)][idx].field_1536 * block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600) + -nextVestingId[address(msg.sender)][idx].field_1280 + nextVestingId[address(msg.sender)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                        if idx >= nextVestingId[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        if nextVestingId[address(msg.sender)][idx].field_768 > (-1 * nextVestingId[address(msg.sender)][idx].field_1536 * block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600) + -nextVestingId[address(msg.sender)][idx].field_1280 + nextVestingId[address(msg.sender)][idx].field_768 - 1:
                            revert with 'NH{q', 17
                        mem[32] = 4
                        if idx >= nextVestingId[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 4)
                        nextVestingId[address(msg.sender)][idx].field_768 = (nextVestingId[address(msg.sender)][idx].field_1536 * block.timestamp - nextVestingId[address(msg.sender)][idx].field_256 / 720 * 24 * 3600) + nextVestingId[address(msg.sender)][idx].field_1280
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalReleasedAmount > -1:
        revert with 'NH{q', 17
    _119 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    _126 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_119 + 100] = 32
    mem[_119 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    _141 = mem[_126]
    mem[_119 + 164 len ceil32(mem[_126])] = mem[_126 + 32 len ceil32(mem[_126])]
    if ceil32(_141) > _141:
        mem[_119 + _141 + 164] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args mem[_119 + 168 len _141 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_119 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_119 + 196] == bool(mem[_119 + 196])
            if not mem[_119 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x9b095f94 
}



}
