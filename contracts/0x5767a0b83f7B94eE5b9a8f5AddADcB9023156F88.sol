contract main {




// =====================  Runtime code  =====================


#
#  - sub_18c7ea33(?)
#  - depositToMining(uint256 arg1)
#  - sub_44ecb442(?)
#  - sub_6ee5785e(?)
#  - sub_7a558180(?)
#  - sub_a4dfe5d1(?)
#  - depositToMiningBySTokenTransfer(address arg1, uint256 arg2)
#  - depositRewardFromForToday(uint256 arg1)
#  - sub_c7fa6081(?)
#  - sub_ca5b4b60(?)
#  - depositRewardFromForYesterday(uint256 arg1)
#  - sub_d8cf2bec(?)
#  - sub_def998ac(?)
#  - withdrawLatestSToken(uint256 arg1)
#  - depositRewardFromForTime(address arg1, uint256 arg2, uint256 arg3)
#  - withdrawAllSToken()
#
uint8 stor0; offset 160
address owner;
array of address sub_2b5a6b32;
address sub_bc699499Address;
address _rewardTokenAddress;
uint256 sub_622d5405;
address _devaddr;
uint256 sub_ebb4b65f;
uint256 sub_f6d0a69a;
uint256 sub_42b2d9fe;
array of struct sub_343e7302;
array of struct stor12;
mapping of uint256 stor13;
uint256 sub_f4125998;
mapping of uint256 stor15;
array of uint256 stor16;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function totalRewardInPool() payable {
    return sub_42b2d9fe
}

function sub_2b5a6b32(?) payable {
    return uint256(sub_2b5a6b32[0 len sub_2b5a6b32.length])
}

function totalUserMining() payable {
    return stor12.length
}

function sub_343e7302(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_343e7302.length
    return sub_343e7302[arg1].field_0
}

function sub_36ce2f8e(?) payable {
    return sub_42b2d9fe
}

function sub_42b2d9fe(?) payable {
    return sub_42b2d9fe
}

function paused() payable {
    return bool(stor0)
}

function sub_622d5405(?) payable {
    return sub_622d5405
}

function _userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _userInfo[arg1].field_0, 
           _userInfo[arg1].field_256,
           _userInfo[arg1].field_512,
           _userInfo[arg1].field_768,
           _userInfo[arg1].field_1024,
           _userInfo[arg1].field_1280
}

function _devaddr() payable {
    return _devaddr
}

function sub_80b5f387(?) payable {
    return stor12.length
}

function owner() payable {
    return owner
}

function _rewardToken() payable {
    return _rewardTokenAddress
}

function sub_bc699499(?) payable {
    return sub_bc699499Address
}

function sub_d8704fc9(?) payable {
    require calldata.size - 4 >= 32
    return sub_d8704fc9[arg1].field_0, 
           sub_d8704fc9[arg1].field_256,
           sub_d8704fc9[arg1].field_512,
           sub_d8704fc9[arg1].field_768,
           sub_d8704fc9[arg1].field_1024,
           sub_d8704fc9[arg1].field_1280
}

function sub_e465ea31(?) payable {
    return sub_f6d0a69a
}

function sub_ebb4b65f(?) payable {
    return sub_ebb4b65f
}

function sub_f4125998(?) payable {
    return sub_f4125998
}

function sub_f6d0a69a(?) payable {
    return sub_f6d0a69a
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5f4b12a9(?) payable {
    if not sub_343e7302.length:
        return 0
    require sub_343e7302.length - 1 < sub_343e7302.length
    return sub_343e7302[sub_343e7302.length].field_0
}

function ownerPause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function changeRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _rewardTokenAddress = arg1
}

function ownerUnpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_d8de12d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bc699499Address = address(arg1)
}

function changeBaseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'base time should >0'
    sub_622d5405 = arg1
}

function changeMiniStakePeriodInSeconds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'mining period should >0'
    sub_ebb4b65f = arg1
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

function sub_aad5ed3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_768
}

function sub_0436a840(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_1024
}

function sub_fab6cd87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_1280
}

function totalMinedRewardFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_768
}

function totalRewardInPoolFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_1024
}

function totalClaimedRewardFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _userInfo[address(arg1)].field_1792:
        idx = 576
        s = 0
        while (32 * _userInfo[address(arg1)].field_1792) + 544 > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return _userInfo[address(arg1)].field_1280
}

function sub_fb5f399f(?) payable {
    if sub_343e7302.length:
        mem[128] = uint256(sub_343e7302.field_0)
        idx = 128
        s = 0
        while (32 * sub_343e7302.length) + 96 > idx:
            mem[idx + 32] = sub_343e7302[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_343e7302.length, data=mem[128 len 32 * sub_343e7302.length])
    mem[(32 * sub_343e7302.length) + 128] = 32
    mem[(32 * sub_343e7302.length) + 160] = sub_343e7302.length
    mem[(32 * sub_343e7302.length) + 192 len 32 * sub_343e7302.length] = mem[128 len 32 * sub_343e7302.length]
    return memory
      from (32 * sub_343e7302.length) + 128
       len (96 * sub_343e7302.length) + 64
}

function sub_0c941762(?) payable {
    require stor12.length <= test266151307()
    mem[96] = stor12.length
    mem[64] = (32 * stor12.length) + 128
    if stor12.length:
        mem[128 len 32 * stor12.length] = call.data[calldata.size len 32 * stor12.length]
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        require idx < stor12.length
        mem[(32 * idx) + 128] = stor12[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor12.length) + 128] = 32
    mem[(32 * stor12.length) + 160] = stor12.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor12.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor12.length) + -mem[64] + 192
}

function sub_4b9b81e6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(_rewardTokenAddress)
    staticcall _rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'withdraw amount exceeds the reward balance'
    require ext_code.size(_rewardTokenAddress)
    call _rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_710d76ea(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_bc699499Address)
    staticcall sub_bc699499Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'withdraw amount exceeds the reward balance'
    require ext_code.size(sub_bc699499Address)
    call sub_bc699499Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fff0a605(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    if sub_622d5405 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not arg2 - sub_622d5405 % sub_ebb4b65f:
        return _userInfo[address(arg1)][6][arg2].field_0, 
               _userInfo[address(arg1)][6][arg2].field_256,
               _userInfo[address(arg1)][6][arg2].field_512,
               _userInfo[address(arg1)][6][arg2].field_768,
               _userInfo[address(arg1)][6][arg2].field_1024
    if sub_ebb4b65f + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_0, 
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_256,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_512,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_768,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_1024
}

function stakeRecord(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    if sub_622d5405 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not arg2 - sub_622d5405 % sub_ebb4b65f:
        return _userInfo[address(arg1)][6][arg2].field_0, 
               _userInfo[address(arg1)][6][arg2].field_256,
               _userInfo[address(arg1)][6][arg2].field_512,
               _userInfo[address(arg1)][6][arg2].field_768,
               _userInfo[address(arg1)][6][arg2].field_1024
    if sub_ebb4b65f + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_0, 
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_256,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_512,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_768,
           _userInfo[address(arg1)][6][stor6 + arg2 - (arg2 - stor4 % stor6)].field_1024
}

function sub_26165e93(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    if sub_622d5405 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not arg1 - sub_622d5405 % sub_ebb4b65f:
        if sub_d8704fc9[arg1].field_1536:
            idx = 704
            s = 0
            while (32 * sub_d8704fc9[arg1].field_1536) + 672 > idx:
                mem[idx + 32] = sub_d8704fc9[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
        return sub_d8704fc9[arg1].field_0, sub_d8704fc9[arg1].field_256, sub_d8704fc9[arg1].field_512
    if sub_ebb4b65f + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_1536:
        idx = 768
        s = 0
        while (32 * sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_1536) + 736 > idx:
            mem[idx + 32] = sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_0, 
           sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_256,
           sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_512
}

function miningRewardIn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    if sub_622d5405 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not arg1 - sub_622d5405 % sub_ebb4b65f:
        if sub_d8704fc9[arg1].field_1536:
            idx = 704
            s = 0
            while (32 * sub_d8704fc9[arg1].field_1536) + 672 > idx:
                mem[idx + 32] = sub_d8704fc9[arg1][s + 6].field_256
                idx = idx + 32
                s = s + 1
                continue 
        return sub_d8704fc9[arg1].field_0, sub_d8704fc9[arg1].field_256, sub_d8704fc9[arg1].field_512
    if sub_ebb4b65f + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_1536:
        idx = 768
        s = 0
        while (32 * sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_1536) + 736 > idx:
            mem[idx + 32] = sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_0, 
           sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_256,
           sub_d8704fc9[stor6 + arg1 - (arg1 - stor4 % stor6)].field_512
}

function sub_87614f62(?) payable {
    require calldata.size - 4 >= 32
    if not sub_d8704fc9[arg1].field_1536:
        mem[(32 * sub_d8704fc9[arg1].field_1536) + 576] = 32
        idx = 0
        s = 576
        t = (32 * sub_d8704fc9[arg1].field_1536) + 864
        while idx < sub_d8704fc9[arg1].field_1536:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, sub_d8704fc9[arg1].field_0, 
               sub_d8704fc9[arg1].field_256,
               sub_d8704fc9[arg1].field_512,
               sub_d8704fc9[arg1].field_768,
               sub_d8704fc9[arg1].field_1024,
               sub_d8704fc9[arg1].field_1280,
               224,
               sub_d8704fc9[arg1].field_1536,
               mem[(32 * sub_d8704fc9[arg1].field_1536) + 864 len 32 * sub_d8704fc9[arg1].field_1536]
    mem[576] = sub_d8704fc9[arg1][6].field_0
    idx = 576
    s = 0
    while (32 * sub_d8704fc9[arg1].field_1536) + 544 > idx:
        mem[idx + 32] = sub_d8704fc9[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 576] = 32
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 608] = sub_d8704fc9[arg1].field_0
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 640] = sub_d8704fc9[arg1].field_256
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 672] = sub_d8704fc9[arg1].field_512
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 704] = sub_d8704fc9[arg1].field_768
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 736] = sub_d8704fc9[arg1].field_1024
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 768] = sub_d8704fc9[arg1].field_1280
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 800] = 224
    mem[(32 * sub_d8704fc9[arg1].field_1536) + 832] = sub_d8704fc9[arg1].field_1536
    idx = 0
    s = 576
    t = (32 * sub_d8704fc9[arg1].field_1536) + 864
    while idx < sub_d8704fc9[arg1].field_1536:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_d8704fc9[arg1].field_1536) + 576
       len (96 * sub_d8704fc9[arg1].field_1536) + 288
}

function totalStaked() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        _13 = mem[64]
        mem[64] = mem[64] + 224
        mem[_13] = 0
        mem[_13 + 32] = 0
        mem[_13 + 64] = 0
        mem[_13 + 96] = 0
        mem[_13 + 128] = 0
        mem[_13 + 160] = 0
        mem[_13 + 192] = 96
        mem[0] = stor12[idx].field_0
        mem[32] = 9
        _15 = mem[64]
        mem[64] = mem[64] + 224
        mem[_15] = _userInfo[stor12[idx].field_0].field_0
        mem[_15 + 32] = _userInfo[stor12[idx].field_0].field_256
        mem[_15 + 64] = _userInfo[stor12[idx].field_0].field_512
        mem[_15 + 96] = _userInfo[stor12[idx].field_0].field_768
        mem[_15 + 128] = _userInfo[stor12[idx].field_0].field_1024
        mem[_15 + 160] = _userInfo[stor12[idx].field_0].field_1280
        _16 = mem[64]
        mem[64] = mem[64] + (32 * _userInfo[stor12[idx].field_0].field_1792) + 32
        mem[_16] = _userInfo[stor12[idx].field_0].field_1792
        if not _userInfo[stor12[idx].field_0].field_1792:
            mem[_15 + 192] = _16
            if _userInfo[stor12[idx].field_0].field_0 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = _userInfo[stor12[idx].field_0].field_0 + s
            continue 
        mem[0] = sha3(stor12[idx].field_0, 9) + 7
        mem[_16 + 32] = _userInfo[stor12[idx].field_0][7].field_0
        t = _16 + 32
        u = sha3(sha3(stor12[idx].field_0, 9) + 7)
        while _16 + (32 * _userInfo[stor12[idx].field_0].field_1792) > t:
            mem[t + 32] = uint256(sub_2b5a6b32[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_15 + 192] = _16
        if mem[_15] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_15] + s
        continue 
    idx = 0
    t = 0
    while idx < stor12.length:
        mem[0] = 12
        _39 = mem[64]
        mem[64] = mem[64] + 224
        mem[_39] = 0
        mem[_39 + 32] = 0
        mem[_39 + 64] = 0
        mem[_39 + 96] = 0
        mem[_39 + 128] = 0
        mem[_39 + 160] = 0
        mem[_39 + 192] = 96
        mem[0] = stor12[idx].field_0
        mem[32] = 9
        _41 = mem[64]
        mem[64] = mem[64] + 224
        mem[_41] = _userInfo[stor12[idx].field_0].field_0
        mem[_41 + 32] = _userInfo[stor12[idx].field_0].field_256
        mem[_41 + 64] = _userInfo[stor12[idx].field_0].field_512
        mem[_41 + 96] = _userInfo[stor12[idx].field_0].field_768
        mem[_41 + 128] = _userInfo[stor12[idx].field_0].field_1024
        mem[_41 + 160] = _userInfo[stor12[idx].field_0].field_1280
        _42 = mem[64]
        mem[64] = mem[64] + (32 * _userInfo[stor12[idx].field_0].field_1792) + 32
        mem[_42] = _userInfo[stor12[idx].field_0].field_1792
        if not _userInfo[stor12[idx].field_0].field_1792:
            mem[_41 + 192] = _42
            if _userInfo[stor12[idx].field_0].field_256 + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = _userInfo[stor12[idx].field_0].field_256 + t
            continue 
        mem[0] = sha3(stor12[idx].field_0, 9) + 7
        mem[_42 + 32] = _userInfo[stor12[idx].field_0][7].field_0
        s = _42 + 32
        u = sha3(sha3(stor12[idx].field_0, 9) + 7)
        while _42 + (32 * _userInfo[stor12[idx].field_0].field_1792) > s:
            mem[s + 32] = uint256(sub_2b5a6b32[u])
            s = s + 32
            u = u + 1
            continue 
        mem[_41 + 192] = _42
        if mem[_41 + 32] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = mem[_41 + 32] + t
        continue 
    if s + t < t:
        revert with 0, 'SafeMath: addition overflow'
    return (s + t)
}

