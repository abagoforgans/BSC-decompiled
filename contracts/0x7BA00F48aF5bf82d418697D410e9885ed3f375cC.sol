contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address whitelistAddress;
uint256 totalStakingAmount;
uint8 stor4;
array of struct option;
mapping of struct order;
mapping of uint8 stor7;
address systemAddress;
uint256 tokenMultiplier;
uint256 processingFee;
uint256 maxValue;
address priceFeedAddress;

function sub_12281c13(?) payable {
    return option.length
}

function getOption(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < option.length
    return option[arg1].field_0, option[arg1].field_0, option[arg1].field_256
}

function getOrder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return order[address(arg1)].field_0, 
           order[address(arg1)].field_256,
           order[address(arg1)].field_512,
           order[address(arg1)].field_640
}

function priceFeed() payable {
    return priceFeedAddress
}

function owner() payable {
    return owner
}

function whitelist() payable {
    return whitelistAddress
}

function maxValue() payable {
    return maxValue
}

function system() payable {
    return systemAddress
}

function tokenMultiplier() payable {
    return tokenMultiplier
}

function totalStakingAmount() payable {
    return totalStakingAmount
}

function processingFee() payable {
    return processingFee
}

function sub_de190da4(?) payable {
    return bool(stor4)
}

function token() payable {
    return tokenAddress
}

function sub_fd73816f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c5cd7491(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    tokenMultiplier = arg1
    return 1
}

function setMaxValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    maxValue = arg1
    return 1
}

function setSystem(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    systemAddress = arg1
    return 1
}

function sub_91645ec8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor4 = uint8(bool(arg1))
    return 1
}

function setPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    priceFeedAddress = arg1
    return 1
}

function setProcessingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    processingFee = arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_84542c47(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint128(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    option.length++
    option[option.length].field_0 = uint128(arg1)
    option[option.length].field_128 = uint128(arg2)
    option[option.length].field_256 = uint128(arg3)
    emit 0xa2273846: option.length, arg1 << 128, arg2 << 128, uint128(arg3)
    return 1
}

function sub_c2786a87(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint128(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg4 < option.length
    option[arg4].field_0 = uint128(arg1)
    option[arg4].field_128 = uint128(arg2)
    option[arg4].field_256 = uint128(arg3)
    emit 0xa2273846: arg4, arg1 << 128, arg2 << 128, uint128(arg3)
    return 1
}

function getRewardsPool() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalStakingAmount > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - totalStakingAmount)
}

function getOptions() payable {
    mem[64] = (32 * option.length) + 128
    mem[96] = option.length
    s = 128
    idx = 0
    while idx < option.length:
        mem[0] = 5
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = option[idx].field_0
        mem[_12 + 32] = option[idx].field_128
        mem[_12 + 64] = option[idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _20 = mem[s]
        mem[t] = mem[mem[s] + 16 len 16]
        mem[t + 32] = mem[_20 + 48 len 16]
        mem[t + 64] = mem[_20 + 80 len 16]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _13 + (96 * _14) + -mem[64] + 64
}

function removeOption(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if arg1 > option.length - 1:
        revert with 0, 'Wrong order id'
    require arg1 < option.length
    emit 0xbc890905: arg1, option[arg1].field_0, option[arg1].field_0, option[arg1].field_256
    idx = arg1
    while idx < option.length - 1:
        require idx + 1 < option.length
        require idx < option.length
        mem[0] = 5
        option[idx].field_0 = option[idx + 1].field_0
        option[idx].field_128 = option[idx + 1].field_128
        option[idx].field_256 = option[idx + 1].field_256
        idx = idx + 1
        continue 
    require option.length
    option[option.length - 1].field_0 = 0
    option[option.length - 1].field_0 = option[option.length - 1].field_0
    option[option.length - 1].field_256 = 0
    option.length--
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalStakingAmount > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - totalStakingAmount < arg2:
        revert with 0, 'Not enough tokens in the rewards pool'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_fc1b6f13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= order[address(arg1)].field_256 + order[address(arg1)].field_512:
        revert with 0, 'Staking not complete'
    if not order[address(arg1)].field_0:
        revert with 0, 'Already withdrawn'
    if order[address(arg1)].field_0 * order[address(arg1)].field_512 * order[address(arg1)].field_512 / 876000 * 10^18 * 24 * 3600 > totalStakingAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStakingAmount -= order[address(arg1)].field_0 * order[address(arg1)].field_512 * order[address(arg1)].field_512 / 876000 * 10^18 * 24 * 3600
    order[address(arg1)].field_0 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), order[address(arg1)].field_0 * order[address(arg1)].field_512 * order[address(arg1)].field_640 / 876000 * 10^18 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5f546120: (order[address(arg1)].field_0 * order[address(arg1)].field_512 * order[address(arg1)].field_640 / 876000 * 10^18 * 24 * 3600), address(arg1)
    return 1
}

function withdrawReward() payable {
    if block.timestamp <= order[address(msg.sender)].field_256 + order[address(msg.sender)].field_512:
        revert with 0, 'Staking not complete'
    if not order[address(msg.sender)].field_0:
        revert with 0, 'Already withdrawn'
    if order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600 > totalStakingAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStakingAmount -= order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600
    order[address(msg.sender)].field_0 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_640 / 876000 * 10^18 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5f546120: (order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_640 / 876000 * 10^18 * 24 * 3600), msg.sender
    return 1
}

