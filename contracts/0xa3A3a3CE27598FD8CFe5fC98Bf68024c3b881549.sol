contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
address sub_244f8cb2Address;
address ROUTERAddress;
address BUSDAddress;
address WBNBAddress;
array of struct sub_7cc28c83;
mapping of uint256 lockOf;
mapping of struct sub_3d1dfd8d;
uint256 total_staked;
uint256 sub_22624dd1;
uint256 sub_a673e31a;
uint256 sub_67f3886f;
uint256 sub_dabaf424;

function sub_22624dd1(?) payable {
    return sub_22624dd1
}

function sub_244f8cb2(?) payable {
    return sub_244f8cb2Address
}

function ROUTER() payable {
    return ROUTERAddress
}

function sub_3d1dfd8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3d1dfd8d[arg1].field_0, sub_3d1dfd8d[arg1].field_256, sub_3d1dfd8d[arg1].field_512
}

function BUSD() payable {
    return BUSDAddress
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockOf[arg1]
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function sub_67f3886f(?) payable {
    return sub_67f3886f
}

function sub_7cc28c83(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_7cc28c83[arg1].field_0
    return sub_7cc28c83[arg1][arg2].field_0, 
           sub_7cc28c83[arg1][arg2].field_256,
           sub_7cc28c83[arg1][arg2].field_512,
           sub_7cc28c83[arg1][arg2].field_768,
           sub_7cc28c83[arg1][arg2].field_1024,
           sub_7cc28c83[arg1][arg2].field_1280
}

function owner() payable {
    return owner
}

function WBNB() payable {
    return WBNBAddress
}

function sub_a673e31a(?) payable {
    return sub_a673e31a
}

function total_staked() payable {
    return total_staked
}

function getStakeOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_7cc28c83[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_7cc28c83[address(arg1)][arg2].field_256
}

function sub_dabaf424(?) payable {
    return sub_dabaf424
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

function sub_8ec876e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dabaf424 = arg1
}

function setPenaltyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a673e31a = arg1
}

function setWithdrawalDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_67f3886f = arg1
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

function sub_b4b7f412(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WBNBAddress = address(arg1)
    BUSDAddress = address(arg2)
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

function sub_e52809f8(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_244f8cb2Address = address(arg1)
    ROUTERAddress = address(arg2)
    WBNBAddress = address(arg3)
    BUSDAddress = address(arg4)
}

function sub_ce2ac31c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '0 is default. Use index more than 0.'
    sub_3d1dfd8d[arg1].field_0 = arg2
    sub_3d1dfd8d[arg1].field_256 = arg3
    sub_3d1dfd8d[arg1].field_512 = arg4
    if sub_22624dd1 > -2:
        revert with 'NH{q', 17
    sub_22624dd1++
}