function sub_0653bfa6(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        _13 = mem[64]
        mem[64] = mem[64] + 224
        mem[_13] = 0
        mem[_13 + 32] = 0
        mem[_13 + 64] = 0
        mem[_13 + 96] = 0
        mem[_13 + 128] = 0
        mem[_13 + 160] = 0
        mem[_13 + 192] = 96
        mem[0] = stor12[idx].field_0
        mem[32] = 9
        _15 = mem[64]
        mem[64] = mem[64] + 224
        mem[_15] = _userInfo[stor12[idx].field_0].field_0
        mem[_15 + 32] = _userInfo[stor12[idx].field_0].field_256
        mem[_15 + 64] = _userInfo[stor12[idx].field_0].field_512
        mem[_15 + 96] = _userInfo[stor12[idx].field_0].field_768
        mem[_15 + 128] = _userInfo[stor12[idx].field_0].field_1024
        mem[_15 + 160] = _userInfo[stor12[idx].field_0].field_1280
        _16 = mem[64]
        mem[64] = mem[64] + (32 * _userInfo[stor12[idx].field_0].field_1792) + 32
        mem[_16] = _userInfo[stor12[idx].field_0].field_1792
        if not _userInfo[stor12[idx].field_0].field_1792:
            mem[_15 + 192] = _16
            if _userInfo[stor12[idx].field_0].field_0 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = _userInfo[stor12[idx].field_0].field_0 + s
            continue 
        mem[0] = sha3(stor12[idx].field_0, 9) + 7
        mem[_16 + 32] = _userInfo[stor12[idx].field_0][7].field_0
        t = _16 + 32
        u = sha3(sha3(stor12[idx].field_0, 9) + 7)
        while _16 + (32 * _userInfo[stor12[idx].field_0].field_1792) > t:
            mem[t + 32] = uint256(sub_2b5a6b32[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_15 + 192] = _16
        if mem[_15] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_15] + s
        continue 
    idx = 0
    t = 0
    while idx < stor12.length:
        mem[0] = 12
        _39 = mem[64]
        mem[64] = mem[64] + 224
        mem[_39] = 0
        mem[_39 + 32] = 0
        mem[_39 + 64] = 0
        mem[_39 + 96] = 0
        mem[_39 + 128] = 0
        mem[_39 + 160] = 0
        mem[_39 + 192] = 96
        mem[0] = stor12[idx].field_0
        mem[32] = 9
        _41 = mem[64]
        mem[64] = mem[64] + 224
        mem[_41] = _userInfo[stor12[idx].field_0].field_0
        mem[_41 + 32] = _userInfo[stor12[idx].field_0].field_256
        mem[_41 + 64] = _userInfo[stor12[idx].field_0].field_512
        mem[_41 + 96] = _userInfo[stor12[idx].field_0].field_768
        mem[_41 + 128] = _userInfo[stor12[idx].field_0].field_1024
        mem[_41 + 160] = _userInfo[stor12[idx].field_0].field_1280
        _42 = mem[64]
        mem[64] = mem[64] + (32 * _userInfo[stor12[idx].field_0].field_1792) + 32
        mem[_42] = _userInfo[stor12[idx].field_0].field_1792
        if not _userInfo[stor12[idx].field_0].field_1792:
            mem[_41 + 192] = _42
            if _userInfo[stor12[idx].field_0].field_256 + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = _userInfo[stor12[idx].field_0].field_256 + t
            continue 
        mem[0] = sha3(stor12[idx].field_0, 9) + 7
        mem[_42 + 32] = _userInfo[stor12[idx].field_0][7].field_0
        s = _42 + 32
        u = sha3(sha3(stor12[idx].field_0, 9) + 7)
        while _42 + (32 * _userInfo[stor12[idx].field_0].field_1792) > s:
            mem[s + 32] = uint256(sub_2b5a6b32[u])
            s = s + 32
            u = u + 1
            continue 
        mem[_41 + 192] = _42
        if mem[_41 + 32] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = mem[_41 + 32] + t
        continue 
    if s + t < t:
        revert with 0, 'SafeMath: addition overflow'
    return (s + t)
}