function unstake() payable {
    if not stor4:
        revert with 0, 'Unsteke disallowed'
    if block.timestamp <= order[address(msg.sender)].field_256 + order[address(msg.sender)].field_512:
        if not order[address(msg.sender)].field_0:
            revert with 0, 'Already withdrawn'
        if order[address(msg.sender)].field_0 + (order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600) > totalStakingAmount:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStakingAmount = totalStakingAmount - order[address(msg.sender)].field_0 - (order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600)
        order[address(msg.sender)].field_0 = 0
        require ext_code.size(whitelistAddress)
        call whitelistAddress.0xcf5fd668 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Unstake(order[address(msg.sender)].field_0, msg.sender);
    else:
        if block.timestamp <= order[address(msg.sender)].field_256 + order[address(msg.sender)].field_512:
            revert with 0, 'Staking not complete'
        if not order[address(msg.sender)].field_0:
            revert with 0, 'Already withdrawn'
        if order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600 > totalStakingAmount:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStakingAmount -= order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_512 / 876000 * 10^18 * 24 * 3600
        order[address(msg.sender)].field_0 = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_640 / 876000 * 10^18 * 24 * 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x5f546120: (order[address(msg.sender)].field_0 * order[address(msg.sender)].field_512 * order[address(msg.sender)].field_640 / 876000 * 10^18 * 24 * 3600), msg.sender
    return 1
}

function sub_3e615709(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if systemAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the system or owner'
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.0x56be4a3e with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if stor7[ext_call.return_data[12 len 20]]:
            revert with 0, 'User already received tokens'
        stor7[address(ext_call.return_data[0])] = 1
    else:
        if stor7[address(arg1)]:
            revert with 0, 'User already received tokens'
        stor7[address(arg1)] = 1
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if processingFee > arg2 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.getCurrencyPrice(address rg1) with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0]
    if (arg2 * ext_call.return_data[0] / 10^18) - processingFee <= maxValue:
        idx = option.length
        while idx > 0:
            require idx - 1 < option.length
            mem[0] = 5
            if option[idx - 1].field_0 > (arg2 * ext_call.return_data[0] / 10^18) - processingFee:
                idx = idx - 1
                continue 
            if idx - 1 >= option.length:
                revert with 0, 'Wrong option ID'
            if (10^18 * arg2 * ext_call.return_data[0] / 10^18 * tokenMultiplier) - (10^18 * processingFee * tokenMultiplier) / ext_call.return_data[0] <= 0:
                revert with 0, 'Amount can't be zero'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (10^18 * arg2 * ext_call.return_data[0] / 10^18 * tokenMultiplier) - (10^18 * processingFee * tokenMultiplier) / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require idx - 1 < option.length
            order[address(arg1)].field_0 = ext_call.return_data[0]
            order[address(arg1)].field_256 = block.timestamp
            order[address(arg1)].field_512 = option[idx - 1].field_128
            order[address(arg1)].field_512 = option[idx - 1].field_256
            order[address(arg1)].field_640 = 0
            totalStakingAmount += ext_call.return_data[0] * option[idx - 1].field_128 * option[idx - 1].field_256 / 876000 * 10^18 * 24 * 3600
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < totalStakingAmount:
                revert with 0, 'Not enough tokens in the pool'
            require ext_code.size(whitelistAddress)
            call whitelistAddress.0xcf5fd668 with:
                 gas gas_remaining wei
                args address(arg1), block.timestamp + option[idx - 1].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x37c620ec: idx - 1, ext_call.return_data[0], block.timestamp, option[idx - 1].field_0, option[idx - 1].field_256, address(arg1)
            return 1
    else:
        idx = option.length
        while idx > 0:
            require idx - 1 < option.length
            mem[0] = 5
            if option[idx - 1].field_0 > maxValue:
                idx = idx - 1
                continue 
            if idx - 1 >= option.length:
                revert with 0, 'Wrong option ID'
            if 10^18 * maxValue * tokenMultiplier / ext_call.return_data[0] <= 0:
                revert with 0, 'Amount can't be zero'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 10^18 * maxValue * tokenMultiplier / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require idx - 1 < option.length
            order[address(arg1)].field_0 = ext_call.return_data[0]
            order[address(arg1)].field_256 = block.timestamp
            order[address(arg1)].field_512 = option[idx - 1].field_128
            order[address(arg1)].field_512 = option[idx - 1].field_256
            order[address(arg1)].field_640 = 0
            totalStakingAmount += ext_call.return_data[0] * option[idx - 1].field_128 * option[idx - 1].field_256 / 876000 * 10^18 * 24 * 3600
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < totalStakingAmount:
                revert with 0, 'Not enough tokens in the pool'
            require ext_code.size(whitelistAddress)
            call whitelistAddress.0xcf5fd668 with:
                 gas gas_remaining wei
                args address(arg1), block.timestamp + option[idx - 1].field_128
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x37c620ec: idx - 1, ext_call.return_data[0], block.timestamp, option[idx - 1].field_0, option[idx - 1].field_256, address(arg1)
            return 1
    revert with 0, 'No appropriate stake options'
}



}
