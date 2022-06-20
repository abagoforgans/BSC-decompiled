contract main {




// =====================  Runtime code  =====================


const getBlockNumber = block.number


address owner;
address stor1;
address stor2;
uint256 sub_29a31a08;
uint256 sub_858fba2c;
uint256 sub_6b4367cf;
uint256 secondsPerBlock;
uint256 sub_d5a33fe0;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
array of struct orderInfo;
array of struct sub_95b659f6;

function sub_29a31a08(?) payable {
    return sub_29a31a08
}

function orderInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < orderInfo.length
    return address(orderInfo[arg1].field_0), 
           orderInfo[arg1].field_256,
           orderInfo[arg1].field_512,
           orderInfo[arg1].field_768,
           orderInfo[arg1].field_1024,
           orderInfo[arg1].field_1280,
           orderInfo[arg1].field_1536,
           orderInfo[arg1].field_1792,
           orderInfo[arg1].field_2048,
           orderInfo[arg1].field_2304,
           bool(uint8(orderInfo[arg1].field_2560))
}

function sub_6b4367cf(?) payable {
    return sub_6b4367cf
}

function secondsPerBlock() payable {
    return secondsPerBlock
}

function sub_80bc2be0(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if address(arg3) != msg.sender:
        revert with 0, 'user error'
    require arg2 < sub_95b659f6[arg1][address(arg3)].field_0
    return address(sub_95b659f6[arg1][address(arg3)][arg2].field_0), 
           sub_95b659f6[arg1][address(arg3)][arg2].field_256,
           sub_95b659f6[arg1][address(arg3)][arg2].field_512,
           sub_95b659f6[arg1][address(arg3)][arg2].field_768,
           sub_95b659f6[arg1][address(arg3)][arg2].field_1024,
           sub_95b659f6[arg1][address(arg3)][arg2].field_1280,
           sub_95b659f6[arg1][address(arg3)][arg2].field_1536,
           sub_95b659f6[arg1][address(arg3)][arg2].field_1792,
           sub_95b659f6[arg1][address(arg3)][arg2].field_2048,
           sub_95b659f6[arg1][address(arg3)][arg2].field_2304,
           bool(uint8(sub_95b659f6[arg1][address(arg3)][arg2].field_2560))
}

function sub_858fba2c(?) payable {
    return sub_858fba2c
}

function owner() payable {
    return owner
}

function sub_95b659f6(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 < sub_95b659f6[arg1][arg2].field_0
    return address(sub_95b659f6[arg1][arg2][arg3].field_0), 
           sub_95b659f6[arg1][arg2][arg3].field_256,
           sub_95b659f6[arg1][arg2][arg3].field_512,
           sub_95b659f6[arg1][arg2][arg3].field_768,
           sub_95b659f6[arg1][arg2][arg3].field_1024,
           sub_95b659f6[arg1][arg2][arg3].field_1280,
           sub_95b659f6[arg1][arg2][arg3].field_1536,
           sub_95b659f6[arg1][arg2][arg3].field_1792,
           sub_95b659f6[arg1][arg2][arg3].field_2048,
           sub_95b659f6[arg1][arg2][arg3].field_2304,
           bool(uint8(sub_95b659f6[arg1][arg2][arg3].field_2560))
}

function getPoolLength() payable {
    return orderInfo.length
}

function sub_d5a33fe0(?) payable {
    return sub_d5a33fe0
}

function _fallback() payable {
    revert
}