function sub_a37d9850(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 96
    mem[0] = address(arg1)
    mem[32] = 9
    require _userInfo[address(arg1)].field_1792 <= test266151307()
    mem[320] = _userInfo[address(arg1)].field_1792
    mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 352
    if not _userInfo[address(arg1)].field_1792:
        idx = 0
        while idx < _userInfo[address(arg1)].field_1792:
            _89 = mem[64]
            mem[64] = mem[64] + 160
            mem[_89] = 0
            mem[_89 + 32] = 0
            mem[_89 + 64] = 0
            mem[_89 + 96] = 0
            mem[_89 + 128] = 0
            mem[0] = _userInfo[address(arg1)][idx + 7].field_0
            mem[32] = sha3(address(arg1), 9) + 6
            _100 = mem[64]
            mem[64] = mem[64] + 160
            mem[_100] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
            mem[_100 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
            mem[_100 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
            mem[_100 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
            mem[_100 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
            require idx < mem[320]
            mem[mem[(32 * idx) + 352]] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
            require idx < mem[320]
            mem[mem[(32 * idx) + 352] + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
            require idx < mem[320]
            mem[mem[(32 * idx) + 352] + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
            require idx < mem[320]
            mem[mem[(32 * idx) + 352] + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
            require idx < mem[320]
            mem[mem[(32 * idx) + 352] + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
            idx = idx + 1
            continue 
        _85 = mem[64]
        mem[64] = mem[64] + 224
        mem[_85] = _userInfo[address(arg1)].field_0
        mem[_85 + 32] = _userInfo[address(arg1)].field_256
        mem[_85 + 64] = _userInfo[address(arg1)].field_512
        mem[_85 + 96] = _userInfo[address(arg1)].field_768
        mem[_85 + 128] = _userInfo[address(arg1)].field_1024
        mem[_85 + 160] = 320
        _86 = mem[64]
        mem[64] = mem[64] + (32 * _userInfo[address(arg1)].field_1792) + 32
        mem[_86] = _userInfo[address(arg1)].field_1792
        if not _userInfo[address(arg1)].field_1792:
            mem[_85 + 192] = _86
            _90 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _userInfo[address(arg1)].field_0
            mem[mem[64] + 64] = _userInfo[address(arg1)].field_256
            mem[mem[64] + 96] = _userInfo[address(arg1)].field_512
            mem[mem[64] + 128] = _userInfo[address(arg1)].field_768
            mem[mem[64] + 160] = _userInfo[address(arg1)].field_1024
            mem[mem[64] + 192] = 224
            _97 = mem[320]
            mem[mem[64] + 256] = mem[320]
            s = mem[64] + 288
            idx = 0
            t = 352
            while idx < _97:
                _168 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_168 + 32]
                mem[s + 64] = mem[_168 + 64]
                mem[s + 96] = mem[_168 + 96]
                mem[s + 128] = mem[_168 + 128]
                s = s + 160
                idx = idx + 1
                t = t + 32
                continue 
            _167 = mem[_85 + 192]
            mem[_90 + 224] = (160 * _97) + 256
            _174 = mem[_167]
            mem[_90 + (160 * _97) + 288] = mem[_167]
            mem[_90 + (160 * _97) + 320 len 32 * _174] = mem[_167 + 32 len 32 * _174]
            var25002 = _167 + (32 * _174) + 32
            var25007 = _90 + (160 * _97) + (32 * _174) + 320
            return memory
              from mem[64]
               len _90 + (160 * _97) + (32 * _174) + -mem[64] + 320
        mem[0] = sha3(address(arg1), 9) + 7
        mem[_86 + 32] = _userInfo[address(arg1)][7].field_0
        idx = _86 + 32
        s = 0
        while _86 + (32 * _userInfo[address(arg1)].field_1792) > idx:
            mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[_85 + 192] = _86
        _218 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_85]
        mem[mem[64] + 64] = mem[_85 + 32]
        mem[mem[64] + 96] = mem[_85 + 64]
        mem[mem[64] + 128] = mem[_85 + 96]
        mem[mem[64] + 160] = mem[_85 + 128]
        _226 = mem[_85 + 160]
        mem[mem[64] + 192] = 224
        _227 = mem[_226]
        mem[mem[64] + 256] = mem[_226]
        s = mem[64] + 288
        idx = 0
        t = _226 + 32
        while idx < _227:
            _278 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_278 + 32]
            mem[s + 64] = mem[_278 + 64]
            mem[s + 96] = mem[_278 + 96]
            mem[s + 128] = mem[_278 + 128]
            s = s + 160
            idx = idx + 1
            t = t + 32
            continue 
        _277 = mem[_85 + 192]
        mem[_218 + 224] = (160 * _227) + 256
        _291 = mem[_277]
        mem[_218 + (160 * _227) + 288] = mem[_277]
        mem[_218 + (160 * _227) + 320 len 32 * _291] = mem[_277 + 32 len 32 * _291]
        return memory
          from mem[64]
           len _218 + (160 * _227) + (32 * _291) + -mem[64] + 320
    mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 512
    mem[(32 * _userInfo[address(arg1)].field_1792) + 352] = 0
    mem[(32 * _userInfo[address(arg1)].field_1792) + 384] = 0
    mem[(32 * _userInfo[address(arg1)].field_1792) + 416] = 0
    mem[(32 * _userInfo[address(arg1)].field_1792) + 448] = 0
    mem[(32 * _userInfo[address(arg1)].field_1792) + 480] = 0
    mem[var16001] = (32 * _userInfo[address(arg1)].field_1792) + 352
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * _userInfo[address(arg1)].field_1792) + 352] = 0
        mem[(32 * _userInfo[address(arg1)].field_1792) + 384] = 0
        mem[(32 * _userInfo[address(arg1)].field_1792) + 416] = 0
        mem[(32 * _userInfo[address(arg1)].field_1792) + 448] = 0
        mem[(32 * _userInfo[address(arg1)].field_1792) + 480] = 0
        mem[s + 32] = (32 * _userInfo[address(arg1)].field_1792) + 352
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _userInfo[address(arg1)].field_1792:
        _229 = mem[64]
        mem[64] = mem[64] + 160
        mem[_229] = 0
        mem[_229 + 32] = 0
        mem[_229 + 64] = 0
        mem[_229 + 96] = 0
        mem[_229 + 128] = 0
        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
        mem[32] = sha3(address(arg1), 9) + 6
        _248 = mem[64]
        mem[64] = mem[64] + 160
        mem[_248] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
        mem[_248 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
        mem[_248 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
        mem[_248 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
        mem[_248 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
        require idx < mem[320]
        mem[mem[(32 * idx) + 352]] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
        require idx < mem[320]
        mem[mem[(32 * idx) + 352] + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
        require idx < mem[320]
        mem[mem[(32 * idx) + 352] + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
        require idx < mem[320]
        mem[mem[(32 * idx) + 352] + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
        require idx < mem[320]
        mem[mem[(32 * idx) + 352] + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
        idx = idx + 1
        continue 
    _219 = mem[64]
    mem[64] = mem[64] + 224
    mem[_219] = _userInfo[address(arg1)].field_0
    mem[_219 + 32] = _userInfo[address(arg1)].field_256
    mem[_219 + 64] = _userInfo[address(arg1)].field_512
    mem[_219 + 96] = _userInfo[address(arg1)].field_768
    mem[_219 + 128] = _userInfo[address(arg1)].field_1024
    mem[_219 + 160] = 320
    _220 = mem[64]
    mem[64] = mem[64] + (32 * _userInfo[address(arg1)].field_1792) + 32
    mem[_220] = _userInfo[address(arg1)].field_1792
    if not _userInfo[address(arg1)].field_1792:
        mem[_219 + 192] = _220
        _231 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _userInfo[address(arg1)].field_0
        mem[mem[64] + 64] = _userInfo[address(arg1)].field_256
        mem[mem[64] + 96] = _userInfo[address(arg1)].field_512
        mem[mem[64] + 128] = _userInfo[address(arg1)].field_768
        mem[mem[64] + 160] = _userInfo[address(arg1)].field_1024
        mem[mem[64] + 192] = 224
        _245 = mem[320]
        mem[mem[64] + 256] = mem[320]
        s = mem[64] + 288
        idx = 0
        t = 352
        while idx < _245:
            _285 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_285 + 32]
            mem[s + 64] = mem[_285 + 64]
            mem[s + 96] = mem[_285 + 96]
            mem[s + 128] = mem[_285 + 128]
            s = s + 160
            idx = idx + 1
            t = t + 32
            continue 
        _284 = mem[_219 + 192]
        mem[_231 + 224] = (160 * _245) + 256
        _292 = mem[_284]
        mem[_231 + (160 * _245) + 288] = mem[_284]
        mem[_231 + (160 * _245) + 320 len 32 * _292] = mem[_284 + 32 len 32 * _292]
        var32002 = _284 + (32 * _292) + 32
        var32007 = _231 + (160 * _245) + (32 * _292) + 320
        return memory
          from mem[64]
           len _231 + (160 * _245) + (32 * _292) + -mem[64] + 320
    mem[0] = sha3(address(arg1), 9) + 7
    mem[_220 + 32] = _userInfo[address(arg1)][7].field_0
    idx = _220 + 32
    s = 0
    while _220 + (32 * _userInfo[address(arg1)].field_1792) > idx:
        mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[_219 + 192] = _220
    _299 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_219]
    mem[mem[64] + 64] = mem[_219 + 32]
    mem[mem[64] + 96] = mem[_219 + 64]
    mem[mem[64] + 128] = mem[_219 + 96]
    mem[mem[64] + 160] = mem[_219 + 128]
    _305 = mem[_219 + 160]
    mem[mem[64] + 192] = 224
    _306 = mem[_305]
    mem[mem[64] + 256] = mem[_305]
    s = mem[64] + 288
    idx = 0
    t = _305 + 32
    while idx < _306:
        _320 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_320 + 32]
        mem[s + 64] = mem[_320 + 64]
        mem[s + 96] = mem[_320 + 96]
        mem[s + 128] = mem[_320 + 128]
        s = s + 160
        idx = idx + 1
        t = t + 32
        continue 
    _319 = mem[_219 + 192]
    mem[_299 + 224] = (160 * _306) + 256
    _326 = mem[_319]
    mem[_299 + (160 * _306) + 288] = mem[_319]
    mem[_299 + (160 * _306) + 320 len 32 * _326] = mem[_319 + 32 len 32 * _326]
    return memory
      from mem[64]
       len _299 + (160 * _306) + (32 * _326) + -mem[64] + 320
}

function sub_2f53f40e(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit number should greater than 0'
    mem[100] = msg.sender
    require ext_code.size(sub_bc699499Address)
    staticcall sub_bc699499Address.0x75d2136b with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'deposit locked amount exceeds locked balance 4'
    mem[ceil32(return_data.size) + 96] = 0x4e15c51b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(sub_bc699499Address)
    call sub_bc699499Address.0x4e15c51b with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _14 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _15 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _15
    require return_data.size >= _14 + (32 * _15) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _15] = mem[ceil32(return_data.size) + _14 + 128 len 32 * _15]
    require uint32(msg.sender), address(this.address) << 64 <= test266151307()
    require ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _522 = mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]
    require mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96] <= test266151307()
    _523 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32 <= test266151307() and mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32
    mem[_523] = _522
    require return_data.size >= uint32(msg.sender), address(this.address) << 64 + (32 * _522) + 32
    mem[_523 + 32 len 32 * _522] = mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 128 len 32 * _522]
    mem[0] = msg.sender
    mem[32] = 16
    idx = 0
    while idx < _15:
        require idx < _15
        require idx < mem[_523]
        _1526 = mem[(32 * idx) + _523 + 32]
        if mem[(32 * idx) + _523 + 32] + stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] < stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[32] = sha3(address(msg.sender), 15)
        stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] += _1526
        if not stor16[address(msg.sender)]:
            stor16[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 16)
            stor16[address(msg.sender)][stor16[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        else:
            require stor16[address(msg.sender)] - 1 < stor16[address(msg.sender)]
            mem[0] = sha3(address(msg.sender), 16)
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] > stor16[address(msg.sender)][stor16[address(msg.sender)]]:
                stor16[address(msg.sender)]++
                mem[0] = sha3(address(msg.sender), 16)
                stor16[address(msg.sender)][stor16[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        idx = idx + 1
        continue 
    if not stor13[address(msg.sender)]:
        stor12.length++
        stor12[stor12.length].field_0 = msg.sender
        stor12[stor12.length].field_160 = 0
        stor13[address(msg.sender)] = stor12.length
    if block.timestamp <= sub_622d5405:
        revert with 0, 'time should larger than all thing stated time'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        if arg1 + _userInfo[address(msg.sender)][6][block.timestamp].field_512 < _userInfo[address(msg.sender)][6][block.timestamp].field_512:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)][6][block.timestamp].field_512 += arg1
        _userInfo[address(msg.sender)][6][block.timestamp].field_0 = block.timestamp
        if arg1 + _userInfo[address(msg.sender)].field_256 < _userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)].field_256 += arg1
        if not _userInfo[address(msg.sender)].field_1792:
            if arg1 + sub_d8704fc9[block.timestamp].field_1280 < sub_d8704fc9[block.timestamp].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[block.timestamp].field_1280 += arg1
            if 0 < block.timestamp:
                sub_d8704fc9[block.timestamp].field_1536++
                stor[sub_d8704fc9[block.timestamp].field_1536 + ('array', 6, ('map', 'timestamp', ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = block.timestamp
        else:
            require _userInfo[address(msg.sender)].field_1792 - 1 < _userInfo[address(msg.sender)].field_1792
            if arg1 + sub_d8704fc9[block.timestamp].field_1280 < sub_d8704fc9[block.timestamp].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[block.timestamp].field_1280 += arg1
            if stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 < block.timestamp:
                sub_d8704fc9[block.timestamp].field_1536++
                stor[sub_d8704fc9[block.timestamp].field_1536 + ('array', 6, ('map', 'timestamp', ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = block.timestamp
        if not sub_343e7302.length:
            if 0 >= block.timestamp:
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = block.timestamp
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
                sub_d8704fc9[block.timestamp].field_1024 = 0
        else:
            require sub_343e7302.length - 1 < sub_343e7302.length
            if sub_343e7302[sub_343e7302.length].field_0 >= block.timestamp:
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = block.timestamp
                if not sub_343e7302[sub_343e7302.length].field_0:
                    if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[block.timestamp].field_768 += arg1
                    sub_d8704fc9[block.timestamp].field_1024 = 0
                else:
                    if arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768 < sub_d8704fc9[stor11[stor11.length].field_0].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[block.timestamp].field_768 = arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768
                    sub_d8704fc9[block.timestamp].field_1024 = sub_d8704fc9[stor11[stor11.length].field_0].field_768
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 + _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512 < _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512 += arg1
        _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        if arg1 + _userInfo[address(msg.sender)].field_256 < _userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)].field_256 += arg1
        if not _userInfo[address(msg.sender)].field_1792:
            if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 += arg1
            if 0 < sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536++
                stor[sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536 + ('array', 6, ('map', ('add', ('stor', ('name', 'stor6', 6)), 'timestamp', ('mul', -1, ('mod', ('add', 'timestamp', ('mul', -1, ('stor', ('name', 'stor4', 4)))), ('stor', ('name', 'stor6', 6))))), ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        else:
            require _userInfo[address(msg.sender)].field_1792 - 1 < _userInfo[address(msg.sender)].field_1792
            if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 += arg1
            if stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 < sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536++
                stor[sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536 + ('array', 6, ('map', ('add', ('stor', ('name', 'stor6', 6)), 'timestamp', ('mul', -1, ('mod', ('add', 'timestamp', ('mul', -1, ('stor', ('name', 'stor4', 4)))), ('stor', ('name', 'stor6', 6))))), ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        if not sub_343e7302.length:
            if 0 >= sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = 0
        else:
            require sub_343e7302.length - 1 < sub_343e7302.length
            if sub_343e7302[sub_343e7302.length].field_0 >= sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if not sub_343e7302[sub_343e7302.length].field_0:
                    if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = 0
                else:
                    if arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768 < sub_d8704fc9[stor11[stor11.length].field_0].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 = arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = sub_d8704fc9[stor11[stor11.length].field_0].field_768
    emit DepositToMining(arg1, msg.sender);
}

function sub_ce94d2f4(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit number should greater than 0'
    mem[100] = msg.sender
    require ext_code.size(sub_bc699499Address)
    staticcall sub_bc699499Address.0x75d2136b with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'deposit locked amount exceeds locked balance 4'
    mem[ceil32(return_data.size) + 96] = 0x4e15c51b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(sub_bc699499Address)
    call sub_bc699499Address.0x4e15c51b with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _14 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _15 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _15
    require return_data.size >= _14 + (32 * _15) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _15] = mem[ceil32(return_data.size) + _14 + 128 len 32 * _15]
    require uint32(msg.sender), address(this.address) << 64 <= test266151307()
    require ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _522 = mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]
    require mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96] <= test266151307()
    _523 = mem[64]
    require mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32 <= test266151307() and mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 96]) + 32
    mem[_523] = _522
    require return_data.size >= uint32(msg.sender), address(this.address) << 64 + (32 * _522) + 32
    mem[_523 + 32 len 32 * _522] = mem[ceil32(return_data.size) + uint32(msg.sender), address(this.address) << 64 + 128 len 32 * _522]
    mem[0] = msg.sender
    mem[32] = 16
    idx = 0
    while idx < _15:
        require idx < _15
        require idx < mem[_523]
        _1526 = mem[(32 * idx) + _523 + 32]
        if mem[(32 * idx) + _523 + 32] + stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] < stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[32] = sha3(address(msg.sender), 15)
        stor15[address(msg.sender)][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] += _1526
        if not stor16[address(msg.sender)]:
            stor16[address(msg.sender)]++
            mem[0] = sha3(address(msg.sender), 16)
            stor16[address(msg.sender)][stor16[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        else:
            require stor16[address(msg.sender)] - 1 < stor16[address(msg.sender)]
            mem[0] = sha3(address(msg.sender), 16)
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] > stor16[address(msg.sender)][stor16[address(msg.sender)]]:
                stor16[address(msg.sender)]++
                mem[0] = sha3(address(msg.sender), 16)
                stor16[address(msg.sender)][stor16[address(msg.sender)]] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        idx = idx + 1
        continue 
    if not stor13[address(msg.sender)]:
        stor12.length++
        stor12[stor12.length].field_0 = msg.sender
        stor12[stor12.length].field_160 = 0
        stor13[address(msg.sender)] = stor12.length
    if block.timestamp <= sub_622d5405:
        revert with 0, 'time should larger than all thing stated time'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        if arg1 + _userInfo[address(msg.sender)][6][block.timestamp].field_512 < _userInfo[address(msg.sender)][6][block.timestamp].field_512:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)][6][block.timestamp].field_512 += arg1
        _userInfo[address(msg.sender)][6][block.timestamp].field_0 = block.timestamp
        if arg1 + _userInfo[address(msg.sender)].field_256 < _userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)].field_256 += arg1
        if not _userInfo[address(msg.sender)].field_1792:
            if arg1 + sub_d8704fc9[block.timestamp].field_1280 < sub_d8704fc9[block.timestamp].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[block.timestamp].field_1280 += arg1
            if 0 < block.timestamp:
                sub_d8704fc9[block.timestamp].field_1536++
                stor[sub_d8704fc9[block.timestamp].field_1536 + ('array', 6, ('map', 'timestamp', ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = block.timestamp
        else:
            require _userInfo[address(msg.sender)].field_1792 - 1 < _userInfo[address(msg.sender)].field_1792
            if arg1 + sub_d8704fc9[block.timestamp].field_1280 < sub_d8704fc9[block.timestamp].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[block.timestamp].field_1280 += arg1
            if stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 < block.timestamp:
                sub_d8704fc9[block.timestamp].field_1536++
                stor[sub_d8704fc9[block.timestamp].field_1536 + ('array', 6, ('map', 'timestamp', ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = block.timestamp
        if not sub_343e7302.length:
            if 0 >= block.timestamp:
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = block.timestamp
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
                sub_d8704fc9[block.timestamp].field_1024 = 0
        else:
            require sub_343e7302.length - 1 < sub_343e7302.length
            if sub_343e7302[sub_343e7302.length].field_0 >= block.timestamp:
                if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[block.timestamp].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = block.timestamp
                if not sub_343e7302[sub_343e7302.length].field_0:
                    if arg1 + sub_d8704fc9[block.timestamp].field_768 < sub_d8704fc9[block.timestamp].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[block.timestamp].field_768 += arg1
                    sub_d8704fc9[block.timestamp].field_1024 = 0
                else:
                    if arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768 < sub_d8704fc9[stor11[stor11.length].field_0].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[block.timestamp].field_768 = arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768
                    sub_d8704fc9[block.timestamp].field_1024 = sub_d8704fc9[stor11[stor11.length].field_0].field_768
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 + _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512 < _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_512 += arg1
        _userInfo[address(msg.sender)][6][stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        if arg1 + _userInfo[address(msg.sender)].field_256 < _userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(msg.sender)].field_256 += arg1
        if not _userInfo[address(msg.sender)].field_1792:
            if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 += arg1
            if 0 < sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536++
                stor[sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536 + ('array', 6, ('map', ('add', ('stor', ('name', 'stor6', 6)), 'timestamp', ('mul', -1, ('mod', ('add', 'timestamp', ('mul', -1, ('stor', ('name', 'stor4', 4)))), ('stor', ('name', 'stor6', 6))))), ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        else:
            require _userInfo[address(msg.sender)].field_1792 - 1 < _userInfo[address(msg.sender)].field_1792
            if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1280 += arg1
            if stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 < sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536++
                stor[sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1536 + ('array', 6, ('map', ('add', ('stor', ('name', 'stor6', 6)), 'timestamp', ('mul', -1, ('mod', ('add', 'timestamp', ('mul', -1, ('stor', ('name', 'stor4', 4)))), ('stor', ('name', 'stor6', 6))))), ('name', 'sub_d8704fc9', 10)))].field_0 = msg.sender
                _userInfo[address(msg.sender)].field_1792++
                stor[('array', 7, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', '_userInfo', 9))) + _userInfo[address(msg.sender)].field_1792].field_0 = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
        if not sub_343e7302.length:
            if 0 >= sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = 0
        else:
            require sub_343e7302.length - 1 < sub_343e7302.length
            if sub_343e7302[sub_343e7302.length].field_0 >= sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
            else:
                sub_343e7302.length++
                stor175B[stor11.length] = sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if not sub_343e7302[sub_343e7302.length].field_0:
                    if arg1 + sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 < sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 += arg1
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = 0
                else:
                    if arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768 < sub_d8704fc9[stor11[stor11.length].field_0].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_768 = arg1 + sub_d8704fc9[stor11[stor11.length].field_0].field_768
                    sub_d8704fc9[stor6 + block.timestamp - (block.timestamp - stor4 % stor6)].field_1024 = sub_d8704fc9[stor11[stor11.length].field_0].field_768
    emit DepositToMining(arg1, msg.sender);
}

function getUncalculateRewardBalanceInPoolBefore(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    if arg2 > _userInfo[address(arg1)].field_512:
        if _userInfo[address(arg1)].field_1792:
            idx = 0
            while idx < _userInfo[address(arg1)].field_1792:
                mem[0] = sha3(address(arg1), 9) + 7
                if _userInfo[address(arg1)][idx + 7].field_0 > arg2:
                    idx = idx + 1
                    continue 
                _61 = mem[64]
                mem[64] = mem[64] + 160
                mem[_61] = 0
                mem[_61 + 32] = 0
                mem[_61 + 64] = 0
                mem[_61 + 96] = 0
                mem[_61 + 128] = 0
                mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                mem[32] = sha3(address(arg1), 9) + 6
                _64 = mem[64]
                mem[64] = mem[64] + 160
                mem[_64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                mem[_64 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                mem[_64 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                mem[_64 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                mem[_64 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                _66 = mem[64]
                mem[64] = mem[64] + 64
                mem[_66] = 29
                mem[_66 + 32] = 'lockedWithdrawed>lockedAmount'
                if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                    _68 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _68 + 68] = mem[idx + _66 + 32]
                        idx = idx + 32
                        continue 
                    mem[_68 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _68 + -mem[64] + 100
                _71 = mem[64]
                mem[64] = mem[64] + 64
                mem[_71] = 17
                mem[_71 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                        s = sub_343e7302.length
                        t = 0
                        while s:
                            require s - 1 < sub_343e7302.length
                            mem[0] = 11
                            if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            if sub_343e7302[s].field_0 > arg2 + sub_ebb4b65f:
                                s = s - 1
                                t = t
                                continue 
                            if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                s = s - 1
                                t = t
                                continue 
                            if sub_343e7302[s].field_0 <= mem[_64]:
                                s = s - 1
                                t = t
                                continue 
                            _123 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_123] = 0
                            mem[_123 + 32] = 0
                            mem[_123 + 64] = 0
                            mem[_123 + 96] = 0
                            mem[_123 + 128] = 0
                            mem[_123 + 160] = 0
                            mem[_123 + 192] = 96
                            mem[0] = sub_343e7302[s].field_0
                            mem[32] = 10
                            _125 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_125] = sub_d8704fc9[stor11[s].field_0].field_0
                            mem[_125 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                            mem[_125 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                            mem[_125 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                            mem[_125 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                            mem[_125 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                            _126 = mem[64]
                            mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                            mem[_126] = sub_d8704fc9[stor11[s].field_0].field_1536
                            if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                mem[_125 + 192] = _126
                                if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not sub_d8704fc9[stor11[s].field_0].field_256:
                                    _134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_134] = 26
                                    mem[_134 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _137 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _137 + 68] = mem[idx + _134 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_137 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _137 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _135 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_135] = 26
                                mem[_135 + 32] = 'SafeMath: division by zero'
                                if sub_d8704fc9[stor11[s].field_0].field_1024:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                    continue 
                                _138 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _138 + 68] = mem[idx + _135 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_138 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _138 + -mem[64] + 100
                            mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                            mem[_126 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                            u = _126 + 32
                            v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                            while _126 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                mem[u + 32] = address(sub_2b5a6b32[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_125 + 192] = _126
                            if mem[_125 + 32] <= 0:
                                s = s - 1
                                t = t
                                continue 
                            if not mem[_125 + 128]:
                                s = s - 1
                                t = t
                                continue 
                            _159 = mem[_125 + 128]
                            _160 = mem[_125 + 32]
                            if not mem[_125 + 32]:
                                _162 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_162] = 26
                                mem[_162 + 32] = 'SafeMath: division by zero'
                                if _159:
                                    if (0 / _159) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = (0 / _159) + t
                                    continue 
                                _165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _165 + 68] = mem[idx + _162 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_165 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _165 + -mem[64] + 100
                            if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_125 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_125 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_125 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_125 + 32]) / mem[_125 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_163] = 26
                            mem[_163 + 32] = 'SafeMath: division by zero'
                            if _159:
                                if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _160) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _160) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _160) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _160) / _159) + t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                s = s - 1
                                t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _160) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _160) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _160) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _160) / _159) + t
                                continue 
                            _166 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _166 + 68] = mem[idx + _163 + 32]
                                idx = idx + 32
                                continue 
                            mem[_166 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _166 + -mem[64] + 100
                        if t < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _73 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                idx = 0
                while idx < 17:
                    mem[idx + _73 + 68] = mem[idx + _71 + 32]
                    idx = idx + 32
                    continue 
                mem[_73 + 85] = 0
                revert with memory
                  from mem[64]
                   len _73 + -mem[64] + 100
            return 0
        else:
            return 0
    else:
        return 0
}

function updateAlreadyMinedReward(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 9
    if arg2 > _userInfo[address(arg1)].field_512:
        if _userInfo[address(arg1)].field_1792:
            idx = 0
            while idx < _userInfo[address(arg1)].field_1792:
                mem[0] = sha3(address(arg1), 9) + 7
                if _userInfo[address(arg1)][idx + 7].field_0 > arg2:
                    idx = idx + 1
                    continue 
                _70 = mem[64]
                mem[64] = mem[64] + 160
                mem[_70] = 0
                mem[_70 + 32] = 0
                mem[_70 + 64] = 0
                mem[_70 + 96] = 0
                mem[_70 + 128] = 0
                mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                mem[32] = sha3(address(arg1), 9) + 6
                _73 = mem[64]
                mem[64] = mem[64] + 160
                mem[_73] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                mem[_73 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                mem[_73 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                mem[_73 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                mem[_73 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                _76 = mem[64]
                mem[64] = mem[64] + 64
                mem[_76] = 29
                mem[_76 + 32] = 'lockedWithdrawed>lockedAmount'
                if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                    _79 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 29
                    idx = 0
                    while idx < 29:
                        mem[idx + _79 + 68] = mem[idx + _76 + 32]
                        idx = idx + 32
                        continue 
                    mem[_79 + 97] = 0
                    revert with memory
                      from mem[64]
                       len _79 + -mem[64] + 100
                _83 = mem[64]
                mem[64] = mem[64] + 64
                mem[_83] = 17
                mem[_83 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                        s = sub_343e7302.length
                        t = 0
                        while s:
                            require s - 1 < sub_343e7302.length
                            mem[0] = 11
                            if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            if sub_343e7302[s].field_0 > arg2 + sub_ebb4b65f:
                                s = s - 1
                                t = t
                                continue 
                            if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                s = s - 1
                                t = t
                                continue 
                            if sub_343e7302[s].field_0 <= mem[_73]:
                                s = s - 1
                                t = t
                                continue 
                            _135 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_135] = 0
                            mem[_135 + 32] = 0
                            mem[_135 + 64] = 0
                            mem[_135 + 96] = 0
                            mem[_135 + 128] = 0
                            mem[_135 + 160] = 0
                            mem[_135 + 192] = 96
                            mem[0] = sub_343e7302[s].field_0
                            mem[32] = 10
                            _137 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_137] = sub_d8704fc9[stor11[s].field_0].field_0
                            mem[_137 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                            mem[_137 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                            mem[_137 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                            mem[_137 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                            mem[_137 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                            _138 = mem[64]
                            mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                            mem[_138] = sub_d8704fc9[stor11[s].field_0].field_1536
                            if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                mem[_137 + 192] = _138
                                if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not sub_d8704fc9[stor11[s].field_0].field_256:
                                    _146 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_146] = 26
                                    mem[_146 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _149 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _149 + 68] = mem[idx + _146 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_149 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _149 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _147 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_147] = 26
                                mem[_147 + 32] = 'SafeMath: division by zero'
                                if sub_d8704fc9[stor11[s].field_0].field_1024:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                    continue 
                                _150 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _150 + 68] = mem[idx + _147 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_150 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _150 + -mem[64] + 100
                            mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                            mem[_138 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                            u = _138 + 32
                            v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                            while _138 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                mem[u + 32] = address(sub_2b5a6b32[v])
                                u = u + 32
                                v = v + 1
                                continue 
                            mem[_137 + 192] = _138
                            if mem[_137 + 32] <= 0:
                                s = s - 1
                                t = t
                                continue 
                            if not mem[_137 + 128]:
                                s = s - 1
                                t = t
                                continue 
                            _171 = mem[_137 + 128]
                            _172 = mem[_137 + 32]
                            if not mem[_137 + 32]:
                                _174 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_174] = 26
                                mem[_174 + 32] = 'SafeMath: division by zero'
                                if _171:
                                    if (0 / _171) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = (0 / _171) + t
                                    continue 
                                _177 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _177 + 68] = mem[idx + _174 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_177 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _177 + -mem[64] + 100
                            if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_137 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_137 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_137 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_137 + 32]) / mem[_137 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _175 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_175] = 26
                            mem[_175 + 32] = 'SafeMath: division by zero'
                            if _171:
                                if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _172) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _172) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _172) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _172) / _171) + t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                s = s - 1
                                t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _172) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _172) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _172) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _172) / _171) + t
                                continue 
                            _178 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _178 + 68] = mem[idx + _175 + 32]
                                idx = idx + 32
                                continue 
                            mem[_178 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _178 + -mem[64] + 100
                        if t < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                _85 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                idx = 0
                while idx < 17:
                    mem[idx + _85 + 68] = mem[idx + _83 + 32]
                    idx = idx + 32
                    continue 
                mem[_85 + 85] = 0
                revert with memory
                  from mem[64]
                   len _85 + -mem[64] + 100
    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    _userInfo[address(arg1)].field_512 = arg2
}

function getAndUpdateRewardMinedInPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[160] = 24
    mem[192] = 'SafeMath: modulo by zero' << 64
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        mem[64] = 288
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = arg1
        mem[32] = 9
        if block.timestamp - (2 * sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1792:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _201 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_201] = 0
                    mem[_201 + 32] = 0
                    mem[_201 + 64] = 0
                    mem[_201 + 96] = 0
                    mem[_201 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _213 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_213] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_213 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_213 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_213 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_213 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_220] = 29
                    mem[_220 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _225 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _225 + 68] = mem[idx + _220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_225 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _225 + -mem[64] + 100
                    _238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_238] = 17
                    mem[_238 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_213]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _343 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_343] = 0
                                mem[_343 + 32] = 0
                                mem[_343 + 64] = 0
                                mem[_343 + 96] = 0
                                mem[_343 + 128] = 0
                                mem[_343 + 160] = 0
                                mem[_343 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _349 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_349] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_349 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_349 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_349 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_349 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_349 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _350 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_350] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_349 + 192] = _350
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _365 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_365] = 26
                                        mem[_365 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _371 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _371 + 68] = mem[idx + _365 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_371 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _371 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _368 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_368] = 26
                                    mem[_368 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _374 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _374 + 68] = mem[idx + _368 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_374 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _374 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_350 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _350 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _350 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_349 + 192] = _350
                                if mem[_349 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_349 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _416 = mem[_349 + 128]
                                _417 = mem[_349 + 32]
                                if not mem[_349 + 32]:
                                    _421 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_421] = 26
                                    mem[_421 + 32] = 'SafeMath: division by zero'
                                    if _416:
                                        if (0 / _416) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _416) + t
                                        continue 
                                    _427 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _427 + 68] = mem[idx + _421 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_427 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _427 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_349 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_349 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_349 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_349 + 32]) / mem[_349 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_424] = 26
                                mem[_424 + 32] = 'SafeMath: division by zero'
                                if _416:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _417) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _417) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _417) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _417) / _416) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _417) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _417) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _417) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _417) / _416) + t
                                    continue 
                                _430 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _430 + 68] = mem[idx + _424 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_430 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _430 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _244 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _244 + 68] = mem[idx + _238 + 32]
                        idx = idx + 32
                        continue 
                    mem[_244 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _244 + -mem[64] + 100
        if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = arg1
        mem[32] = 9
        if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1792:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _196 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_196] = 0
                    mem[_196 + 32] = 0
                    mem[_196 + 64] = 0
                    mem[_196 + 96] = 0
                    mem[_196 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _210 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_210] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_210 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_210 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_210 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_210 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_216] = 29
                    mem[_216 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _224 + 68] = mem[idx + _216 + 32]
                            idx = idx + 32
                            continue 
                        mem[_224 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _224 + -mem[64] + 100
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 17
                    mem[_234 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_210]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _342 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_342] = 0
                                mem[_342 + 32] = 0
                                mem[_342 + 64] = 0
                                mem[_342 + 96] = 0
                                mem[_342 + 128] = 0
                                mem[_342 + 160] = 0
                                mem[_342 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _345 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_345] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_345 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_345 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_345 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_345 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_345 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _346 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_346] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_345 + 192] = _346
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _364 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_364] = 26
                                        mem[_364 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _370 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _370 + 68] = mem[idx + _364 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_370 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _370 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _366 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_366] = 26
                                    mem[_366 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _372 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _372 + 68] = mem[idx + _366 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_372 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _372 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_346 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _346 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _346 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_345 + 192] = _346
                                if mem[_345 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_345 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _414 = mem[_345 + 128]
                                _415 = mem[_345 + 32]
                                if not mem[_345 + 32]:
                                    _420 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_420] = 26
                                    mem[_420 + 32] = 'SafeMath: division by zero'
                                    if _414:
                                        if (0 / _414) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _414) + t
                                        continue 
                                    _426 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _426 + 68] = mem[idx + _420 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_426 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _426 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_345 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_345 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_345 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_345 + 32]) / mem[_345 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _422 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_422] = 26
                                mem[_422 + 32] = 'SafeMath: division by zero'
                                if _414:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _415) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _415) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _415) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _415) / _414) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _415) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _415) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _415) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _415) / _414) + t
                                    continue 
                                _428 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _428 + 68] = mem[idx + _422 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_428 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _428 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _241 + 68] = mem[idx + _234 + 32]
                        idx = idx + 32
                        continue 
                    mem[_241 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _241 + -mem[64] + 100
        if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
    return _userInfo[address(arg1)].field_1024
}

function claimAllReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[160] = 24
    mem[192] = 'SafeMath: modulo by zero' << 64
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        mem[64] = 288
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = arg1
        mem[32] = 9
        if block.timestamp - (2 * sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
            if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                revert with 0, 'claim amount should not greater than total mined'
            _userInfo[address(arg1)].field_1024 = 0
            require ext_code.size(_rewardTokenAddress)
            staticcall _rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_rewardTokenAddress)
            if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _userInfo[address(arg1)].field_1024
            else:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not _userInfo[address(arg1)].field_1792:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 = 0
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _425 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_425] = 0
                    mem[_425 + 32] = 0
                    mem[_425 + 64] = 0
                    mem[_425 + 96] = 0
                    mem[_425 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _441 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_441] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_441 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_441 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_441 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_441 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_448] = 29
                    mem[_448 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _453 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _453 + 68] = mem[idx + _448 + 32]
                            idx = idx + 32
                            continue 
                        mem[_453 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _453 + -mem[64] + 100
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 17
                    mem[_464 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_441]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _651 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_651] = 0
                                mem[_651 + 32] = 0
                                mem[_651 + 64] = 0
                                mem[_651 + 96] = 0
                                mem[_651 + 128] = 0
                                mem[_651 + 160] = 0
                                mem[_651 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _657 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_657] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_657 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_657 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_657 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_657 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_657 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _658 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_658] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_657 + 192] = _658
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _673 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_673] = 26
                                        mem[_673 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _679 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _679 + 68] = mem[idx + _673 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_679 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _679 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_676] = 26
                                    mem[_676 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _682 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _682 + 68] = mem[idx + _676 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_682 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _682 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_658 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _658 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _658 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_657 + 192] = _658
                                if mem[_657 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_657 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _724 = mem[_657 + 128]
                                _725 = mem[_657 + 32]
                                if not mem[_657 + 32]:
                                    _729 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_729] = 26
                                    mem[_729 + 32] = 'SafeMath: division by zero'
                                    if _724:
                                        if (0 / _724) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _724) + t
                                        continue 
                                    _735 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _735 + 68] = mem[idx + _729 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_735 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _735 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_657 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_657 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_657 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_657 + 32]) / mem[_657 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_732] = 26
                                mem[_732 + 32] = 'SafeMath: division by zero'
                                if _724:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _725) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _725) / _724) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _725) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _725) / _724) + t
                                    continue 
                                _738 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _738 + 68] = mem[idx + _732 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_738 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _738 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _470 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _470 + 68] = mem[idx + _464 + 32]
                        idx = idx + 32
                        continue 
                    mem[_470 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _470 + -mem[64] + 100
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                mem[0] = arg1
                mem[32] = 9
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_475] = 26
                mem[_475 + 32] = 'amount>rewardBalanceInpool'
                _userInfo[address(arg1)].field_1024 = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _503 = mem[_499]
                mem[mem[64] + 4] = arg1
                if _userInfo[address(arg1)].field_1024 <= mem[_499]:
                    mem[mem[64] + 36] = _userInfo[address(arg1)].field_1024
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == bool(mem[_517])
                else:
                    mem[mem[64] + 36] = _503
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _503
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] == bool(mem[_518])
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = arg1
        mem[32] = 9
        if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
            if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                revert with 0, 'claim amount should not greater than total mined'
            _userInfo[address(arg1)].field_1024 = 0
            require ext_code.size(_rewardTokenAddress)
            staticcall _rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_rewardTokenAddress)
            if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _userInfo[address(arg1)].field_1024
            else:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not _userInfo[address(arg1)].field_1792:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 = 0
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _412 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_412] = 0
                    mem[_412 + 32] = 0
                    mem[_412 + 64] = 0
                    mem[_412 + 96] = 0
                    mem[_412 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _438 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_438] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_438 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_438 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_438 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_438 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_444] = 29
                    mem[_444 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _452 + 68] = mem[idx + _444 + 32]
                            idx = idx + 32
                            continue 
                        mem[_452 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _452 + -mem[64] + 100
                    _461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_461] = 17
                    mem[_461 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_438]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _650 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_650] = 0
                                mem[_650 + 32] = 0
                                mem[_650 + 64] = 0
                                mem[_650 + 96] = 0
                                mem[_650 + 128] = 0
                                mem[_650 + 160] = 0
                                mem[_650 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _653 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_653] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_653 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_653 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_653 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_653 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_653 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _654 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_654] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_653 + 192] = _654
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _672 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_672] = 26
                                        mem[_672 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _678 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _678 + 68] = mem[idx + _672 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_678 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _678 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _674 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_674] = 26
                                    mem[_674 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _680 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _680 + 68] = mem[idx + _674 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_680 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _680 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_654 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _654 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _654 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_653 + 192] = _654
                                if mem[_653 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_653 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _722 = mem[_653 + 128]
                                _723 = mem[_653 + 32]
                                if not mem[_653 + 32]:
                                    _728 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_728] = 26
                                    mem[_728 + 32] = 'SafeMath: division by zero'
                                    if _722:
                                        if (0 / _722) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _722) + t
                                        continue 
                                    _734 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _734 + 68] = mem[idx + _728 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_734 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _734 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_653 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_653 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_653 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_653 + 32]) / mem[_653 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _730 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_730] = 26
                                mem[_730 + 32] = 'SafeMath: division by zero'
                                if _722:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _723) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _723) / _722) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _723) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _723) / _722) + t
                                    continue 
                                _736 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _736 + 68] = mem[idx + _730 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_736 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _736 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _467 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _467 + 68] = mem[idx + _461 + 32]
                        idx = idx + 32
                        continue 
                    mem[_467 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _467 + -mem[64] + 100
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                mem[0] = arg1
                mem[32] = 9
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _472 = mem[64]
                mem[64] = mem[64] + 64
                mem[_472] = 26
                mem[_472 + 32] = 'amount>rewardBalanceInpool'
                _userInfo[address(arg1)].field_1024 = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _502 = mem[_498]
                mem[mem[64] + 4] = arg1
                if _userInfo[address(arg1)].field_1024 <= mem[_498]:
                    mem[mem[64] + 36] = _userInfo[address(arg1)].field_1024
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == bool(mem[_514])
                else:
                    mem[mem[64] + 36] = _502
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _502
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_515] == bool(mem[_515])
    if _userInfo[address(arg1)].field_1024 + _userInfo[address(arg1)].field_1280 < _userInfo[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    _userInfo[address(arg1)].field_1280 += _userInfo[address(arg1)].field_1024
    if _userInfo[address(arg1)].field_1024 > sub_42b2d9fe:
        revert with 0, 'amount>_totalRewar', 0
    sub_42b2d9fe -= _userInfo[address(arg1)].field_1024
    emit Claim(_userInfo[address(arg1)].field_1024, arg1);
}