function sub_91b97437(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 >= sub_7cc28c83[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg2 >= sub_7cc28c83[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg2 >= sub_7cc28c83[address(arg1)].field_0:
        revert with 'NH{q', 50
    if block.number < sub_7cc28c83[address(arg1)][arg2].field_768:
        revert with 'NH{q', 17
    if arg2 >= sub_7cc28c83[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_7cc28c83[address(arg1)][arg2].field_256 and block.number - sub_7cc28c83[address(arg1)][arg2].field_768 > -1 / sub_7cc28c83[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if (block.number * sub_7cc28c83[address(arg1)][arg2].field_256) - (sub_7cc28c83[address(arg1)][arg2].field_768 * sub_7cc28c83[address(arg1)][arg2].field_256) and sub_3d1dfd8d[stor6[address(arg1)][arg2].field_1024].field_0 > -1 / (block.number * sub_7cc28c83[address(arg1)][arg2].field_256) - (sub_7cc28c83[address(arg1)][arg2].field_768 * sub_7cc28c83[address(arg1)][arg2].field_256):
        revert with 'NH{q', 17
    if not sub_3d1dfd8d[stor6[address(arg1)][arg2].field_1024].field_256:
        revert with 'NH{q', 18
    return ((block.number * sub_7cc28c83[address(arg1)][arg2].field_256 * sub_3d1dfd8d[stor6[address(arg1)][arg2].field_1024].field_0) - (sub_7cc28c83[address(arg1)][arg2].field_768 * sub_7cc28c83[address(arg1)][arg2].field_256 * sub_3d1dfd8d[stor6[address(arg1)][arg2].field_1024].field_0) / sub_3d1dfd8d[stor6[address(arg1)][arg2].field_1024].field_256)
}

function sub_9b2bfd13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 3
    mem[128] = BUSDAddress
    mem[160] = WBNBAddress
    mem[192] = sub_244f8cb2Address
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 3
    idx = 0
    s = 128
    t = 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(ROUTERAddress)
    staticcall ROUTERAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _21 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
    _22 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = _21 + 256
    t = ceil32(return_data.size) + 256
    while idx < _22:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 >= _22:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_a1824b81(?) payable {
    if sub_22624dd1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_22624dd1
    mem[64] = (32 * sub_22624dd1) + 128
    if not sub_22624dd1:
        idx = 0
        while idx < sub_22624dd1:
            mem[0] = idx
            mem[32] = 8
            _24 = mem[64]
            mem[64] = mem[64] + 96
            mem[_24] = sub_3d1dfd8d[idx].field_0
            mem[_24 + 32] = sub_3d1dfd8d[idx].field_256
            mem[_24 + 64] = sub_3d1dfd8d[idx].field_512
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _24
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _27 = mem[64]
        mem[mem[64]] = 32
        _28 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _28:
            _45 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_45 + 32]
            mem[t + 64] = mem[_45 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _27 + (96 * _28) + -mem[64] + 64
    mem[64] = (32 * sub_22624dd1) + 224
    mem[(32 * sub_22624dd1) + 128] = 0
    mem[(32 * sub_22624dd1) + 160] = 0
    mem[(32 * sub_22624dd1) + 192] = 0
    mem[var8001] = (32 * sub_22624dd1) + 128
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * sub_22624dd1) + 128] = 0
        mem[(32 * sub_22624dd1) + 160] = 0
        mem[(32 * sub_22624dd1) + 192] = 0
        mem[s + 32] = (32 * sub_22624dd1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_22624dd1:
        mem[0] = idx
        mem[32] = 8
        _61 = mem[64]
        mem[64] = mem[64] + 96
        mem[_61] = sub_3d1dfd8d[idx].field_0
        mem[_61 + 32] = sub_3d1dfd8d[idx].field_256
        mem[_61 + 64] = sub_3d1dfd8d[idx].field_512
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _61
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _64:
        _70 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_70 + 32]
        mem[t + 64] = mem[_70 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _63 + (96 * _64) + -mem[64] + 64
}

function getTotalStake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_7cc28c83[address(arg1)].field_0:
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -sub_7cc28c83[address(arg1)][idx].field_256 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + sub_7cc28c83[address(arg1)][idx].field_256
        continue 
    return (s * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0)
}

function calculateReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_7cc28c83[address(arg1)].field_0:
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if block.number < sub_7cc28c83[address(arg1)][idx].field_768:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(arg1)][idx].field_256 and block.number - sub_7cc28c83[address(arg1)][idx].field_768 > -1 / sub_7cc28c83[address(arg1)][idx].field_256:
            revert with 'NH{q', 17
        if (block.number * sub_7cc28c83[address(arg1)][idx].field_256) - (sub_7cc28c83[address(arg1)][idx].field_768 * sub_7cc28c83[address(arg1)][idx].field_256) and sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_0 > -1 / (block.number * sub_7cc28c83[address(arg1)][idx].field_256) - (sub_7cc28c83[address(arg1)][idx].field_768 * sub_7cc28c83[address(arg1)][idx].field_256):
            revert with 'NH{q', 17
        if not sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_256:
            revert with 'NH{q', 18
        if s > -((block.number * sub_7cc28c83[address(arg1)][idx].field_256 * sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_0) - (sub_7cc28c83[address(arg1)][idx].field_768 * sub_7cc28c83[address(arg1)][idx].field_256 * sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_256) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        s = s + ((block.number * sub_7cc28c83[address(arg1)][idx].field_256 * sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_0) - (sub_7cc28c83[address(arg1)][idx].field_768 * sub_7cc28c83[address(arg1)][idx].field_256 * sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(arg1)][idx].field_1024].field_256)
        continue 
    return (s * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0)
}

