contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stakedAmount;
address stakeTokenAddress;
address stor5;
uint256 stor6;
uint256 sub_76bf0884;
uint256 poolDuration;
uint256 sub_05fa32fd;
uint256 stor10;
address stor11;

function sub_05fa32fd(?) payable {
    return sub_05fa32fd
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function getUserAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[address(arg1)].field_0
}

function getStakeToken() payable {
    return stakeTokenAddress
}

function sub_76bf0884(?) payable {
    return sub_76bf0884
}

function owner() payable {
    return owner
}

function getStakedAmount() payable {
    return stakedAmount
}

function getPoolDuration() payable {
    return poolDuration
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

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_76bf0884 = arg1
}

function setBonusMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function setPoolDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolDuration = arg1
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

function EmergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor5 != stakeTokenAddress:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < stakedAmount:
            revert with 'NH{q', 17
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0] - stakedAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(owner, arg1);
        stor11 = arg4
        stakeTokenAddress = arg2
        stor5 = arg3
        sub_76bf0884 = arg5
        stor6 = 31709791983
        poolDuration = 1080 * 24 * 3600
        sub_05fa32fd = 40000000 * 10^18
        stor10 = 120
    else:
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        owner = arg1
        emit OwnershipTransferred(owner, arg1);
        stor11 = arg4
        stakeTokenAddress = arg2
        stor5 = arg3
        sub_76bf0884 = arg5
        stor6 = 31709791983
        poolDuration = 1080 * 24 * 3600
        sub_05fa32fd = 40000000 * 10^18
        stor10 = 120
        Mask(248, 0, stor0.field_8) = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(msg.sender)].field_0 > 0:
        if sub_76bf0884 <= block.timestamp:
            if block.timestamp >= sub_76bf0884 + poolDuration:
                if sub_76bf0884 + poolDuration < userInfo[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if userInfo[address(msg.sender)].field_0 and sub_76bf0884 + poolDuration - userInfo[address(msg.sender)].field_256 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if (sub_76bf0884 * userInfo[address(msg.sender)].field_0) + (poolDuration * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) and stor6 > -1 / (sub_76bf0884 * userInfo[address(msg.sender)].field_0) + (poolDuration * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if (sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 > 0:
                    if userInfo[address(msg.sender)].field_768 > -((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) - 1:
                        revert with 'NH{q', 17
                    userInfo[address(msg.sender)].field_768 += (sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18
            else:
                if block.timestamp < userInfo[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if userInfo[address(msg.sender)].field_0 and block.timestamp - userInfo[address(msg.sender)].field_256 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if (block.timestamp * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) and stor6 > -1 / (block.timestamp * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if (block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 > 0:
                    if userInfo[address(msg.sender)].field_768 > -((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) - 1:
                        revert with 'NH{q', 17
                    userInfo[address(msg.sender)].field_768 += (block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18
    userInfo[address(msg.sender)].field_256 = block.timestamp
    if arg1 > 0:
        if stakedAmount > -arg1 - 1:
            revert with 'NH{q', 17
        if stakedAmount + arg1 > sub_05fa32fd:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: Max staking limit has been reached.'
        if sub_76bf0884 > -poolDuration - 1:
            revert with 'NH{q', 17
        if sub_76bf0884 + poolDuration < block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: Staking has already ended.'
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 += arg1
        if stakedAmount > -arg1 - 1:
            revert with 'NH{q', 17
        stakedAmount += arg1
        if userInfo[address(msg.sender)].field_512 > -2:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_512++
        userInfo[address(msg.sender)].field_1024++
        stor[(2 * userInfo[address(msg.sender)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 1)))].field_0 = userInfo[address(msg.sender)].field_0
        stor[(2 * userInfo[address(msg.sender)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 1)))].field_256 = block.timestamp
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor11)
    staticcall stor11.isMember(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = userInfo[address(arg1)].field_0
    mem[ceil32(return_data.size) + 128] = userInfo[address(arg1)].field_256
    mem[ceil32(return_data.size) + 160] = userInfo[address(arg1)].field_512
    mem[ceil32(return_data.size) + 192] = userInfo[address(arg1)].field_768
    mem[64] = ceil32(return_data.size) + (32 * userInfo[address(arg1)].field_1024) + 288
    mem[ceil32(return_data.size) + 256] = userInfo[address(arg1)].field_1024
    s = ceil32(return_data.size) + 288
    idx = 0
    while idx < userInfo[address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), 1) + 4
        _26 = mem[64]
        mem[64] = mem[64] + 64
        mem[_26] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userInfo', 1)))].field_0
        mem[_26 + 32] = stor[(2 * idx) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userInfo', 1)))].field_256
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 224] = ceil32(return_data.size) + 256
    if sub_76bf0884 > block.timestamp:
        return 0
    if block.timestamp >= sub_76bf0884 + poolDuration:
        if sub_76bf0884 + poolDuration < mem[ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] and sub_76bf0884 + poolDuration - mem[ceil32(return_data.size) + 128] > -1 / mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 17
        if (sub_76bf0884 * mem[ceil32(return_data.size) + 96]) + (poolDuration * mem[ceil32(return_data.size) + 96]) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96]) and stor6 > -1 / (sub_76bf0884 * mem[ceil32(return_data.size) + 96]) + (poolDuration * mem[ceil32(return_data.size) + 96]) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96]):
            revert with 'NH{q', 17
        if (sub_76bf0884 * mem[ceil32(return_data.size) + 96] * stor6) + (poolDuration * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18 > -mem[ceil32(return_data.size) + 192] - 1:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            mem[mem[64]] = ((sub_76bf0884 * mem[ceil32(return_data.size) + 96] * stor6) + (poolDuration * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192]
        else:
            if ((sub_76bf0884 * mem[ceil32(return_data.size) + 96] * stor6) + (poolDuration * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192] and stor10 > -1 / ((sub_76bf0884 * mem[ceil32(return_data.size) + 96] * stor6) + (poolDuration * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 17
            mem[mem[64]] = ((sub_76bf0884 * mem[ceil32(return_data.size) + 96] * stor6) + (poolDuration * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18 * stor10) + (mem[ceil32(return_data.size) + 192] * stor10) / 100
    else:
        if block.timestamp < mem[ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] and block.timestamp - mem[ceil32(return_data.size) + 128] > -1 / mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 17
        if (block.timestamp * mem[ceil32(return_data.size) + 96]) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96]) and stor6 > -1 / (block.timestamp * mem[ceil32(return_data.size) + 96]) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96]):
            revert with 'NH{q', 17
        if (block.timestamp * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18 > -mem[ceil32(return_data.size) + 192] - 1:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            mem[mem[64]] = ((block.timestamp * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192]
        else:
            if ((block.timestamp * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192] and stor10 > -1 / ((block.timestamp * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18) + mem[ceil32(return_data.size) + 192]:
                revert with 'NH{q', 17
            mem[mem[64]] = ((block.timestamp * mem[ceil32(return_data.size) + 96] * stor6) - (mem[ceil32(return_data.size) + 128] * mem[ceil32(return_data.size) + 96] * stor6) / 10^18 * stor10) + (mem[ceil32(return_data.size) + 192] * stor10) / 100
    return memory
      from mem[64]
       len 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_76bf0884 > -poolDuration - 1:
        revert with 'NH{q', 17
    if sub_76bf0884 + poolDuration > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking: StakingPool has not expired yet..'
    require ext_code.size(stor11)
    staticcall stor11.isMember(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[address(msg.sender)].field_0 > 0:
        if sub_76bf0884 <= block.timestamp:
            if block.timestamp >= sub_76bf0884 + poolDuration:
                if sub_76bf0884 + poolDuration < userInfo[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if userInfo[address(msg.sender)].field_0 and sub_76bf0884 + poolDuration - userInfo[address(msg.sender)].field_256 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if (sub_76bf0884 * userInfo[address(msg.sender)].field_0) + (poolDuration * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) and stor6 > -1 / (sub_76bf0884 * userInfo[address(msg.sender)].field_0) + (poolDuration * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if (sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 > -userInfo[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if ((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768 > 0:
                    if not ext_call.return_data[0]:
                        userInfo[address(msg.sender)].field_768 = 0
                        require ext_code.size(stor5)
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768
                    else:
                        if ((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768 and stor10 > -1 / ((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768:
                            revert with 'NH{q', 17
                        userInfo[address(msg.sender)].field_768 = 0
                        require ext_code.size(stor5)
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((sub_76bf0884 * userInfo[address(msg.sender)].field_0 * stor6) + (poolDuration * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 * stor10) + (userInfo[address(msg.sender)].field_768 * stor10) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if block.timestamp < userInfo[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if userInfo[address(msg.sender)].field_0 and block.timestamp - userInfo[address(msg.sender)].field_256 > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if (block.timestamp * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) and stor6 > -1 / (block.timestamp * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if (block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 > -userInfo[address(msg.sender)].field_768 - 1:
                    revert with 'NH{q', 17
                if ((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768 > 0:
                    if not ext_call.return_data[0]:
                        userInfo[address(msg.sender)].field_768 = 0
                        require ext_code.size(stor5)
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768
                    else:
                        if ((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768 and stor10 > -1 / ((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18) + userInfo[address(msg.sender)].field_768:
                            revert with 'NH{q', 17
                        userInfo[address(msg.sender)].field_768 = 0
                        require ext_code.size(stor5)
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((block.timestamp * userInfo[address(msg.sender)].field_0 * stor6) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0 * stor6) / 10^18 * stor10) + (userInfo[address(msg.sender)].field_768 * stor10) / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    userInfo[address(msg.sender)].field_256 = block.timestamp
    if arg1 > 0:
        if userInfo[address(msg.sender)].field_0 < arg1:
            revert with 0, 'Staking: Cannot unstake more than staked amount.'
        require ext_code.size(stakeTokenAddress)
        call stakeTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[address(msg.sender)].field_0 < arg1:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 -= arg1
        if stakedAmount < arg1:
            revert with 'NH{q', 17
        stakedAmount -= arg1
        if userInfo[address(msg.sender)].field_512 > -2:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_512++
        userInfo[address(msg.sender)].field_1024++
        stor[(2 * userInfo[address(msg.sender)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 1)))].field_0 = userInfo[address(msg.sender)].field_0
        stor[(2 * userInfo[address(msg.sender)].field_1024) + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'userInfo', 1)))].field_256 = block.timestamp
}



}