function sub_19c3b601(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[160] = 24
    mem[192] = 'SafeMath: modulo by zero' << 64
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        mem[64] = 288
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = address(arg1)
        mem[32] = 9
        if block.timestamp - (2 * sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
            if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                revert with 0, 'claim amount should not greater than total mined'
            _userInfo[address(arg1)].field_1024 = 0
            require ext_code.size(_rewardTokenAddress)
            staticcall _rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_rewardTokenAddress)
            if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _userInfo[address(arg1)].field_1024
            else:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not _userInfo[address(arg1)].field_1792:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 = 0
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _425 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_425] = 0
                    mem[_425 + 32] = 0
                    mem[_425 + 64] = 0
                    mem[_425 + 96] = 0
                    mem[_425 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _441 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_441] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_441 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_441 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_441 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_441 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_448] = 29
                    mem[_448 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _453 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _453 + 68] = mem[idx + _448 + 32]
                            idx = idx + 32
                            continue 
                        mem[_453 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _453 + -mem[64] + 100
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 17
                    mem[_464 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_441]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _651 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_651] = 0
                                mem[_651 + 32] = 0
                                mem[_651 + 64] = 0
                                mem[_651 + 96] = 0
                                mem[_651 + 128] = 0
                                mem[_651 + 160] = 0
                                mem[_651 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _657 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_657] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_657 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_657 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_657 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_657 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_657 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _658 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_658] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_657 + 192] = _658
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _673 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_673] = 26
                                        mem[_673 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _679 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _679 + 68] = mem[idx + _673 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_679 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _679 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_676] = 26
                                    mem[_676 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _682 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _682 + 68] = mem[idx + _676 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_682 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _682 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_658 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _658 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _658 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_657 + 192] = _658
                                if mem[_657 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_657 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _724 = mem[_657 + 128]
                                _725 = mem[_657 + 32]
                                if not mem[_657 + 32]:
                                    _729 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_729] = 26
                                    mem[_729 + 32] = 'SafeMath: division by zero'
                                    if _724:
                                        if (0 / _724) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _724) + t
                                        continue 
                                    _735 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _735 + 68] = mem[idx + _729 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_735 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _735 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_657 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_657 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_657 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_657 + 32]) / mem[_657 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_732] = 26
                                mem[_732 + 32] = 'SafeMath: division by zero'
                                if _724:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _725) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _725) / _724) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _725) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _725) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _725) / _724) + t
                                    continue 
                                _738 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _738 + 68] = mem[idx + _732 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_738 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _738 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _470 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _470 + 68] = mem[idx + _464 + 32]
                        idx = idx + 32
                        continue 
                    mem[_470 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _470 + -mem[64] + 100
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                mem[0] = address(arg1)
                mem[32] = 9
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _475 = mem[64]
                mem[64] = mem[64] + 64
                mem[_475] = 26
                mem[_475 + 32] = 'amount>rewardBalanceInpool'
                _userInfo[address(arg1)].field_1024 = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _503 = mem[_499]
                mem[mem[64] + 4] = address(arg1)
                if _userInfo[address(arg1)].field_1024 <= mem[_499]:
                    mem[mem[64] + 36] = _userInfo[address(arg1)].field_1024
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == bool(mem[_517])
                else:
                    mem[mem[64] + 36] = _503
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _503
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] == bool(mem[_518])
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = address(arg1)
        mem[32] = 9
        if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
            if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
            if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                revert with 0, 'claim amount should not greater than total mined'
            _userInfo[address(arg1)].field_1024 = 0
            require ext_code.size(_rewardTokenAddress)
            staticcall _rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(_rewardTokenAddress)
            if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _userInfo[address(arg1)].field_1024
            else:
                call _rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not _userInfo[address(arg1)].field_1792:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 = 0
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if _userInfo[address(arg1)].field_1024 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < _userInfo[address(arg1)].field_1792:
                    mem[0] = sha3(address(arg1), 9) + 7
                    if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                        idx = idx + 1
                        continue 
                    _412 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_412] = 0
                    mem[_412 + 32] = 0
                    mem[_412 + 64] = 0
                    mem[_412 + 96] = 0
                    mem[_412 + 128] = 0
                    mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                    mem[32] = sha3(address(arg1), 9) + 6
                    _438 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_438] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                    mem[_438 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                    mem[_438 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                    mem[_438 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                    mem[_438 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                    _444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_444] = 29
                    mem[_444 + 32] = 'lockedWithdrawed>lockedAmount'
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                        _452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 29
                        idx = 0
                        while idx < 29:
                            mem[idx + _452 + 68] = mem[idx + _444 + 32]
                            idx = idx + 32
                            continue 
                        mem[_452 + 97] = 0
                        revert with memory
                          from mem[64]
                           len _452 + -mem[64] + 100
                    _461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_461] = 17
                    mem[_461 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                    if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                            s = sub_343e7302.length
                            t = 0
                            while s:
                                require s - 1 < sub_343e7302.length
                                mem[0] = 11
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    if t < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    continue 
                                if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                    s = s - 1
                                    t = t
                                    continue 
                                if sub_343e7302[s].field_0 <= mem[_438]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _650 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_650] = 0
                                mem[_650 + 32] = 0
                                mem[_650 + 64] = 0
                                mem[_650 + 96] = 0
                                mem[_650 + 128] = 0
                                mem[_650 + 160] = 0
                                mem[_650 + 192] = 96
                                mem[0] = sub_343e7302[s].field_0
                                mem[32] = 10
                                _653 = mem[64]
                                mem[64] = mem[64] + 224
                                mem[_653] = sub_d8704fc9[stor11[s].field_0].field_0
                                mem[_653 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                mem[_653 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                mem[_653 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                mem[_653 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                mem[_653 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                _654 = mem[64]
                                mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                mem[_654] = sub_d8704fc9[stor11[s].field_0].field_1536
                                if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                    mem[_653 + 192] = _654
                                    if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not sub_d8704fc9[stor11[s].field_0].field_256:
                                        _672 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_672] = 26
                                        mem[_672 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _678 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _678 + 68] = mem[idx + _672 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_678 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _678 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _674 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_674] = 26
                                    mem[_674 + 32] = 'SafeMath: division by zero'
                                    if sub_d8704fc9[stor11[s].field_0].field_1024:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                        continue 
                                    _680 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _680 + 68] = mem[idx + _674 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_680 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _680 + -mem[64] + 100
                                mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                mem[_654 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                u = _654 + 32
                                v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                while _654 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                    mem[u + 32] = address(sub_2b5a6b32[v])
                                    u = u + 32
                                    v = v + 1
                                    continue 
                                mem[_653 + 192] = _654
                                if mem[_653 + 32] <= 0:
                                    s = s - 1
                                    t = t
                                    continue 
                                if not mem[_653 + 128]:
                                    s = s - 1
                                    t = t
                                    continue 
                                _722 = mem[_653 + 128]
                                _723 = mem[_653 + 32]
                                if not mem[_653 + 32]:
                                    _728 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_728] = 26
                                    mem[_728 + 32] = 'SafeMath: division by zero'
                                    if _722:
                                        if (0 / _722) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = (0 / _722) + t
                                        continue 
                                    _734 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _734 + 68] = mem[idx + _728 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_734 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _734 + -mem[64] + 100
                                if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_653 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_653 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_653 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_653 + 32]) / mem[_653 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _730 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_730] = 26
                                mem[_730 + 32] = 'SafeMath: division by zero'
                                if _722:
                                    if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _723) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _723) / _722) + t < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    s = s - 1
                                    t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _723) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _723) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _723) / _722) + t
                                    continue 
                                _736 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _736 + 68] = mem[idx + _730 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_736 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _736 + -mem[64] + 100
                            if t < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    _467 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 17
                    idx = 0
                    while idx < 17:
                        mem[idx + _467 + 68] = mem[idx + _461 + 32]
                        idx = idx + 32
                        continue 
                    mem[_467 + 85] = 0
                    revert with memory
                      from mem[64]
                       len _467 + -mem[64] + 100
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                mem[0] = address(arg1)
                mem[32] = 9
                if _userInfo[address(arg1)].field_1024 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _472 = mem[64]
                mem[64] = mem[64] + 64
                mem[_472] = 26
                mem[_472 + 32] = 'amount>rewardBalanceInpool'
                _userInfo[address(arg1)].field_1024 = 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _502 = mem[_498]
                mem[mem[64] + 4] = address(arg1)
                if _userInfo[address(arg1)].field_1024 <= mem[_498]:
                    mem[mem[64] + 36] = _userInfo[address(arg1)].field_1024
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _userInfo[address(arg1)].field_1024
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == bool(mem[_514])
                else:
                    mem[mem[64] + 36] = _502
                    require ext_code.size(_rewardTokenAddress)
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), _502
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_515] == bool(mem[_515])
    if _userInfo[address(arg1)].field_1024 + _userInfo[address(arg1)].field_1280 < _userInfo[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    _userInfo[address(arg1)].field_1280 += _userInfo[address(arg1)].field_1024
    if _userInfo[address(arg1)].field_1024 > sub_42b2d9fe:
        revert with 0, 'amount>_totalRewar', 0
    sub_42b2d9fe -= _userInfo[address(arg1)].field_1024
    emit Claim(_userInfo[address(arg1)].field_1024, address(arg1));
}