function sub_ec2400b7(?) payable {
    if not secondsPerBlock:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor11 / secondsPerBlock)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rescueTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawStakedToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= 3:
        revert with 0, 'pid error'
    require arg2 < sub_95b659f6[arg1][msg.sender].field_0
    if sub_95b659f6[arg1][msg.sender][arg2].field_256 <= 0:
        revert with 0, 'stakedAmount error'
    if block.number <= sub_95b659f6[arg1][msg.sender][arg2].field_2048:
        revert with 0, 'it's not time yet'
    if uint8(sub_95b659f6[arg1][msg.sender][arg2].field_2560):
        revert with 0, 'you're already withdraws'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_95b659f6[arg1][msg.sender][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(sub_95b659f6[arg1][msg.sender][arg2].field_2560) = 1
    sub_95b659f6[arg1][msg.sender][arg2].field_256 = 0
    emit Withdraw(sub_95b659f6[arg1][msg.sender][arg2].field_256, msg.sender, arg1, arg2);
}

function sub_68c5cf1d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[64] = (32 * sub_95b659f6[arg1][address(arg2)].field_0) + 128
    mem[96] = sub_95b659f6[arg1][address(arg2)].field_0
    s = 128
    idx = 0
    while idx < sub_95b659f6[arg1][address(arg2)].field_0:
        mem[0] = sha3(address(arg2), sha3(arg1, 15))
        _15 = mem[64]
        mem[64] = mem[64] + 352
        mem[_15] = address(sub_95b659f6[arg1][address(arg2)][idx].field_0)
        mem[_15 + 32] = sub_95b659f6[arg1][address(arg2)][idx].field_256
        mem[_15 + 64] = sub_95b659f6[arg1][address(arg2)][idx].field_512
        mem[_15 + 96] = sub_95b659f6[arg1][address(arg2)][idx].field_768
        mem[_15 + 128] = sub_95b659f6[arg1][address(arg2)][idx].field_1024
        mem[_15 + 160] = sub_95b659f6[arg1][address(arg2)][idx].field_1280
        mem[_15 + 192] = sub_95b659f6[arg1][address(arg2)][idx].field_1536
        mem[_15 + 224] = sub_95b659f6[arg1][address(arg2)][idx].field_1792
        mem[_15 + 256] = sub_95b659f6[arg1][address(arg2)][idx].field_2048
        mem[_15 + 288] = sub_95b659f6[arg1][address(arg2)][idx].field_2304
        mem[_15 + 320] = bool(uint8(sub_95b659f6[arg1][address(arg2)][idx].field_2560))
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        mem[32] = sha3(arg1, 15)
        require idx < sub_95b659f6[arg1][address(arg2)].field_0
        mem[0] = sha3(address(arg2), sha3(arg1, 15))
        _27 = sha3(sha3(address(arg2), sha3(arg1, 15)))
        if sub_95b659f6[arg1][address(arg2)][idx].field_256 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = sub_95b659f6[arg1][address(arg2)][idx].field_256 + s
        continue 
    mem[mem[64]] = stor[(11 * mem[96]) + _27 + 1] * mem[96]
    return memory
      from mem[64]
       len 32
}

function sub_f8cb8729(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(arg1, 15)
    mem[64] = (32 * sub_95b659f6[arg1][address(arg2)].field_0) + 128
    mem[96] = sub_95b659f6[arg1][address(arg2)].field_0
    s = 128
    idx = 0
    while idx < sub_95b659f6[arg1][address(arg2)].field_0:
        mem[0] = sha3(address(arg2), sha3(arg1, 15))
        _22 = mem[64]
        mem[64] = mem[64] + 352
        mem[_22] = address(sub_95b659f6[arg1][address(arg2)][idx].field_0)
        mem[_22 + 32] = sub_95b659f6[arg1][address(arg2)][idx].field_256
        mem[_22 + 64] = sub_95b659f6[arg1][address(arg2)][idx].field_512
        mem[_22 + 96] = sub_95b659f6[arg1][address(arg2)][idx].field_768
        mem[_22 + 128] = sub_95b659f6[arg1][address(arg2)][idx].field_1024
        mem[_22 + 160] = sub_95b659f6[arg1][address(arg2)][idx].field_1280
        mem[_22 + 192] = sub_95b659f6[arg1][address(arg2)][idx].field_1536
        mem[_22 + 224] = sub_95b659f6[arg1][address(arg2)][idx].field_1792
        mem[_22 + 256] = sub_95b659f6[arg1][address(arg2)][idx].field_2048
        mem[_22 + 288] = sub_95b659f6[arg1][address(arg2)][idx].field_2304
        mem[_22 + 320] = bool(uint8(sub_95b659f6[arg1][address(arg2)][idx].field_2560))
        mem[s] = _22
        s = s + 32
        idx = idx + 1
        continue 
    _23 = mem[64]
    mem[mem[64]] = 32
    _24 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _24:
        _38 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_38 + 32]
        mem[s + 64] = mem[_38 + 64]
        mem[s + 96] = mem[_38 + 96]
        mem[s + 128] = mem[_38 + 128]
        mem[s + 160] = mem[_38 + 160]
        mem[s + 192] = mem[_38 + 192]
        mem[s + 224] = mem[_38 + 224]
        mem[s + 256] = mem[_38 + 256]
        mem[s + 288] = mem[_38 + 288]
        mem[s + 320] = bool(mem[_38 + 320])
        idx = idx + 1
        s = s + 352
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _23 + (352 * _24) + -mem[64] + 64
}