function sub_068fafd3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < sub_7cc28c83[address(arg1)].field_0:
        if idx >= sub_7cc28c83[address(arg1)].field_0:
            revert with 'NH{q', 50
        if s > -sub_7cc28c83[address(arg1)][idx].field_1280 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 6
        idx = idx + 1
        s = s + sub_7cc28c83[address(arg1)][idx].field_1280
        continue 
    require ext_code.size(this.address)
    staticcall this.address.0xd82e3962 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if s * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return ((s * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0 * sub_7cc28c83[address(arg1)].field_0) + ext_call.return_data[0])
}

function harvest(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 <= 0:
        revert with 0, 'Must pick a package.'
    if arg1 > sub_22624dd1:
        revert with 0, 'Must pick a package.'
    mem[0] = msg.sender
    mem[32] = 6
    idx = 0
    s = 0
    t = 0
    while idx < sub_7cc28c83[address(msg.sender)].field_0:
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1024 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if block.number < sub_7cc28c83[address(msg.sender)][idx].field_768:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_256 and block.number - sub_7cc28c83[address(msg.sender)][idx].field_768 > -1 / sub_7cc28c83[address(msg.sender)][idx].field_256:
            revert with 'NH{q', 17
        if (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256) and sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0 > -1 / (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256):
            revert with 'NH{q', 17
        if not sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256:
            revert with 'NH{q', 18
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_768 = block.number
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1280 > -((block.number * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256) - 1:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_1280 += (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1280 < sub_7cc28c83[address(msg.sender)][idx].field_1280:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_1280 = 0
        mem[32] = 6
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[mem[64]] = sub_7cc28c83[address(msg.sender)][idx].field_1280
        mem[mem[64] + 32] = (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256
        mem[mem[64] + 64] = sub_7cc28c83[address(msg.sender)][idx].field_1280
        emit 0xe48bba14: sub_7cc28c83[address(msg.sender)][idx].field_1280, (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256, sub_7cc28c83[address(msg.sender)][idx].field_1280, msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = idx + 1
        s = sub_7cc28c83[address(msg.sender)][idx].field_1280
        t = (block.number * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) - (sub_7cc28c83[address(msg.sender)][idx].field_768 * sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_0) / sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_256
        continue 
    if t <= 0:
        revert with 0, 'No reward to harvest.'
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_244f8cb2Address)
    staticcall sub_244f8cb2Address.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_53] == mem[_53]
    if mem[_53] < t:
        revert with 0, 'Insufficient balance in contract.'
    _58 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s
    _60 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_58 + 100] = 32
    mem[_58 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_244f8cb2Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    _70 = mem[_60]
    mem[_58 + 164 len ceil32(mem[_60])] = mem[_60 + 32 len ceil32(mem[_60])]
    if ceil32(_70) > _70:
        mem[_58 + _70 + 164] = 0
    call sub_244f8cb2Address with:
         gas gas_remaining wei
        args mem[_58 + 168 len _70 - 4]
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
        mem[_58 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_58 + 196] == bool(mem[_58 + 196])
            if not mem[_58 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    require ext_code.size(sub_244f8cb2Address)
    staticcall sub_244f8cb2Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient balance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(sub_244f8cb2Address)
    staticcall sub_244f8cb2Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient allowance.'
    if arg1 <= 0:
        revert with 0, 'Stake amount must be greater than zero.'
    if arg2 <= 0:
        revert with 0, 'Must pick a package.'
    if arg2 > sub_22624dd1:
        revert with 0, 'Must pick a package.'
    idx = 0
    s = 1
    while idx < sub_7cc28c83[address(msg.sender)].field_0:
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1024 != arg2:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_256 <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_256 != sub_7cc28c83[address(msg.sender)][idx].field_512:
            revert with 0, 'Unable to restake.'
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_0 = block.timestamp
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_256 > -arg1 - 1:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_256 += arg1
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_512 > -arg1 - 1:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_512 += arg1
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = idx + 1
        s = 0
        continue 
    if not s:
        if total_staked > -arg1 - 1:
            revert with 'NH{q', 17
        total_staked += arg1
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_244f8cb2Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call sub_244f8cb2Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + 96] = block.timestamp
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        mem[(2 * ceil32(return_data.size)) + 192] = block.number
        mem[(2 * ceil32(return_data.size)) + 224] = arg2
        mem[(2 * ceil32(return_data.size)) + 160] = arg1
        sub_7cc28c83[address(msg.sender)].field_0++
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_256 = arg1
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_512 = arg1
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_768 = block.number
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_1024 = arg2
        sub_7cc28c83[address(msg.sender)][sub_7cc28c83[address(msg.sender)].field_0].field_1280 = 0
        if total_staked > -arg1 - 1:
            revert with 'NH{q', 17
        total_staked += arg1
        mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 356] = this.address
        mem[(2 * ceil32(return_data.size)) + 388] = arg1
        mem[(2 * ceil32(return_data.size)) + 288] = 100
        mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 420] = 32
        mem[(2 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_244f8cb2Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 584] = 0
        call sub_244f8cb2Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 516] == bool(mem[(2 * ceil32(return_data.size)) + 516])
                if not mem[(2 * ceil32(return_data.size)) + 516]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Staked(arg1, arg2, msg.sender);
    stor1 = 1
}