function claimAmountOfReward(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not arg3:
        if arg2 > _userInfo[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'claim amount should not greater than total mined'
        _userInfo[address(arg1)].field_1024 -= arg2
        require ext_code.size(_rewardTokenAddress)
        staticcall _rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_rewardTokenAddress)
        if arg2 <= ext_call.return_data[0]:
            call _rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            call _rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if block.timestamp <= sub_622d5405:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if sub_622d5405 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[160] = 24
        mem[192] = 'SafeMath: modulo by zero' << 64
        if not sub_ebb4b65f:
            revert with 0, 'SafeMath: modulo by zero', 0
        if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
            mem[64] = 288
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 2 * sub_ebb4b65f > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[0] = arg1
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                if arg2 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 -= arg2
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if arg2 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not _userInfo[address(arg1)].field_1792:
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(_rewardTokenAddress)
                    if arg2 <= ext_call.return_data[0]:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                    else:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _467 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_467] = 0
                        mem[_467 + 32] = 0
                        mem[_467 + 64] = 0
                        mem[_467 + 96] = 0
                        mem[_467 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _483 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_483] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_483 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_483 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_483 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_483 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_490] = 29
                        mem[_490 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _495 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _495 + 68] = mem[idx + _490 + 32]
                                idx = idx + 32
                                continue 
                            mem[_495 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _495 + -mem[64] + 100
                        _506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_506] = 17
                        mem[_506 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_483]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _693 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_693] = 0
                                    mem[_693 + 32] = 0
                                    mem[_693 + 64] = 0
                                    mem[_693 + 96] = 0
                                    mem[_693 + 128] = 0
                                    mem[_693 + 160] = 0
                                    mem[_693 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _699 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_699] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_699 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_699 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_699 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_699 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_699 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _700 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_700] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_699 + 192] = _700
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _715 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_715] = 26
                                            mem[_715 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _721 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _721 + 68] = mem[idx + _715 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_721 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _721 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _718 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_718] = 26
                                        mem[_718 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _724 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _724 + 68] = mem[idx + _718 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_724 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _724 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_700 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _700 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _700 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_699 + 192] = _700
                                    if mem[_699 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_699 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _766 = mem[_699 + 128]
                                    _767 = mem[_699 + 32]
                                    if not mem[_699 + 32]:
                                        _771 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_771] = 26
                                        mem[_771 + 32] = 'SafeMath: division by zero'
                                        if _766:
                                            if (0 / _766) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _766) + t
                                            continue 
                                        _777 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _777 + 68] = mem[idx + _771 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_777 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _777 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_699 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_699 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_699 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_699 + 32]) / mem[_699 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _774 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_774] = 26
                                    mem[_774 + 32] = 'SafeMath: division by zero'
                                    if _766:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _767) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _767) / _766) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _767) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _767) / _766) + t
                                        continue 
                                    _780 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _780 + 68] = mem[idx + _774 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_780 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _780 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _516 + 68] = mem[idx + _506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_516 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _516 + -mem[64] + 100
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                    mem[0] = arg1
                    mem[32] = 9
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_514] = 26
                    mem[_514 + 32] = 'amount>rewardBalanceInpool'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _544 = mem[_541]
                    mem[mem[64] + 4] = arg1
                    if arg2 <= mem[_541]:
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_558] == bool(mem[_558])
                    else:
                        mem[mem[64] + 36] = _544
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _544
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_559] == bool(mem[_559])
        else:
            if sub_ebb4b65f + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[0] = arg1
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if arg2 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 -= arg2
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if arg2 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not _userInfo[address(arg1)].field_1792:
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(_rewardTokenAddress)
                    if arg2 <= ext_call.return_data[0]:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                    else:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _454 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_454] = 0
                        mem[_454 + 32] = 0
                        mem[_454 + 64] = 0
                        mem[_454 + 96] = 0
                        mem[_454 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _480 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_480] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_480 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_480 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_480 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_480 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_486] = 29
                        mem[_486 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _494 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _494 + 68] = mem[idx + _486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_494 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _494 + -mem[64] + 100
                        _503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_503] = 17
                        mem[_503 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_480]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _692 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_692] = 0
                                    mem[_692 + 32] = 0
                                    mem[_692 + 64] = 0
                                    mem[_692 + 96] = 0
                                    mem[_692 + 128] = 0
                                    mem[_692 + 160] = 0
                                    mem[_692 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _695 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_695] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_695 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_695 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_695 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_695 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_695 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _696 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_696] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_695 + 192] = _696
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _714 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_714] = 26
                                            mem[_714 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _720 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _720 + 68] = mem[idx + _714 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_720 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _720 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _716 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_716] = 26
                                        mem[_716 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _722 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _722 + 68] = mem[idx + _716 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_722 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _722 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_696 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _696 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _696 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_695 + 192] = _696
                                    if mem[_695 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_695 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _764 = mem[_695 + 128]
                                    _765 = mem[_695 + 32]
                                    if not mem[_695 + 32]:
                                        _770 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_770] = 26
                                        mem[_770 + 32] = 'SafeMath: division by zero'
                                        if _764:
                                            if (0 / _764) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _764) + t
                                            continue 
                                        _776 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _776 + 68] = mem[idx + _770 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_776 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _776 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_695 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_695 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_695 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_695 + 32]) / mem[_695 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _772 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_772] = 26
                                    mem[_772 + 32] = 'SafeMath: division by zero'
                                    if _764:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _765) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _765) / _764) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _765) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _765) / _764) + t
                                        continue 
                                    _778 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _778 + 68] = mem[idx + _772 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_778 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _778 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _512 + 68] = mem[idx + _503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_512 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _512 + -mem[64] + 100
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                    mem[0] = arg1
                    mem[32] = 9
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_510] = 26
                    mem[_510 + 32] = 'amount>rewardBalanceInpool'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _542 = mem[_540]
                    mem[mem[64] + 4] = arg1
                    if arg2 <= mem[_540]:
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_556] == bool(mem[_556])
                    else:
                        mem[mem[64] + 36] = _542
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _542
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_557] == bool(mem[_557])
    if arg2 + _userInfo[address(arg1)].field_1280 < _userInfo[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    _userInfo[address(arg1)].field_1280 += arg2
    if arg2 > sub_42b2d9fe:
        revert with 0, 'amount>_totalRewar', 0
    sub_42b2d9fe -= arg2
    emit Claim(arg2, arg1);
}

function sub_f5df2660(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    if not arg3:
        if arg2 > _userInfo[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'claim amount should not greater than total mined'
        _userInfo[address(arg1)].field_1024 -= arg2
        require ext_code.size(_rewardTokenAddress)
        staticcall _rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_rewardTokenAddress)
        if arg2 <= ext_call.return_data[0]:
            call _rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            call _rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if block.timestamp <= sub_622d5405:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if sub_622d5405 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[160] = 24
        mem[192] = 'SafeMath: modulo by zero' << 64
        if not sub_ebb4b65f:
            revert with 0, 'SafeMath: modulo by zero', 0
        if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
            mem[64] = 288
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 2 * sub_ebb4b65f > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[0] = address(arg1)
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                if arg2 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 -= arg2
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if arg2 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not _userInfo[address(arg1)].field_1792:
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(_rewardTokenAddress)
                    if arg2 <= ext_call.return_data[0]:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                    else:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _467 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_467] = 0
                        mem[_467 + 32] = 0
                        mem[_467 + 64] = 0
                        mem[_467 + 96] = 0
                        mem[_467 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _483 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_483] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_483 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_483 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_483 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_483 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_490] = 29
                        mem[_490 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _495 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _495 + 68] = mem[idx + _490 + 32]
                                idx = idx + 32
                                continue 
                            mem[_495 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _495 + -mem[64] + 100
                        _506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_506] = 17
                        mem[_506 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_483]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _693 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_693] = 0
                                    mem[_693 + 32] = 0
                                    mem[_693 + 64] = 0
                                    mem[_693 + 96] = 0
                                    mem[_693 + 128] = 0
                                    mem[_693 + 160] = 0
                                    mem[_693 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _699 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_699] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_699 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_699 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_699 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_699 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_699 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _700 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_700] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_699 + 192] = _700
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _715 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_715] = 26
                                            mem[_715 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _721 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _721 + 68] = mem[idx + _715 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_721 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _721 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _718 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_718] = 26
                                        mem[_718 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _724 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _724 + 68] = mem[idx + _718 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_724 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _724 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_700 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _700 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _700 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_699 + 192] = _700
                                    if mem[_699 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_699 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _766 = mem[_699 + 128]
                                    _767 = mem[_699 + 32]
                                    if not mem[_699 + 32]:
                                        _771 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_771] = 26
                                        mem[_771 + 32] = 'SafeMath: division by zero'
                                        if _766:
                                            if (0 / _766) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _766) + t
                                            continue 
                                        _777 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _777 + 68] = mem[idx + _771 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_777 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _777 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_699 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_699 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_699 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_699 + 32]) / mem[_699 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _774 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_774] = 26
                                    mem[_774 + 32] = 'SafeMath: division by zero'
                                    if _766:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _767) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _767) / _766) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _767) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _767) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _767) / _766) + t
                                        continue 
                                    _780 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _780 + 68] = mem[idx + _774 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_780 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _780 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _516 + 68] = mem[idx + _506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_516 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _516 + -mem[64] + 100
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = block.timestamp - (2 * sub_ebb4b65f)
                    mem[0] = address(arg1)
                    mem[32] = 9
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_514] = 26
                    mem[_514 + 32] = 'amount>rewardBalanceInpool'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _544 = mem[_541]
                    mem[mem[64] + 4] = address(arg1)
                    if arg2 <= mem[_541]:
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_558] == bool(mem[_558])
                    else:
                        mem[mem[64] + 36] = _544
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _544
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_559] == bool(mem[_559])
        else:
            if sub_ebb4b65f + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[0] = address(arg1)
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) <= _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                if arg2 > _userInfo[address(arg1)].field_1024:
                    revert with 0, 'claim amount should not greater than total mined'
                _userInfo[address(arg1)].field_1024 -= arg2
                require ext_code.size(_rewardTokenAddress)
                staticcall _rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(_rewardTokenAddress)
                if arg2 <= ext_call.return_data[0]:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                else:
                    call _rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if not _userInfo[address(arg1)].field_1792:
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(_rewardTokenAddress)
                    if arg2 <= ext_call.return_data[0]:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                    else:
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _454 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_454] = 0
                        mem[_454 + 32] = 0
                        mem[_454 + 64] = 0
                        mem[_454 + 96] = 0
                        mem[_454 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _480 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_480] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_480 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_480 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_480 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_480 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_486] = 29
                        mem[_486 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _494 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _494 + 68] = mem[idx + _486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_494 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _494 + -mem[64] + 100
                        _503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_503] = 17
                        mem[_503 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_480]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _692 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_692] = 0
                                    mem[_692 + 32] = 0
                                    mem[_692 + 64] = 0
                                    mem[_692 + 96] = 0
                                    mem[_692 + 128] = 0
                                    mem[_692 + 160] = 0
                                    mem[_692 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _695 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_695] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_695 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_695 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_695 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_695 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_695 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _696 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_696] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_695 + 192] = _696
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _714 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_714] = 26
                                            mem[_714 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _720 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _720 + 68] = mem[idx + _714 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_720 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _720 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _716 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_716] = 26
                                        mem[_716 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _722 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _722 + 68] = mem[idx + _716 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_722 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _722 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_696 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _696 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _696 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_695 + 192] = _696
                                    if mem[_695 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_695 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _764 = mem[_695 + 128]
                                    _765 = mem[_695 + 32]
                                    if not mem[_695 + 32]:
                                        _770 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_770] = 26
                                        mem[_770 + 32] = 'SafeMath: division by zero'
                                        if _764:
                                            if (0 / _764) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _764) + t
                                            continue 
                                        _776 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _776 + 68] = mem[idx + _770 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_776 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _776 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_695 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_695 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_695 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_695 + 32]) / mem[_695 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _772 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_772] = 26
                                    mem[_772 + 32] = 'SafeMath: division by zero'
                                    if _764:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _765) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _765) / _764) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _765) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _765) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _765) / _764) + t
                                        continue 
                                    _778 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _778 + 68] = mem[idx + _772 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_778 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _778 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _512 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _512 + 68] = mem[idx + _503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_512 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _512 + -mem[64] + 100
                    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if _userInfo[address(arg1)].field_768 < _userInfo[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    _userInfo[address(arg1)].field_512 = (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f)
                    mem[0] = address(arg1)
                    mem[32] = 9
                    if arg2 > _userInfo[address(arg1)].field_1024:
                        revert with 0, 'claim amount should not greater than total mined'
                    _510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_510] = 26
                    mem[_510 + 32] = 'amount>rewardBalanceInpool'
                    _userInfo[address(arg1)].field_1024 -= arg2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(_rewardTokenAddress)
                    staticcall _rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _542 = mem[_540]
                    mem[mem[64] + 4] = address(arg1)
                    if arg2 <= mem[_540]:
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_556] == bool(mem[_556])
                    else:
                        mem[mem[64] + 36] = _542
                        require ext_code.size(_rewardTokenAddress)
                        call _rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _542
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_557] == bool(mem[_557])
    if arg2 + _userInfo[address(arg1)].field_1280 < _userInfo[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    _userInfo[address(arg1)].field_1280 += arg2
    if arg2 > sub_42b2d9fe:
        revert with 0, 'amount>_totalRewar', 0
    sub_42b2d9fe -= arg2
    emit Claim(arg2, address(arg1));
}

function getTotalRewardBalanceInPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[160] = 24
    mem[192] = 'SafeMath: modulo by zero' << 64
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        mem[480] = 96
        mem[512] = _userInfo[address(arg1)].field_0
        mem[544] = _userInfo[address(arg1)].field_256
        mem[576] = _userInfo[address(arg1)].field_512
        mem[608] = _userInfo[address(arg1)].field_768
        mem[640] = _userInfo[address(arg1)].field_1024
        mem[672] = _userInfo[address(arg1)].field_1280
        mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 768
        mem[736] = _userInfo[address(arg1)].field_1792
        if not _userInfo[address(arg1)].field_1792:
            mem[704] = 736
            mem[0] = arg1
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _187 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_187] = 0
                        mem[_187 + 32] = 0
                        mem[_187 + 64] = 0
                        mem[_187 + 96] = 0
                        mem[_187 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _199 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_199] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_199 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_199 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_199 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_199 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _208 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_208] = 29
                        mem[_208 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _213 + 68] = mem[idx + _208 + 32]
                                idx = idx + 32
                                continue 
                            mem[_213 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _213 + -mem[64] + 100
                        _220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_220] = 17
                        mem[_220 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_199]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _346 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_346] = 0
                                    mem[_346 + 32] = 0
                                    mem[_346 + 64] = 0
                                    mem[_346 + 96] = 0
                                    mem[_346 + 128] = 0
                                    mem[_346 + 160] = 0
                                    mem[_346 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _357 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_357] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_357 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_357 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_357 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_357 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_357 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _358 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_358] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_357 + 192] = _358
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_402] = 26
                                            mem[_402 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _411 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _411 + 68] = mem[idx + _402 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_411 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _411 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _406 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_406] = 26
                                        mem[_406 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _418 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _418 + 68] = mem[idx + _406 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_418 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _418 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_358 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _358 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _358 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_357 + 192] = _358
                                    if mem[_357 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_357 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _641 = mem[_357 + 128]
                                    _642 = mem[_357 + 32]
                                    if not mem[_357 + 32]:
                                        _660 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_660] = 26
                                        mem[_660 + 32] = 'SafeMath: division by zero'
                                        if _641:
                                            if (0 / _641) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _641) + t
                                            continue 
                                        _670 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _670 + 68] = mem[idx + _660 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_670 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _670 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_357 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_357 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_357 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_357 + 32]) / mem[_357 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _665 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_665] = 26
                                    mem[_665 + 32] = 'SafeMath: division by zero'
                                    if _641:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _642) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _642) / _641) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _642) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _642) / _641) + t
                                        continue 
                                    _678 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _678 + 68] = mem[idx + _665 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_678 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _678 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _224 + 68] = mem[idx + _220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_224 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _224 + -mem[64] + 100
        else:
            mem[768] = _userInfo[address(arg1)][7].field_0
            idx = 768
            s = 0
            while (32 * _userInfo[address(arg1)].field_1792) + 736 > idx:
                mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[704] = 736
            mem[0] = arg1
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _523 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_523] = 0
                        mem[_523 + 32] = 0
                        mem[_523 + 64] = 0
                        mem[_523 + 96] = 0
                        mem[_523 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _529 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_529] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_529 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_529 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_529 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_529 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _538 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_538] = 29
                        mem[_538 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _543 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _543 + 68] = mem[idx + _538 + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 100
                        _550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_550] = 17
                        mem[_550 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_529]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _671 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_671] = 0
                                    mem[_671 + 32] = 0
                                    mem[_671 + 64] = 0
                                    mem[_671 + 96] = 0
                                    mem[_671 + 128] = 0
                                    mem[_671 + 160] = 0
                                    mem[_671 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _681 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_681] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_681 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_681 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_681 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_681 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_681 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _682 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_682] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_681 + 192] = _682
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _719 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_719] = 26
                                            mem[_719 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _725 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _725 + 68] = mem[idx + _719 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_725 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _725 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _722 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_722] = 26
                                        mem[_722 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _728 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _728 + 68] = mem[idx + _722 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_728 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _728 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_682 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _682 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _682 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_681 + 192] = _682
                                    if mem[_681 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_681 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _782 = mem[_681 + 128]
                                    _783 = mem[_681 + 32]
                                    if not mem[_681 + 32]:
                                        _787 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_787] = 26
                                        mem[_787 + 32] = 'SafeMath: division by zero'
                                        if _782:
                                            if (0 / _782) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _782) + t
                                            continue 
                                        _793 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _793 + 68] = mem[idx + _787 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_793 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _793 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_681 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_681 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_681 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_681 + 32]) / mem[_681 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_790] = 26
                                    mem[_790 + 32] = 'SafeMath: division by zero'
                                    if _782:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _783) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _783) / _782) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _783) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _783) / _782) + t
                                        continue 
                                    _796 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _796 + 68] = mem[idx + _790 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_796 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _796 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _554 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _554 + 68] = mem[idx + _550 + 32]
                            idx = idx + 32
                            continue 
                        mem[_554 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _554 + -mem[64] + 100
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[352] = 0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        mem[544] = 96
        mem[576] = _userInfo[address(arg1)].field_0
        mem[608] = _userInfo[address(arg1)].field_256
        mem[640] = _userInfo[address(arg1)].field_512
        mem[672] = _userInfo[address(arg1)].field_768
        mem[704] = _userInfo[address(arg1)].field_1024
        mem[736] = _userInfo[address(arg1)].field_1280
        mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 832
        mem[800] = _userInfo[address(arg1)].field_1792
        if not _userInfo[address(arg1)].field_1792:
            mem[768] = 800
            mem[0] = arg1
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _182 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_182] = 0
                        mem[_182 + 32] = 0
                        mem[_182 + 64] = 0
                        mem[_182 + 96] = 0
                        mem[_182 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _196 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_196] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_196 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_196 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_196 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_196 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_203] = 29
                        mem[_203 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _211 + 68] = mem[idx + _203 + 32]
                                idx = idx + 32
                                continue 
                            mem[_211 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _211 + -mem[64] + 100
                        _217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_217] = 17
                        mem[_217 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_196]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _342 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_342] = 0
                                    mem[_342 + 32] = 0
                                    mem[_342 + 64] = 0
                                    mem[_342 + 96] = 0
                                    mem[_342 + 128] = 0
                                    mem[_342 + 160] = 0
                                    mem[_342 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _351 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_351] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_351 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_351 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_351 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_351 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_351 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _352 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_352] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_351 + 192] = _352
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_400] = 26
                                            mem[_400 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _408 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _408 + 68] = mem[idx + _400 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_408 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _408 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_404] = 26
                                        mem[_404 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _414 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _414 + 68] = mem[idx + _404 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_414 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _414 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_352 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _352 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _352 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_351 + 192] = _352
                                    if mem[_351 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_351 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _638 = mem[_351 + 128]
                                    _639 = mem[_351 + 32]
                                    if not mem[_351 + 32]:
                                        _658 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_658] = 26
                                        mem[_658 + 32] = 'SafeMath: division by zero'
                                        if _638:
                                            if (0 / _638) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _638) + t
                                            continue 
                                        _668 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _668 + 68] = mem[idx + _658 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_668 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _668 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_351 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_351 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_351 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_351 + 32]) / mem[_351 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _662 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_662] = 26
                                    mem[_662 + 32] = 'SafeMath: division by zero'
                                    if _638:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _639) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _639) / _638) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _639) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _639) / _638) + t
                                        continue 
                                    _672 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _672 + 68] = mem[idx + _662 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_672 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _672 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _222 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _222 + 68] = mem[idx + _217 + 32]
                            idx = idx + 32
                            continue 
                        mem[_222 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _222 + -mem[64] + 100
        else:
            mem[832] = _userInfo[address(arg1)][7].field_0
            idx = 832
            s = 0
            while (32 * _userInfo[address(arg1)].field_1792) + 800 > idx:
                mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[768] = 800
            mem[0] = arg1
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _518 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_518] = 0
                        mem[_518 + 32] = 0
                        mem[_518 + 64] = 0
                        mem[_518 + 96] = 0
                        mem[_518 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _526 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_526] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_526 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_526 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_526 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_526 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _533 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_533] = 29
                        mem[_533 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _541 + 68] = mem[idx + _533 + 32]
                                idx = idx + 32
                                continue 
                            mem[_541 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _541 + -mem[64] + 100
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_547] = 17
                        mem[_547 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_526]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _669 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_669] = 0
                                    mem[_669 + 32] = 0
                                    mem[_669 + 64] = 0
                                    mem[_669 + 96] = 0
                                    mem[_669 + 128] = 0
                                    mem[_669 + 160] = 0
                                    mem[_669 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _675 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_675] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_675 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_675 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_675 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_675 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_675 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _676 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_676] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_675 + 192] = _676
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _718 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_718] = 26
                                            mem[_718 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _724 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _724 + 68] = mem[idx + _718 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_724 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _724 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _720 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_720] = 26
                                        mem[_720 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _726 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _726 + 68] = mem[idx + _720 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_726 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _726 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_676 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _676 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _676 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_675 + 192] = _676
                                    if mem[_675 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_675 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _780 = mem[_675 + 128]
                                    _781 = mem[_675 + 32]
                                    if not mem[_675 + 32]:
                                        _786 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_786] = 26
                                        mem[_786 + 32] = 'SafeMath: division by zero'
                                        if _780:
                                            if (0 / _780) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _780) + t
                                            continue 
                                        _792 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _792 + 68] = mem[idx + _786 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_792 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _792 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_675 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_675 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_675 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_675 + 32]) / mem[_675 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _788 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_788] = 26
                                    mem[_788 + 32] = 'SafeMath: division by zero'
                                    if _780:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _781) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _781) / _780) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _781) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _781) / _780) + t
                                        continue 
                                    _794 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _794 + 68] = mem[idx + _788 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_794 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _794 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _552 + 68] = mem[idx + _547 + 32]
                            idx = idx + 32
                            continue 
                        mem[_552 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _552 + -mem[64] + 100
    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return _userInfo[address(arg1)].field_1024
}