function sub_2c018f91(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if arg1 >= 3:
        revert with 0, 'pid error'
    require arg3 < sub_95b659f6[arg1][address(arg2)].field_0
    if sub_95b659f6[arg1][address(arg2)][arg3].field_1792 >= stor12:
        return 0
    if block.number >= sub_95b659f6[arg1][address(arg2)][arg3].field_2048:
        if sub_95b659f6[arg1][address(arg2)][arg3].field_1792 > sub_95b659f6[arg1][address(arg2)][arg3].field_768:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_95b659f6[arg1][address(arg2)][arg3].field_1024 > sub_95b659f6[arg1][address(arg2)][arg3].field_768 - sub_95b659f6[arg1][address(arg2)][arg3].field_1792:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (sub_95b659f6[arg1][address(arg2)][arg3].field_768 - sub_95b659f6[arg1][address(arg2)][arg3].field_1792 - sub_95b659f6[arg1][address(arg2)][arg3].field_1024)
    if sub_95b659f6[arg1][address(arg2)][arg3].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.number - sub_95b659f6[arg1][address(arg2)][arg3].field_512:
        if sub_95b659f6[arg1][address(arg2)][arg3].field_1792 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -sub_95b659f6[arg1][address(arg2)][arg3].field_1792
    if (block.number * sub_95b659f6[arg1][address(arg2)][arg3].field_1280) - (sub_95b659f6[arg1][address(arg2)][arg3].field_512 * sub_95b659f6[arg1][address(arg2)][arg3].field_1280) / block.number - sub_95b659f6[arg1][address(arg2)][arg3].field_512 != sub_95b659f6[arg1][address(arg2)][arg3].field_1280:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_95b659f6[arg1][address(arg2)][arg3].field_1792 > (block.number * sub_95b659f6[arg1][address(arg2)][arg3].field_1280) - (sub_95b659f6[arg1][address(arg2)][arg3].field_512 * sub_95b659f6[arg1][address(arg2)][arg3].field_1280):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((block.number * sub_95b659f6[arg1][address(arg2)][arg3].field_1280) - (sub_95b659f6[arg1][address(arg2)][arg3].field_512 * sub_95b659f6[arg1][address(arg2)][arg3].field_1280) - sub_95b659f6[arg1][address(arg2)][arg3].field_1792)
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 > 0
    if arg1 >= 3:
        revert with 0, 'pid error'
    if not arg1:
        if arg2 < sub_29a31a08:
            revert with 0, 'first amount error'
        if not arg2:
            stor12 = 0
        else:
            if arg2 / arg2 != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            stor12 = arg2
        stor11 = 4320 * 24 * 3600
    else:
        if arg1 != 1:
            if arg2 < sub_6b4367cf:
                revert with 0, 'third amount error'
            if not arg2:
                stor12 = 0
            else:
                if 20 * arg2 / arg2 != 20:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                stor12 = 20 * arg2
            stor11 = 17280 * 24 * 3600
        else:
            if arg2 < sub_858fba2c:
                revert with 0, 'second amount error'
            if not arg2:
                stor12 = 0
            else:
                if 6 * arg2 / arg2 != 6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                stor12 = 6 * arg2
            stor11 = 8640 * 24 * 3600
    require secondsPerBlock
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor13 = 0
    if 0 > stor12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    stor9 = stor12
    if not secondsPerBlock:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / secondsPerBlock:
        revert with 0, 'SafeMath: division by zero', 0
    stor8 = stor9 / stor11 / secondsPerBlock
    sub_95b659f6[arg1][address(msg.sender)].field_0++
    address(sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_0) = msg.sender
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_256 = arg2
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_512 = block.number
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_768 = stor12
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_1024 = stor13
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_1280 = stor8
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_1536 = 0
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_1792 = 0
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_2048 = (stor11 / secondsPerBlock) + block.number
    sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_2304 = stor9
    uint8(sub_95b659f6[arg1][address(msg.sender)][sub_95b659f6[arg1][address(msg.sender)].field_0].field_2560) = 0
    emit Deposit(arg2, msg.sender, arg1);
}