function unstake(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < sub_7cc28c83[address(msg.sender)].field_0:
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1024 == arg1:
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if sub_7cc28c83[address(msg.sender)][idx].field_512 <= 0:
                revert with 0, 'Stake amount is zero.'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = idx + 1
        continue 
    if lockOf[address(msg.sender)] > -sub_67f3886f - 1:
        revert with 'NH{q', 17
    if lockOf[address(msg.sender)] + sub_67f3886f >= block.timestamp:
        revert with 0, 'Withdrawal locked.'
    if arg1 <= 0:
        revert with 0, 'Must pick a package.'
    if arg1 > sub_22624dd1:
        revert with 0, 'Must pick a package.'
    mem[0] = msg.sender
    mem[32] = 6
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < sub_7cc28c83[address(msg.sender)].field_0:
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1024 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_512 <= 0:
            revert with 0, 'Stake amount is zero.'
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_256 and sub_dabaf424 > -1 / sub_7cc28c83[address(msg.sender)][idx].field_256:
            revert with 'NH{q', 17
        mem[32] = 6
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 6)
        if sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100 > sub_7cc28c83[address(msg.sender)][idx].field_512:
            revert with 0, 'Insufficient stake to withdraw.'
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_244f8cb2Address)
        staticcall sub_244f8cb2Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _347 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_347] == mem[_347]
        if mem[_347] < sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100:
            revert with 0, 'Insufficient balance in contract.'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(this.address)
        staticcall this.address.0x91b97437 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_385]
        require mem[_385] == mem[_385]
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_1280 > -mem[_385] - 1:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_1280 += mem[_385]
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_512 > sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100:
            if sub_7cc28c83[address(msg.sender)][idx].field_512 < sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100:
                revert with 'NH{q', 17
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            sub_7cc28c83[address(msg.sender)][idx].field_512 -= sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if sub_7cc28c83[address(msg.sender)][idx].field_0 > -sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_512 - 1:
                revert with 'NH{q', 17
            if sub_7cc28c83[address(msg.sender)][idx].field_0 + sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_512 <= block.timestamp:
                lockOf[address(msg.sender)] = block.timestamp
                if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[32] = 6
                if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[mem[64]] = _390
                mem[mem[64] + 32] = s
                mem[mem[64] + 64] = sub_7cc28c83[address(msg.sender)][idx].field_256
                mem[mem[64] + 96] = sub_7cc28c83[address(msg.sender)][idx].field_512
                mem[mem[64] + 128] = sub_7cc28c83[address(msg.sender)][idx].field_1024
                emit Unstaked(_390, s, sub_7cc28c83[address(msg.sender)][idx].field_256, sub_7cc28c83[address(msg.sender)][idx].field_512, sub_7cc28c83[address(msg.sender)][idx].field_1024, msg.sender);
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 6
                idx = idx + 1
                s = s
                t = sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100
                u = _390
                continue 
            if sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100 and sub_a673e31a > -1 / sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100:
                revert with 'NH{q', 17
            lockOf[address(msg.sender)] = block.timestamp
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[32] = 6
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[mem[64]] = _390
            mem[mem[64] + 32] = sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100 * sub_a673e31a / 100
            mem[mem[64] + 64] = sub_7cc28c83[address(msg.sender)][idx].field_256
            mem[mem[64] + 96] = sub_7cc28c83[address(msg.sender)][idx].field_512
            mem[mem[64] + 128] = sub_7cc28c83[address(msg.sender)][idx].field_1024
            emit Unstaked(_390, sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100 * sub_a673e31a / 100, sub_7cc28c83[address(msg.sender)][idx].field_256, sub_7cc28c83[address(msg.sender)][idx].field_512, sub_7cc28c83[address(msg.sender)][idx].field_1024, msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100 * sub_a673e31a / 100
            t = sub_7cc28c83[address(msg.sender)][idx].field_256 * sub_dabaf424 / 100
            u = _390
            continue 
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_512 < sub_7cc28c83[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        sub_7cc28c83[address(msg.sender)][idx].field_512 = 0
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_7cc28c83[address(msg.sender)][idx].field_0 > -sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_512 - 1:
            revert with 'NH{q', 17
        if sub_7cc28c83[address(msg.sender)][idx].field_0 + sub_3d1dfd8d[stor6[address(msg.sender)][idx].field_1024].field_512 <= block.timestamp:
            lockOf[address(msg.sender)] = block.timestamp
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[32] = 6
            if idx >= sub_7cc28c83[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[mem[64]] = _390
            mem[mem[64] + 32] = s
            mem[mem[64] + 64] = sub_7cc28c83[address(msg.sender)][idx].field_256
            mem[mem[64] + 96] = sub_7cc28c83[address(msg.sender)][idx].field_512
            mem[mem[64] + 128] = sub_7cc28c83[address(msg.sender)][idx].field_1024
            emit Unstaked(_390, s, sub_7cc28c83[address(msg.sender)][idx].field_256, sub_7cc28c83[address(msg.sender)][idx].field_512, sub_7cc28c83[address(msg.sender)][idx].field_1024, msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 6
            idx = idx + 1
            s = s
            t = sub_7cc28c83[address(msg.sender)][idx].field_512
            u = _390
            continue 
        if sub_7cc28c83[address(msg.sender)][idx].field_512 and sub_a673e31a > -1 / sub_7cc28c83[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        lockOf[address(msg.sender)] = block.timestamp
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[32] = 6
        if idx >= sub_7cc28c83[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[mem[64]] = _390
        mem[mem[64] + 32] = sub_7cc28c83[address(msg.sender)][idx].field_512 * sub_a673e31a / 100
        mem[mem[64] + 64] = sub_7cc28c83[address(msg.sender)][idx].field_256
        mem[mem[64] + 96] = sub_7cc28c83[address(msg.sender)][idx].field_512
        mem[mem[64] + 128] = sub_7cc28c83[address(msg.sender)][idx].field_1024
        emit Unstaked(_390, sub_7cc28c83[address(msg.sender)][idx].field_512 * sub_a673e31a / 100, sub_7cc28c83[address(msg.sender)][idx].field_256, sub_7cc28c83[address(msg.sender)][idx].field_512, sub_7cc28c83[address(msg.sender)][idx].field_1024, msg.sender);
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = idx + 1
        s = sub_7cc28c83[address(msg.sender)][idx].field_512 * sub_a673e31a / 100
        t = sub_7cc28c83[address(msg.sender)][idx].field_512
        u = _390
        continue 
    if total_staked < t:
        revert with 'NH{q', 17
    total_staked -= t
    if t < s:
        revert with 'NH{q', 17
    _336 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = t - s
    _341 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_336 + 100] = 32
    mem[_336 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_244f8cb2Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    _351 = mem[_341]
    mem[_336 + 164 len ceil32(mem[_341])] = mem[_341 + 32 len ceil32(mem[_341])]
    if ceil32(_351) > _351:
        mem[_336 + _351 + 164] = 0
    call sub_244f8cb2Address with:
         gas gas_remaining wei
        args mem[_336 + 168 len _351 - 4]
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
        mem[_336 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_336 + 196] == bool(mem[_336 + 196])
            if not mem[_336 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}



}