function sub_608a1523(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= sub_622d5405:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'time should larger than all thing stated time'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if sub_622d5405 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[160] = 24
    mem[192] = 'SafeMath: modulo by zero' << 64
    if not sub_ebb4b65f:
        revert with 0, 'SafeMath: modulo by zero', 0
    if not block.timestamp - sub_622d5405 % sub_ebb4b65f:
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        mem[480] = 96
        mem[512] = _userInfo[address(arg1)].field_0
        mem[544] = _userInfo[address(arg1)].field_256
        mem[576] = _userInfo[address(arg1)].field_512
        mem[608] = _userInfo[address(arg1)].field_768
        mem[640] = _userInfo[address(arg1)].field_1024
        mem[672] = _userInfo[address(arg1)].field_1280
        mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 768
        mem[736] = _userInfo[address(arg1)].field_1792
        if not _userInfo[address(arg1)].field_1792:
            mem[704] = 736
            mem[0] = address(arg1)
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _187 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_187] = 0
                        mem[_187 + 32] = 0
                        mem[_187 + 64] = 0
                        mem[_187 + 96] = 0
                        mem[_187 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _199 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_199] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_199 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_199 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_199 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_199 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _206 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_206] = 29
                        mem[_206 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _211 + 68] = mem[idx + _206 + 32]
                                idx = idx + 32
                                continue 
                            mem[_211 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _211 + -mem[64] + 100
                        _220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_220] = 17
                        mem[_220 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_199]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _344 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_344] = 0
                                    mem[_344 + 32] = 0
                                    mem[_344 + 64] = 0
                                    mem[_344 + 96] = 0
                                    mem[_344 + 128] = 0
                                    mem[_344 + 160] = 0
                                    mem[_344 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _355 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_355] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_355 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_355 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_355 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_355 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_355 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _356 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_356] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_355 + 192] = _356
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_402] = 26
                                            mem[_402 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _411 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _411 + 68] = mem[idx + _402 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_411 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _411 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _406 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_406] = 26
                                        mem[_406 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _418 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _418 + 68] = mem[idx + _406 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_418 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _418 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_356 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _356 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _356 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_355 + 192] = _356
                                    if mem[_355 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_355 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _641 = mem[_355 + 128]
                                    _642 = mem[_355 + 32]
                                    if not mem[_355 + 32]:
                                        _660 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_660] = 26
                                        mem[_660 + 32] = 'SafeMath: division by zero'
                                        if _641:
                                            if (0 / _641) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _641) + t
                                            continue 
                                        _670 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _670 + 68] = mem[idx + _660 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_670 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _670 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_355 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_355 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_355 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_355 + 32]) / mem[_355 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _665 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_665] = 26
                                    mem[_665 + 32] = 'SafeMath: division by zero'
                                    if _641:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _642) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _642) / _641) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _642) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _642) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _642) / _641) + t
                                        continue 
                                    _678 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _678 + 68] = mem[idx + _665 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_678 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _678 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _224 + 68] = mem[idx + _220 + 32]
                            idx = idx + 32
                            continue 
                        mem[_224 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _224 + -mem[64] + 100
        else:
            mem[768] = _userInfo[address(arg1)][7].field_0
            idx = 768
            s = 0
            while (32 * _userInfo[address(arg1)].field_1792) + 736 > idx:
                mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[704] = 736
            mem[0] = address(arg1)
            mem[32] = 9
            if block.timestamp - (2 * sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > block.timestamp - (2 * sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _523 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_523] = 0
                        mem[_523 + 32] = 0
                        mem[_523 + 64] = 0
                        mem[_523 + 96] = 0
                        mem[_523 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _529 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_529] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_529 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_529 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_529 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_529 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 29
                        mem[_536 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _541 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _541 + 68] = mem[idx + _536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_541 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _541 + -mem[64] + 100
                        _550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_550] = 17
                        mem[_550 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > block.timestamp + (2 * sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_529]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _671 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_671] = 0
                                    mem[_671 + 32] = 0
                                    mem[_671 + 64] = 0
                                    mem[_671 + 96] = 0
                                    mem[_671 + 128] = 0
                                    mem[_671 + 160] = 0
                                    mem[_671 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _681 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_681] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_681 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_681 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_681 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_681 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_681 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _682 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_682] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_681 + 192] = _682
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _719 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_719] = 26
                                            mem[_719 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _725 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _725 + 68] = mem[idx + _719 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_725 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _725 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _722 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_722] = 26
                                        mem[_722 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _728 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _728 + 68] = mem[idx + _722 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_728 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _728 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_682 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _682 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _682 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_681 + 192] = _682
                                    if mem[_681 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_681 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _782 = mem[_681 + 128]
                                    _783 = mem[_681 + 32]
                                    if not mem[_681 + 32]:
                                        _787 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_787] = 26
                                        mem[_787 + 32] = 'SafeMath: division by zero'
                                        if _782:
                                            if (0 / _782) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _782) + t
                                            continue 
                                        _793 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _793 + 68] = mem[idx + _787 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_793 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _793 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_681 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_681 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_681 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_681 + 32]) / mem[_681 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_790] = 26
                                    mem[_790 + 32] = 'SafeMath: division by zero'
                                    if _782:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _783) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _783) / _782) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _783) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _783) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _783) / _782) + t
                                        continue 
                                    _796 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _796 + 68] = mem[idx + _790 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_796 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _796 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _554 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _554 + 68] = mem[idx + _550 + 32]
                            idx = idx + 32
                            continue 
                        mem[_554 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _554 + -mem[64] + 100
    else:
        if sub_ebb4b65f + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if block.timestamp - sub_622d5405 % sub_ebb4b65f > sub_ebb4b65f + block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 2 * sub_ebb4b65f > sub_ebb4b65f + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[352] = 0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        mem[544] = 96
        mem[576] = _userInfo[address(arg1)].field_0
        mem[608] = _userInfo[address(arg1)].field_256
        mem[640] = _userInfo[address(arg1)].field_512
        mem[672] = _userInfo[address(arg1)].field_768
        mem[704] = _userInfo[address(arg1)].field_1024
        mem[736] = _userInfo[address(arg1)].field_1280
        mem[64] = (32 * _userInfo[address(arg1)].field_1792) + 832
        mem[800] = _userInfo[address(arg1)].field_1792
        if not _userInfo[address(arg1)].field_1792:
            mem[768] = 800
            mem[0] = address(arg1)
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _182 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_182] = 0
                        mem[_182 + 32] = 0
                        mem[_182 + 64] = 0
                        mem[_182 + 96] = 0
                        mem[_182 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _196 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_196] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_196 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_196 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_196 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_196 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_202] = 29
                        mem[_202 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _210 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _210 + 68] = mem[idx + _202 + 32]
                                idx = idx + 32
                                continue 
                            mem[_210 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _210 + -mem[64] + 100
                        _217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_217] = 17
                        mem[_217 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_196]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _338 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_338] = 0
                                    mem[_338 + 32] = 0
                                    mem[_338 + 64] = 0
                                    mem[_338 + 96] = 0
                                    mem[_338 + 128] = 0
                                    mem[_338 + 160] = 0
                                    mem[_338 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _351 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_351] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_351 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_351 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_351 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_351 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_351 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _352 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_352] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_351 + 192] = _352
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_400] = 26
                                            mem[_400 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _408 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _408 + 68] = mem[idx + _400 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_408 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _408 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_404] = 26
                                        mem[_404 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _414 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _414 + 68] = mem[idx + _404 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_414 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _414 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_352 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _352 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _352 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_351 + 192] = _352
                                    if mem[_351 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_351 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _638 = mem[_351 + 128]
                                    _639 = mem[_351 + 32]
                                    if not mem[_351 + 32]:
                                        _658 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_658] = 26
                                        mem[_658 + 32] = 'SafeMath: division by zero'
                                        if _638:
                                            if (0 / _638) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _638) + t
                                            continue 
                                        _668 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _668 + 68] = mem[idx + _658 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_668 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _668 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_351 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_351 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_351 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_351 + 32]) / mem[_351 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _662 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_662] = 26
                                    mem[_662 + 32] = 'SafeMath: division by zero'
                                    if _638:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _639) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _639) / _638) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _639) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _639) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _639) / _638) + t
                                        continue 
                                    _672 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _672 + 68] = mem[idx + _662 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_672 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _672 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _222 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _222 + 68] = mem[idx + _217 + 32]
                            idx = idx + 32
                            continue 
                        mem[_222 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _222 + -mem[64] + 100
        else:
            mem[832] = _userInfo[address(arg1)][7].field_0
            idx = 832
            s = 0
            while (32 * _userInfo[address(arg1)].field_1792) + 800 > idx:
                mem[idx + 32] = _userInfo[address(arg1)][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[768] = 800
            mem[0] = address(arg1)
            mem[32] = 9
            if (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f) > _userInfo[address(arg1)].field_512:
                if _userInfo[address(arg1)].field_1792:
                    idx = 0
                    while idx < _userInfo[address(arg1)].field_1792:
                        mem[0] = sha3(address(arg1), 9) + 7
                        if _userInfo[address(arg1)][idx + 7].field_0 > (2 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                            idx = idx + 1
                            continue 
                        _518 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_518] = 0
                        mem[_518 + 32] = 0
                        mem[_518 + 64] = 0
                        mem[_518 + 96] = 0
                        mem[_518 + 128] = 0
                        mem[0] = _userInfo[address(arg1)][idx + 7].field_0
                        mem[32] = sha3(address(arg1), 9) + 6
                        _526 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_526] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_0
                        mem[_526 + 32] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256
                        mem[_526 + 64] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512
                        mem[_526 + 96] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768
                        mem[_526 + 128] = _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024
                        _532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_532] = 29
                        mem[_532 + 32] = 'lockedWithdrawed>lockedAmount'
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 > _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512:
                            _540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 29
                            idx = 0
                            while idx < 29:
                                mem[idx + _540 + 68] = mem[idx + _532 + 32]
                                idx = idx + 32
                                continue 
                            mem[_540 + 97] = 0
                            revert with memory
                              from mem[64]
                               len _540 + -mem[64] + 100
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_547] = 17
                        mem[_547 + 32] = 0x776974686472617765643e616d6f756e74000000000000000000000000000000
                        if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 <= _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256:
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 > 0:
                                s = sub_343e7302.length
                                t = 0
                                while s:
                                    require s - 1 < sub_343e7302.length
                                    mem[0] = 11
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        if t < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        continue 
                                    if sub_343e7302[s].field_0 > (3 * sub_ebb4b65f) + block.timestamp - (block.timestamp - sub_622d5405 % sub_ebb4b65f):
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= _userInfo[address(arg1)].field_512 + sub_ebb4b65f:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if sub_343e7302[s].field_0 <= mem[_526]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _669 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_669] = 0
                                    mem[_669 + 32] = 0
                                    mem[_669 + 64] = 0
                                    mem[_669 + 96] = 0
                                    mem[_669 + 128] = 0
                                    mem[_669 + 160] = 0
                                    mem[_669 + 192] = 96
                                    mem[0] = sub_343e7302[s].field_0
                                    mem[32] = 10
                                    _675 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_675] = sub_d8704fc9[stor11[s].field_0].field_0
                                    mem[_675 + 32] = sub_d8704fc9[stor11[s].field_0].field_256
                                    mem[_675 + 64] = sub_d8704fc9[stor11[s].field_0].field_512
                                    mem[_675 + 96] = sub_d8704fc9[stor11[s].field_0].field_768
                                    mem[_675 + 128] = sub_d8704fc9[stor11[s].field_0].field_1024
                                    mem[_675 + 160] = sub_d8704fc9[stor11[s].field_0].field_1280
                                    _676 = mem[64]
                                    mem[64] = mem[64] + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) + 32
                                    mem[_676] = sub_d8704fc9[stor11[s].field_0].field_1536
                                    if not sub_d8704fc9[stor11[s].field_0].field_1536:
                                        mem[_675 + 192] = _676
                                        if sub_d8704fc9[stor11[s].field_0].field_256 <= 0:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_1024:
                                            s = s - 1
                                            t = t
                                            continue 
                                        if not sub_d8704fc9[stor11[s].field_0].field_256:
                                            _718 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_718] = 26
                                            mem[_718 + 32] = 'SafeMath: division by zero'
                                            if sub_d8704fc9[stor11[s].field_0].field_1024:
                                                if (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                s = s - 1
                                                t = (0 / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                                continue 
                                            _724 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _724 + 68] = mem[idx + _718 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_724 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _724 + -mem[64] + 100
                                        if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_256 != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _720 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_720] = 26
                                        mem[_720 + 32] = 'SafeMath: division by zero'
                                        if sub_d8704fc9[stor11[s].field_0].field_1024:
                                            if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * sub_d8704fc9[stor11[s].field_0].field_256) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * sub_d8704fc9[stor11[s].field_0].field_256) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * sub_d8704fc9[stor11[s].field_0].field_256) / sub_d8704fc9[stor11[s].field_0].field_1024) + t
                                            continue 
                                        _726 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _726 + 68] = mem[idx + _720 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_726 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _726 + -mem[64] + 100
                                    mem[0] = sha3(sub_343e7302[s].field_0, 10) + 6
                                    mem[_676 + 32] = sub_d8704fc9[stor11[s].field_0][6].field_0
                                    u = _676 + 32
                                    v = sha3(sha3(sub_343e7302[s].field_0, 10) + 6)
                                    while _676 + (32 * sub_d8704fc9[stor11[s].field_0].field_1536) > u:
                                        mem[u + 32] = address(sub_2b5a6b32[v])
                                        u = u + 32
                                        v = v + 1
                                        continue 
                                    mem[_675 + 192] = _676
                                    if mem[_675 + 32] <= 0:
                                        s = s - 1
                                        t = t
                                        continue 
                                    if not mem[_675 + 128]:
                                        s = s - 1
                                        t = t
                                        continue 
                                    _780 = mem[_675 + 128]
                                    _781 = mem[_675 + 32]
                                    if not mem[_675 + 32]:
                                        _786 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_786] = 26
                                        mem[_786 + 32] = 'SafeMath: division by zero'
                                        if _780:
                                            if (0 / _780) + t < t:
                                                revert with 0, 'SafeMath: addition overflow'
                                            s = s - 1
                                            t = (0 / _780) + t
                                            continue 
                                        _792 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _792 + 68] = mem[idx + _786 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_792 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _792 + -mem[64] + 100
                                    if (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * mem[_675 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * mem[_675 + 32]) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * mem[_675 + 32]) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * mem[_675 + 32]) / mem[_675 + 32] != _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 + _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 - _userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _788 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_788] = 26
                                    mem[_788 + 32] = 'SafeMath: division by zero'
                                    if _780:
                                        if ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _781) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _781) / _780) + t < t:
                                            revert with 0, 'SafeMath: addition overflow'
                                        s = s - 1
                                        t = ((_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_512 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_1024 * _781) + (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_256 * _781) - (_userInfo[address(arg1)][6][_userInfo[address(arg1)][idx + 7].field_0].field_768 * _781) / _780) + t
                                        continue 
                                    _794 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _794 + 68] = mem[idx + _788 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_794 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _794 + -mem[64] + 100
                                if t < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        _552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 17
                        idx = 0
                        while idx < 17:
                            mem[idx + _552 + 68] = mem[idx + _547 + 32]
                            idx = idx + 32
                            continue 
                        mem[_552 + 85] = 0
                        revert with memory
                          from mem[64]
                           len _552 + -mem[64] + 100
    if _userInfo[address(arg1)].field_1024 < _userInfo[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return _userInfo[address(arg1)].field_1024
}



}