function harvest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= 3:
        revert with 0, 'pid error'
    require arg2 < sub_95b659f6[arg1][msg.sender].field_0
    if arg1 >= 3:
        revert with 0, 'pid error'
    require arg2 < sub_95b659f6[arg1][address(msg.sender)].field_0
    if sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 >= stor12:
        sub_95b659f6[arg1][msg.sender][arg2].field_1536 = block.number
        if sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if sub_95b659f6[arg1][msg.sender][arg2].field_1792 > sub_95b659f6[arg1][msg.sender][arg2].field_768:
            revert with 0, 'totalClaimed error'
    else:
        if block.number >= sub_95b659f6[arg1][address(msg.sender)][arg2].field_2048:
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 > sub_95b659f6[arg1][address(msg.sender)][arg2].field_768:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024 > sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792:
                revert with 0, 'SafeMath: subtraction overflow', 0
            sub_95b659f6[arg1][msg.sender][arg2].field_1536 = block.number
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 > sub_95b659f6[arg1][msg.sender][arg2].field_768:
                revert with 0, 'totalClaimed error'
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024:
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                sub_95b659f6[arg1][msg.sender][arg2].field_1792 = sub_95b659f6[arg1][address(msg.sender)][arg2].field_768 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1024 + sub_95b659f6[arg1][msg.sender][arg2].field_1792
        else:
            if sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 > block.number:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.number - sub_95b659f6[arg1][address(msg.sender)][arg2].field_512:
                if sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sub_95b659f6[arg1][msg.sender][arg2].field_1536 = block.number
                if -sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if -sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 > sub_95b659f6[arg1][msg.sender][arg2].field_768:
                    revert with 0, 'totalClaimed error'
                if -sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if -sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_95b659f6[arg1][msg.sender][arg2].field_1792 -= sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792
            else:
                if (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) / block.number - sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 != sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 > (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                sub_95b659f6[arg1][msg.sender][arg2].field_1536 = block.number
                if (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 > sub_95b659f6[arg1][msg.sender][arg2].field_768:
                    revert with 0, 'totalClaimed error'
                if (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792:
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792 < sub_95b659f6[arg1][msg.sender][arg2].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_95b659f6[arg1][msg.sender][arg2].field_1792 = (block.number * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - (sub_95b659f6[arg1][address(msg.sender)][arg2].field_512 * sub_95b659f6[arg1][address(msg.sender)][arg2].field_1280) - sub_95b659f6[arg1][address(msg.sender)][arg2].field_1792 + sub_95b659f6[arg1][msg.sender][arg2].field_1792
}



}
