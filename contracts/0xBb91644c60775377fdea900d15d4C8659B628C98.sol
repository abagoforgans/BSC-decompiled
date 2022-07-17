contract main {




// =====================  Runtime code  =====================


#
#  - sub_8a1ef33c(?)
#
address owner;
array of uint256 stor1;
address sub_e6a572c5Address;
address sub_36e480d0Address;
address sub_00025164Address;
uint256 stor5;
uint256 stor6;
mapping of struct sub_69894cf7;
array of uint256 stor8;
array of struct stor9;

function sub_00025164(?) payable {
    return sub_00025164Address
}

function lotteries(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(sub_69894cf7[arg1].field_1280) >= 3:
        revert with 'NH{q', 33
    return sub_69894cf7[arg1].field_0, 
           sub_69894cf7[arg1].field_256,
           sub_69894cf7[arg1].field_512,
           sub_69894cf7[arg1].field_768,
           sub_69894cf7[arg1].field_1024,
           uint8(sub_69894cf7[arg1].field_1280)
}

function sub_36e480d0(?) payable {
    return sub_36e480d0Address
}

function sub_69894cf7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_69894cf7[arg1][7][1].field_0, 
           sub_69894cf7[arg1][7][2].field_0,
           sub_69894cf7[arg1][7][3].field_0,
           sub_69894cf7[arg1][7][4].field_0,
           sub_69894cf7[arg1][7][5].field_0,
           sub_69894cf7[arg1][7][6].field_0
}

function owner() payable {
    return owner
}

function getUserClaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(sub_69894cf7[arg2][8][address(arg1)].field_0))
}

function sub_abf13393(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return uint8(sub_69894cf7[arg2][9][address(arg1)].field_0)
}

function sub_e6a572c5(?) payable {
    return sub_e6a572c5Address
}

function isOwner() payable {
    return (msg.sender == owner)
}

function _fallback() payable {
    revert with 0, 'Refuse to receive MATIC TOKEN'
}

function sub_1252589e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_e6a572c5Address = address(arg1)
}

function currentRound() payable {
    if uint8(sub_69894cf7[stor5].field_1280) > 2:
        revert with 'NH{q', 33
    return stor5, uint8(sub_69894cf7[stor5].field_1280)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_9ecc6e2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_e6a572c5Address != msg.sender:
        revert with 0, 'Only Randomer Call'
    emit 0x92a272c7: msg.sender, arg1
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

function sub_040ae259(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(sub_69894cf7[stor5].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[stor5].field_1280) == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Current round has not yet opened!'
    if stor5 == -1:
        revert with 'NH{q', 17
    stor5++
    uint8(sub_69894cf7[stor5].field_1280) = 2
    sub_69894cf7[stor5].field_0 = arg1
    sub_69894cf7[stor5].field_512 = arg2
    emit 0xa79d7edf: stor5
}

function sub_69277ff2(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall sub_36e480d0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call sub_36e480d0Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function lottery() payable {
    if block.timestamp <= sub_69894cf7[stor5].field_512:
        revert with 0, 'Not a lottery time!'
    if uint8(sub_69894cf7[stor5].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[stor5].field_1280) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The current round is not started or has ended!'
    uint8(sub_69894cf7[stor5].field_1280) = 0
    call sub_e6a572c5Address.getRandomNumber(uint256 arg1) with:
         gas gas_remaining wei
        args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor6 = stor5
    emit 0x789af90e: stor5
}

function sub_0a32213e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 8)
    mem[64] = (32 * stor8[address(arg1)][arg2]) + 128
    mem[96] = stor8[address(arg1)][arg2]
    s = 128
    idx = 0
    while idx < stor8[address(arg1)][arg2]:
        mem[0] = sha3(arg2, sha3(address(arg1), 8))
        _16 = mem[64]
        mem[64] = mem[64] + 192
        mem[_16] = stor8[address(arg1)][arg2][idx]
        t = _16
        u = (6 * idx) + sha3(sha3(arg2, sha3(address(arg1), 8)))
        while _16 + 192 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        u = 0
        v = mem[s]
        w = t
        while u < 6:
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getWinningNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'This round has not lottery'
    mem[ceil32(return_data.size) + 96] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall sub_e6a572c5Address.0x74ecf4b5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _11
    require _10 + (32 * _11) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _10 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _10 + (32 * _11) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _11
    mem[mem[64] + 64 len 32 * _11] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _11]
    return Array(len=_11, data=mem[mem[64] + 64 len 32 * _11])
}

function calculateBonus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg2
    mem[32] = 7
    if uint8(sub_69894cf7[arg2].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[arg2].field_1280) != 1:
        return 0
    mem[100] = arg2
    staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'This round has not lottery'
    mem[ceil32(return_data.size) + 96] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg2
    staticcall sub_e6a572c5Address.0x74ecf4b5 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _14
    require _13 + (32 * _14) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _13 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _13 + (32 * _14) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 8)
    _78 = mem[64]
    mem[64] = mem[64] + (32 * stor8[address(arg1)][arg2]) + 32
    mem[_78] = stor8[address(arg1)][arg2]
    s = _78 + 32
    idx = 0
    while idx < stor8[address(arg1)][arg2]:
        mem[0] = sha3(arg2, sha3(address(arg1), 8))
        _188 = mem[64]
        mem[64] = mem[64] + 192
        mem[_188] = stor8[address(arg1)][arg2][idx]
        t = _188
        u = (6 * idx) + sha3(sha3(arg2, sha3(address(arg1), 8)))
        while _188 + 192 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _188
        s = s + 32
        idx = idx + 1
        continue 
    _242 = mem[_78]
    idx = 0
    while uint8(idx) < _242:
        if uint8(idx) >= mem[_78]:
            revert with 'NH{q', 50
        if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if mem[(2 * ceil32(return_data.size)) + 128] == mem[mem[(32 * uint8(idx)) + _78 + 32]]:
            if uint8(idx) >= mem[_78]:
                revert with 'NH{q', 50
            if 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[(2 * ceil32(return_data.size)) + 160] != mem[mem[(32 * uint8(idx)) + _78 + 32] + 32]:
                mem[0] = arg2
                mem[32] = 7
                if sub_69894cf7[arg2].field_768 and 3 > -1 / sub_69894cf7[arg2].field_768:
                    revert with 'NH{q', 17
                if not sub_69894cf7[arg2][7][1].field_0:
                    revert with 'NH{q', 18
                if 0 > -(3 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][1].field_0) - 1:
                    revert with 'NH{q', 17
            else:
                if uint8(idx) >= mem[_78]:
                    revert with 'NH{q', 50
                if 2 >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if mem[(2 * ceil32(return_data.size)) + 192] != mem[mem[(32 * uint8(idx)) + _78 + 32] + 64]:
                    mem[0] = arg2
                    mem[32] = 7
                    if sub_69894cf7[arg2].field_768 and 6 > -1 / sub_69894cf7[arg2].field_768:
                        revert with 'NH{q', 17
                    if not sub_69894cf7[arg2][7][2].field_0:
                        revert with 'NH{q', 18
                    if 0 > -(6 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][2].field_0) - 1:
                        revert with 'NH{q', 17
                else:
                    if uint8(idx) >= mem[_78]:
                        revert with 'NH{q', 50
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    if mem[(2 * ceil32(return_data.size)) + 224] != mem[mem[(32 * uint8(idx)) + _78 + 32] + 96]:
                        mem[0] = arg2
                        mem[32] = 7
                        if sub_69894cf7[arg2].field_768 and 10 > -1 / sub_69894cf7[arg2].field_768:
                            revert with 'NH{q', 17
                        if not sub_69894cf7[arg2][7][3].field_0:
                            revert with 'NH{q', 18
                        if 0 > -(10 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][3].field_0) - 1:
                            revert with 'NH{q', 17
                    else:
                        if uint8(idx) >= mem[_78]:
                            revert with 'NH{q', 50
                        if 4 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 'NH{q', 50
                        if mem[(2 * ceil32(return_data.size)) + 256] != mem[mem[(32 * uint8(idx)) + _78 + 32] + 128]:
                            mem[0] = arg2
                            mem[32] = 7
                            if sub_69894cf7[arg2].field_768 and 15 > -1 / sub_69894cf7[arg2].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[arg2][7][4].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(15 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][4].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(idx) >= mem[_78]:
                                revert with 'NH{q', 50
                            if 5 >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 'NH{q', 50
                            mem[0] = arg2
                            mem[32] = 7
                            if mem[(2 * ceil32(return_data.size)) + 288] == mem[mem[(32 * uint8(idx)) + _78 + 32] + 160]:
                                if sub_69894cf7[arg2].field_768 and 40 > -1 / sub_69894cf7[arg2].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[arg2][7][6].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(40 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][6].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_69894cf7[arg2].field_768 and 26 > -1 / sub_69894cf7[arg2].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[arg2][7][5].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(26 * sub_69894cf7[arg2].field_768 / 100 / sub_69894cf7[arg2][7][5].field_0) - 1:
                                    revert with 'NH{q', 17
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        _242 = mem[_78]
        idx = uint8(idx) + 1
        continue 
    return 0, bool(uint8(sub_69894cf7[arg2][8][address(arg1)].field_0))
}

function sub_6effec72(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if uint8(sub_69894cf7[arg1].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[arg1].field_1280) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The current wheel has not arrived at the settlement phase!'
    mem[0] = arg1
    mem[32] = 7
    if uint8(sub_69894cf7[arg1].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[arg1].field_1280) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wheel activity has not been award'
    mem[100] = arg1
    staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'This round has not lottery'
    mem[ceil32(return_data.size) + 96] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall sub_e6a572c5Address.0x74ecf4b5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _23
    require _22 + (32 * _23) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _22 + 128
    s = (2 * ceil32(return_data.size)) + 128
    while idx < ceil32(return_data.size) + _22 + (32 * _23) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 8)
    _89 = mem[64]
    mem[64] = mem[64] + (32 * stor8[address(msg.sender)][arg1]) + 32
    mem[_89] = stor8[address(msg.sender)][arg1]
    s = _89 + 32
    idx = 0
    while idx < stor8[address(msg.sender)][arg1]:
        mem[0] = sha3(arg1, sha3(address(msg.sender), 8))
        _203 = mem[64]
        mem[64] = mem[64] + 192
        mem[_203] = stor8[address(msg.sender)][arg1][idx]
        t = _203
        u = (6 * idx) + sha3(sha3(arg1, sha3(address(msg.sender), 8)))
        while _203 + 192 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _203
        s = s + 32
        idx = idx + 1
        continue 
    _259 = mem[_89]
    idx = 0
    while uint8(idx) < _259:
        if uint8(idx) >= mem[_89]:
            revert with 'NH{q', 50
        if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if mem[(2 * ceil32(return_data.size)) + 128] == mem[mem[(32 * uint8(idx)) + _89 + 32]]:
            if uint8(idx) >= mem[_89]:
                revert with 'NH{q', 50
            if 1 >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[(2 * ceil32(return_data.size)) + 160] != mem[mem[(32 * uint8(idx)) + _89 + 32] + 32]:
                mem[0] = arg1
                mem[32] = 7
                if sub_69894cf7[arg1].field_768 and 3 > -1 / sub_69894cf7[arg1].field_768:
                    revert with 'NH{q', 17
                if not sub_69894cf7[arg1][7][1].field_0:
                    revert with 'NH{q', 18
                if 0 > -(3 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][1].field_0) - 1:
                    revert with 'NH{q', 17
            else:
                if uint8(idx) >= mem[_89]:
                    revert with 'NH{q', 50
                if 2 >= mem[(2 * ceil32(return_data.size)) + 96]:
                    revert with 'NH{q', 50
                if mem[(2 * ceil32(return_data.size)) + 192] != mem[mem[(32 * uint8(idx)) + _89 + 32] + 64]:
                    mem[0] = arg1
                    mem[32] = 7
                    if sub_69894cf7[arg1].field_768 and 6 > -1 / sub_69894cf7[arg1].field_768:
                        revert with 'NH{q', 17
                    if not sub_69894cf7[arg1][7][2].field_0:
                        revert with 'NH{q', 18
                    if 0 > -(6 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][2].field_0) - 1:
                        revert with 'NH{q', 17
                else:
                    if uint8(idx) >= mem[_89]:
                        revert with 'NH{q', 50
                    if 3 >= mem[(2 * ceil32(return_data.size)) + 96]:
                        revert with 'NH{q', 50
                    if mem[(2 * ceil32(return_data.size)) + 224] != mem[mem[(32 * uint8(idx)) + _89 + 32] + 96]:
                        mem[0] = arg1
                        mem[32] = 7
                        if sub_69894cf7[arg1].field_768 and 10 > -1 / sub_69894cf7[arg1].field_768:
                            revert with 'NH{q', 17
                        if not sub_69894cf7[arg1][7][3].field_0:
                            revert with 'NH{q', 18
                        if 0 > -(10 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][3].field_0) - 1:
                            revert with 'NH{q', 17
                    else:
                        if uint8(idx) >= mem[_89]:
                            revert with 'NH{q', 50
                        if 4 >= mem[(2 * ceil32(return_data.size)) + 96]:
                            revert with 'NH{q', 50
                        if mem[(2 * ceil32(return_data.size)) + 256] != mem[mem[(32 * uint8(idx)) + _89 + 32] + 128]:
                            mem[0] = arg1
                            mem[32] = 7
                            if sub_69894cf7[arg1].field_768 and 15 > -1 / sub_69894cf7[arg1].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[arg1][7][4].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(15 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][4].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(idx) >= mem[_89]:
                                revert with 'NH{q', 50
                            if 5 >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 'NH{q', 50
                            mem[0] = arg1
                            mem[32] = 7
                            if mem[(2 * ceil32(return_data.size)) + 288] == mem[mem[(32 * uint8(idx)) + _89 + 32] + 160]:
                                if sub_69894cf7[arg1].field_768 and 40 > -1 / sub_69894cf7[arg1].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[arg1][7][6].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(40 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][6].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_69894cf7[arg1].field_768 and 26 > -1 / sub_69894cf7[arg1].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[arg1][7][5].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(26 * sub_69894cf7[arg1].field_768 / 100 / sub_69894cf7[arg1][7][5].field_0) - 1:
                                    revert with 'NH{q', 17
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        _259 = mem[_89]
        idx = uint8(idx) + 1
        continue 
    if uint8(sub_69894cf7[arg1][8][address(msg.sender)].field_0):
        revert with 0, 'You have received this round of bonuses'
    revert with 0, 'This wheel activity has not been award'
}

function sub_add1e62f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if uint8(sub_69894cf7[stor5].field_1280) > 2:
        revert with 'NH{q', 33
    if uint8(sub_69894cf7[stor5].field_1280) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The current round is not started or has ended!'
    if sub_69894cf7[stor5].field_512 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This wheel activity has ended, and the beginning of the next round of games!'
    if ('cd', 36).length > 20:
        revert with 0, 'Single purchase limit 20'
    if uint8(sub_69894cf7[stor5][9][address(cd[4])].field_0) > -('cd', 36).length - 1:
        revert with 'NH{q', 17
    if uint8(sub_69894cf7[stor5][9][address(cd[4])].field_0) + ('cd', 36).length > 100:
        revert with 0, 'Purchase limit 100 per round'
    if uint8(sub_69894cf7[stor5][9][address(cd[4])].field_0) > -uint8(('cd', 36).length) + 255:
        revert with 'NH{q', 17
    uint8(sub_69894cf7[stor5][9][address(cd[4])].field_0) = uint8(uint8(sub_69894cf7[stor5][9][address(cd[4])].field_0) + uint8(('cd', 36).length))
    stor9[address(cd[4])].field_0++
    stor9[address(cd[4])][stor9[address(cd[4])].field_0].field_0 = block.timestamp
    stor9[address(cd[4])][stor9[address(cd[4])].field_0].field_256 = stor5
    stor9[address(cd[4])][stor9[address(cd[4])].field_0].field_512 = ('cd', 36).length
    idx = 0
    while uint8(idx) < ('cd', 36).length:
        if sub_69894cf7[stor5][6][cd[((192 * uint8(idx)) + cd[36] + 36)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][cd[((192 * uint8(idx)) + cd[36] + 36)]].field_0++
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((192 * uint8(idx)) + cd[36] + 36)] and 100 > -1 / cd[((192 * uint8(idx)) + cd[36] + 36)]:
            revert with 'NH{q', 17
        if 100 * cd[((192 * uint8(idx)) + cd[36] + 36)] > -cd[((192 * uint8(idx)) + cd[36] + 68)] - 1:
            revert with 'NH{q', 17
        if sub_69894cf7[stor5][6][(100 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + cd[((192 * uint8(idx)) + cd[36] + 68)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][(100 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + cd[((192 * uint8(idx)) + cd[36] + 68)]].field_0++
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if (100 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + cd[((192 * uint8(idx)) + cd[36] + 68)] and 100 > -1 / (100 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + cd[((192 * uint8(idx)) + cd[36] + 68)]:
            revert with 'NH{q', 17
        if (10000 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 68)]) > -cd[((192 * uint8(idx)) + cd[36] + 100)] - 1:
            revert with 'NH{q', 17
        if sub_69894cf7[stor5][6][(10000 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + cd[((192 * uint8(idx)) + cd[36] + 100)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][(10000 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + cd[((192 * uint8(idx)) + cd[36] + 100)]].field_0++
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if (10000 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + cd[((192 * uint8(idx)) + cd[36] + 100)] and 100 > -1 / (10000 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + cd[((192 * uint8(idx)) + cd[36] + 100)]:
            revert with 'NH{q', 17
        if (10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 100)]) > -cd[((192 * uint8(idx)) + cd[36] + 132)] - 1:
            revert with 'NH{q', 17
        if sub_69894cf7[stor5][6][(10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + cd[((192 * uint8(idx)) + cd[36] + 132)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][(10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + cd[((192 * uint8(idx)) + cd[36] + 132)]].field_0++
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if (10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + cd[((192 * uint8(idx)) + cd[36] + 132)] and 100 > -1 / (10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + cd[((192 * uint8(idx)) + cd[36] + 132)]:
            revert with 'NH{q', 17
        if (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 132)]) > -cd[((192 * uint8(idx)) + cd[36] + 164)] - 1:
            revert with 'NH{q', 17
        if sub_69894cf7[stor5][6][(100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + cd[((192 * uint8(idx)) + cd[36] + 164)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][(100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + cd[((192 * uint8(idx)) + cd[36] + 164)]].field_0++
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        if (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + cd[((192 * uint8(idx)) + cd[36] + 164)] and 100 > -1 / (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + cd[((192 * uint8(idx)) + cd[36] + 164)]:
            revert with 'NH{q', 17
        if (10^10 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 164)]) > -cd[((192 * uint8(idx)) + cd[36] + 196)] - 1:
            revert with 'NH{q', 17
        if sub_69894cf7[stor5][6][(10^10 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 164)]) + cd[((192 * uint8(idx)) + cd[36] + 196)]].field_0 == -1:
            revert with 'NH{q', 17
        sub_69894cf7[stor5][6][(10^10 * cd[((192 * uint8(idx)) + cd[36] + 36)]) + (100 * 10^6 * cd[((192 * uint8(idx)) + cd[36] + 68)]) + (10^6 * cd[((192 * uint8(idx)) + cd[36] + 100)]) + (10000 * cd[((192 * uint8(idx)) + cd[36] + 132)]) + (100 * cd[((192 * uint8(idx)) + cd[36] + 164)]) + cd[((192 * uint8(idx)) + cd[36] + 196)]].field_0++
        mem[32] = sha3(address(cd[4]), 8)
        if uint8(idx) >= ('cd', 36).length:
            revert with 'NH{q', 50
        stor8[address(cd[4])][stor5]++
        mem[0] = sha3(stor5, sha3(address(cd[4]), 8))
        s = (6 * stor8[address(cd[4])][stor5]) + sha3(sha3(stor5, sha3(address(cd[4]), 8)))
        t = (192 * uint8(idx)) + cd[36] + 36
        while (192 * uint8(idx)) + cd[36] + 228 > t:
            stor[s] = cd[t]
            s = s + 1
            t = t + 32
            continue 
        t = s
        while (6 * stor8[address(cd[4])][stor5]) + sha3(sha3(stor5, sha3(address(cd[4]), 8))) + 6 > t:
            stor[t] = 0
            t = t + 1
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    if sub_69894cf7[stor5].field_0 and ('cd', 36).length > -1 / sub_69894cf7[stor5].field_0:
        revert with 'NH{q', 17
    call sub_36e480d0Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_69894cf7[stor5].field_0 * ('cd', 36).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_69894cf7[stor5].field_256 > -('cd', 36).length - 1:
        revert with 'NH{q', 17
    sub_69894cf7[stor5].field_256 += ('cd', 36).length
    if sub_69894cf7[stor5].field_768 > (-1 * sub_69894cf7[stor5].field_0 * ('cd', 36).length) - 1:
        revert with 'NH{q', 17
    sub_69894cf7[stor5].field_768 += sub_69894cf7[stor5].field_0 * ('cd', 36).length
    emit 0x45ce5e49: (sub_69894cf7[stor5].field_0 * ('cd', 36).length)
    stor1.length = 1
}

function sub_53fe53b3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    mem[0] = address(arg1)
    mem[32] = 9
    mem[64] = (32 * stor9[address(arg1)].field_0) + 128
    mem[96] = stor9[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor9[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 9)
        _749 = mem[64]
        mem[64] = mem[64] + 96
        mem[_749] = stor9[address(arg1)][idx].field_0
        mem[_749 + 32] = stor9[address(arg1)][idx].field_256
        mem[_749 + 64] = stor9[address(arg1)][idx].field_512
        mem[s] = _749
        s = s + 32
        idx = idx + 1
        continue 
    _747 = mem[96]
    if not mem[96]:
        _750 = mem[64]
        mem[mem[64]] = 96
        _751 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _751:
            _1589 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1589 + 32]
            mem[t + 64] = mem[_1589 + 64]
            mem[t + 96] = bool(mem[_1589 + 96])
            mem[t + 128] = mem[_1589 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_750 + 32] = 0
        mem[_750 + 64] = 0
        return memory
          from mem[64]
           len _750 + (160 * _751) + -mem[64] + 128
    if mem[96] > -arg3 - 1:
        revert with 'NH{q', 17
    if mem[96] + arg3 < 1:
        revert with 'NH{q', 17
    if not arg3:
        revert with 'NH{q', 18
    if arg2 > mem[96] + arg3 - 1 / arg3:
        _757 = mem[64]
        mem[mem[64]] = 96
        _759 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _759:
            _1588 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1588 + 32]
            mem[t + 64] = mem[_1588 + 64]
            mem[t + 96] = bool(mem[_1588 + 96])
            mem[t + 128] = mem[_1588 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_757 + 32] = 0
        mem[_757 + 64] = 0
        return memory
          from mem[64]
           len _757 + (160 * _759) + -mem[64] + 128
    if not arg4:
        if arg2 < 1:
            revert with 'NH{q', 17
        if arg2 - 1 and arg3 > -1 / arg2 - 1:
            revert with 'NH{q', 17
        if arg2 and arg3 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * arg3 <= mem[96]:
            if arg2 * arg3 < -arg3 + (arg2 * arg3):
                revert with 'NH{q', 17
            if (arg2 * arg3) + arg3 - (arg2 * arg3) > test266151307():
                revert with 'NH{q', 65
            _768 = mem[64]
            mem[mem[64]] = (arg2 * arg3) + arg3 - (arg2 * arg3)
            mem[64] = mem[64] + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 32
            if not (arg2 * arg3) + arg3 - (arg2 * arg3):
                idx = -arg3 + (arg2 * arg3)
                while idx < arg2 * arg3:
                    _1592 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1592] = 0
                    mem[_1592 + 32] = 0
                    mem[_1592 + 64] = 0
                    mem[_1592 + 96] = 0
                    mem[_1592 + 128] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1592] = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1592 + 32] = mem[mem[(32 * idx) + 128] + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[_1592 + 64] = mem[mem[(32 * idx) + 128] + 64]
                    _1636 = mem[_1592 + 32]
                    mem[0] = mem[_1592 + 32]
                    mem[32] = 7
                    if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                        revert with 'NH{q', 33
                    if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                        mem[_1592 + 96] = 0
                    else:
                        mem[mem[64] + 4] = _1636
                        staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1636
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1738] == mem[_1738]
                        if mem[_1738] <= 0:
                            revert with 0, 'This round has not lottery'
                        mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1636
                        staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                                gas gas_remaining wei
                               args _1636
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1840 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1854 = mem[_1840]
                        require mem[_1840] <= test266151307()
                        require _1840 + mem[_1840] + 31 < _1840 + return_data.size
                        _1868 = mem[_1840 + mem[_1840]]
                        if mem[_1840 + mem[_1840]] > test266151307():
                            revert with 'NH{q', 65
                        if _1840 + ceil32(return_data.size) + floor32(mem[_1840 + mem[_1840]]) + 1 > test266151307() or floor32(mem[_1840 + mem[_1840]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1840 + ceil32(return_data.size) + floor32(mem[_1840 + mem[_1840]]) + 1
                        mem[_1840 + ceil32(return_data.size)] = _1868
                        require _1854 + (32 * _1868) + 32 <= return_data.size
                        s = _1840 + _1854 + 32
                        t = _1840 + ceil32(return_data.size) + 32
                        while s < _1840 + _1854 + (32 * _1868) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[0] = _1636
                        mem[32] = sha3(address(arg1), 8)
                        _2438 = mem[64]
                        mem[64] = mem[64] + (32 * stor8[address(arg1)][_1636]) + 32
                        mem[_2438] = stor8[address(arg1)][_1636]
                        t = _2438 + 32
                        s = 0
                        while s < stor8[address(arg1)][_1636]:
                            mem[0] = sha3(_1636, sha3(address(arg1), 8))
                            _4061 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_4061] = stor8[address(arg1)][_1636][s]
                            idx = _4061
                            u = (6 * s) + sha3(sha3(_1636, sha3(address(arg1), 8)))
                            while _4061 + 192 > idx + 32:
                                mem[idx + 32] = stor1[u]
                                idx = idx + 32
                                u = u + 1
                                continue 
                            mem[t] = _4061
                            t = t + 32
                            s = s + 1
                            continue 
                        _4508 = mem[_2438]
                        s = 0
                        while uint8(s) < _4508:
                            if uint8(s) >= mem[_2438]:
                                revert with 'NH{q', 50
                            if 0 >= mem[_1840 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_1840 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(s)) + _2438 + 32]]:
                                if uint8(s) >= mem[_2438]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_1840 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_1840 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(s)) + _2438 + 32] + 32]:
                                    mem[0] = _1636
                                    mem[32] = 7
                                    if sub_69894cf7[_1636].field_768 and 3 > -1 / sub_69894cf7[_1636].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_1636][7][1].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(3 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][1].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(s) >= mem[_2438]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_1840 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_1840 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(s)) + _2438 + 32] + 64]:
                                        mem[0] = _1636
                                        mem[32] = 7
                                        if sub_69894cf7[_1636].field_768 and 6 > -1 / sub_69894cf7[_1636].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_1636][7][2].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(6 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][2].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if uint8(s) >= mem[_2438]:
                                            revert with 'NH{q', 50
                                        if 3 >= mem[_1840 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_1840 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(s)) + _2438 + 32] + 96]:
                                            mem[0] = _1636
                                            mem[32] = 7
                                            if sub_69894cf7[_1636].field_768 and 10 > -1 / sub_69894cf7[_1636].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_1636][7][3].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(10 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][3].field_0) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if uint8(s) >= mem[_2438]:
                                                revert with 'NH{q', 50
                                            if 4 >= mem[_1840 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            if mem[_1840 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(s)) + _2438 + 32] + 128]:
                                                mem[0] = _1636
                                                mem[32] = 7
                                                if sub_69894cf7[_1636].field_768 and 15 > -1 / sub_69894cf7[_1636].field_768:
                                                    revert with 'NH{q', 17
                                                if not sub_69894cf7[_1636][7][4].field_0:
                                                    revert with 'NH{q', 18
                                                if 0 > -(15 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][4].field_0) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if uint8(s) >= mem[_2438]:
                                                    revert with 'NH{q', 50
                                                if 5 >= mem[_1840 + ceil32(return_data.size)]:
                                                    revert with 'NH{q', 50
                                                mem[0] = _1636
                                                mem[32] = 7
                                                if mem[_1840 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(s)) + _2438 + 32] + 160]:
                                                    if sub_69894cf7[_1636].field_768 and 40 > -1 / sub_69894cf7[_1636].field_768:
                                                        revert with 'NH{q', 17
                                                    if not sub_69894cf7[_1636][7][6].field_0:
                                                        revert with 'NH{q', 18
                                                    if 0 > -(40 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][6].field_0) - 1:
                                                        revert with 'NH{q', 17
                                                else:
                                                    if sub_69894cf7[_1636].field_768 and 26 > -1 / sub_69894cf7[_1636].field_768:
                                                        revert with 'NH{q', 17
                                                    if not sub_69894cf7[_1636][7][5].field_0:
                                                        revert with 'NH{q', 18
                                                    if 0 > -(26 * sub_69894cf7[_1636].field_768 / 100 / sub_69894cf7[_1636][7][5].field_0) - 1:
                                                        revert with 'NH{q', 17
                            if uint8(s) == 255:
                                revert with 'NH{q', 17
                            _4508 = mem[_2438]
                            s = uint8(s) + 1
                            continue 
                        mem[0] = address(arg1)
                        mem[32] = sha3(_1636, 7) + 8
                        mem[_1592 + 96] = bool(uint8(sub_69894cf7[_1636][8][address(arg1)].field_0))
                    mem[_1592 + 128] = 0
                    if idx < -arg3 + (arg2 * arg3):
                        revert with 'NH{q', 17
                    if idx + arg3 - (arg2 * arg3) >= mem[_768]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + arg3 - (arg2 * arg3)) + _768 + 32] = _1592
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1608 = mem[64]
                mem[mem[64]] = 96
                _1644 = mem[_768]
                mem[mem[64] + 96] = mem[_768]
                idx = 0
                s = _768 + 32
                t = mem[64] + 128
                while idx < _1644:
                    _2418 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2418 + 32]
                    mem[t + 64] = mem[_2418 + 64]
                    mem[t + 96] = bool(mem[_2418 + 96])
                    mem[t + 128] = mem[_2418 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                mem[_1608 + 32] = _747
                mem[_1608 + 64] = _747 + arg3 - 1 / arg3
                return memory
                  from mem[64]
                   len _1608 + (160 * _1644) + -mem[64] + 128
            mem[64] = _768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 192
            mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 32] = 0
            mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 64] = 0
            mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 96] = 0
            mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 128] = 0
            mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 160] = 0
            mem[var97001] = _768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 32
            s = var97001
            idx = var97002
            while idx - 1:
                mem[64] = mem[64] + 160
                mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 32] = 0
                mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 64] = 0
                mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 96] = 0
                mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 128] = 0
                mem[_768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 160] = 0
                mem[s + 32] = _768 + (32 * (arg2 * arg3) + arg3 - (arg2 * arg3)) + 32
                s = s + 32
                idx = idx - 1
                continue 
            idx = -arg3 + (arg2 * arg3)
            while idx < arg2 * arg3:
                _3131 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3131] = 0
                mem[_3131 + 32] = 0
                mem[_3131 + 64] = 0
                mem[_3131 + 96] = 0
                mem[_3131 + 128] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_3131] = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_3131 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_3131 + 64] = mem[mem[(32 * idx) + 128] + 64]
                _3195 = mem[_3131 + 32]
                mem[0] = mem[_3131 + 32]
                mem[32] = 7
                if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                    revert with 'NH{q', 33
                if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                    mem[_3131 + 96] = 0
                else:
                    mem[mem[64] + 4] = _3195
                    staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                            gas gas_remaining wei
                           args _3195
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3329] == mem[_3329]
                    if mem[_3329] <= 0:
                        revert with 0, 'This round has not lottery'
                    mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3195
                    staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                            gas gas_remaining wei
                           args _3195
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3458 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3468 = mem[_3458]
                    require mem[_3458] <= test266151307()
                    require _3458 + mem[_3458] + 31 < _3458 + return_data.size
                    _3474 = mem[_3458 + mem[_3458]]
                    if mem[_3458 + mem[_3458]] > test266151307():
                        revert with 'NH{q', 65
                    if _3458 + ceil32(return_data.size) + floor32(mem[_3458 + mem[_3458]]) + 1 > test266151307() or floor32(mem[_3458 + mem[_3458]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3458 + ceil32(return_data.size) + floor32(mem[_3458 + mem[_3458]]) + 1
                    mem[_3458 + ceil32(return_data.size)] = _3474
                    require _3468 + (32 * _3474) + 32 <= return_data.size
                    s = _3458 + _3468 + 32
                    t = _3458 + ceil32(return_data.size) + 32
                    while s < _3458 + _3468 + (32 * _3474) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[0] = _3195
                    mem[32] = sha3(address(arg1), 8)
                    _3768 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[address(arg1)][_3195]) + 32
                    mem[_3768] = stor8[address(arg1)][_3195]
                    t = _3768 + 32
                    s = 0
                    while s < stor8[address(arg1)][_3195]:
                        mem[0] = sha3(_3195, sha3(address(arg1), 8))
                        _4753 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4753] = stor8[address(arg1)][_3195][s]
                        idx = _4753
                        u = (6 * s) + sha3(sha3(_3195, sha3(address(arg1), 8)))
                        while _4753 + 192 > idx + 32:
                            mem[idx + 32] = stor1[u]
                            idx = idx + 32
                            u = u + 1
                            continue 
                        mem[t] = _4753
                        t = t + 32
                        s = s + 1
                        continue 
                    _4996 = mem[_3768]
                    s = 0
                    while uint8(s) < _4996:
                        if uint8(s) >= mem[_3768]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_3458 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_3458 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(s)) + _3768 + 32]]:
                            if uint8(s) >= mem[_3768]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_3458 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_3458 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(s)) + _3768 + 32] + 32]:
                                mem[0] = _3195
                                mem[32] = 7
                                if sub_69894cf7[_3195].field_768 and 3 > -1 / sub_69894cf7[_3195].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_3195][7][1].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(3 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][1].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(s) >= mem[_3768]:
                                    revert with 'NH{q', 50
                                if 2 >= mem[_3458 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_3458 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(s)) + _3768 + 32] + 64]:
                                    mem[0] = _3195
                                    mem[32] = 7
                                    if sub_69894cf7[_3195].field_768 and 6 > -1 / sub_69894cf7[_3195].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_3195][7][2].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(6 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][2].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(s) >= mem[_3768]:
                                        revert with 'NH{q', 50
                                    if 3 >= mem[_3458 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_3458 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(s)) + _3768 + 32] + 96]:
                                        mem[0] = _3195
                                        mem[32] = 7
                                        if sub_69894cf7[_3195].field_768 and 10 > -1 / sub_69894cf7[_3195].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_3195][7][3].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(10 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][3].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if uint8(s) >= mem[_3768]:
                                            revert with 'NH{q', 50
                                        if 4 >= mem[_3458 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_3458 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(s)) + _3768 + 32] + 128]:
                                            mem[0] = _3195
                                            mem[32] = 7
                                            if sub_69894cf7[_3195].field_768 and 15 > -1 / sub_69894cf7[_3195].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_3195][7][4].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(15 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][4].field_0) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if uint8(s) >= mem[_3768]:
                                                revert with 'NH{q', 50
                                            if 5 >= mem[_3458 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[0] = _3195
                                            mem[32] = 7
                                            if mem[_3458 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(s)) + _3768 + 32] + 160]:
                                                if sub_69894cf7[_3195].field_768 and 40 > -1 / sub_69894cf7[_3195].field_768:
                                                    revert with 'NH{q', 17
                                                if not sub_69894cf7[_3195][7][6].field_0:
                                                    revert with 'NH{q', 18
                                                if 0 > -(40 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][6].field_0) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if sub_69894cf7[_3195].field_768 and 26 > -1 / sub_69894cf7[_3195].field_768:
                                                    revert with 'NH{q', 17
                                                if not sub_69894cf7[_3195][7][5].field_0:
                                                    revert with 'NH{q', 18
                                                if 0 > -(26 * sub_69894cf7[_3195].field_768 / 100 / sub_69894cf7[_3195][7][5].field_0) - 1:
                                                    revert with 'NH{q', 17
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        _4996 = mem[_3768]
                        s = uint8(s) + 1
                        continue 
                    mem[0] = address(arg1)
                    mem[32] = sha3(_3195, 7) + 8
                    mem[_3131 + 96] = bool(uint8(sub_69894cf7[_3195][8][address(arg1)].field_0))
                mem[_3131 + 128] = 0
                if idx < -arg3 + (arg2 * arg3):
                    revert with 'NH{q', 17
                if idx + arg3 - (arg2 * arg3) >= mem[_768]:
                    revert with 'NH{q', 50
                mem[(32 * idx + arg3 - (arg2 * arg3)) + _768 + 32] = _3131
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3159 = mem[64]
            mem[mem[64]] = 96
            _3208 = mem[_768]
            mem[mem[64] + 96] = mem[_768]
            idx = 0
            s = _768 + 32
            t = mem[64] + 128
            while idx < _3208:
                _3746 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_3746 + 32]
                mem[t + 64] = mem[_3746 + 64]
                mem[t + 96] = bool(mem[_3746 + 96])
                mem[t + 128] = mem[_3746 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_3159 + 32] = _747
            mem[_3159 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _3159 + (160 * _3208) + -mem[64] + 128
        if mem[96] < -arg3 + (arg2 * arg3):
            revert with 'NH{q', 17
        if mem[96] + arg3 - (arg2 * arg3) > test266151307():
            revert with 'NH{q', 65
        _769 = mem[64]
        mem[mem[64]] = mem[96] + arg3 - (arg2 * arg3)
        mem[64] = mem[64] + (32 * _747 + arg3 - (arg2 * arg3)) + 32
        if not _747 + arg3 - (arg2 * arg3):
            idx = -arg3 + (arg2 * arg3)
            while idx < _747:
                _1593 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1593] = 0
                mem[_1593 + 32] = 0
                mem[_1593 + 64] = 0
                mem[_1593 + 96] = 0
                mem[_1593 + 128] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1593] = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1593 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1593 + 64] = mem[mem[(32 * idx) + 128] + 64]
                _1639 = mem[_1593 + 32]
                mem[0] = mem[_1593 + 32]
                mem[32] = 7
                if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                    revert with 'NH{q', 33
                if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                    mem[_1593 + 96] = 0
                else:
                    mem[mem[64] + 4] = _1639
                    staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1639
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1739] == mem[_1739]
                    if mem[_1739] <= 0:
                        revert with 0, 'This round has not lottery'
                    mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1639
                    staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                            gas gas_remaining wei
                           args _1639
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1841 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1855 = mem[_1841]
                    require mem[_1841] <= test266151307()
                    require _1841 + mem[_1841] + 31 < _1841 + return_data.size
                    _1870 = mem[_1841 + mem[_1841]]
                    if mem[_1841 + mem[_1841]] > test266151307():
                        revert with 'NH{q', 65
                    if _1841 + ceil32(return_data.size) + floor32(mem[_1841 + mem[_1841]]) + 1 > test266151307() or floor32(mem[_1841 + mem[_1841]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1841 + ceil32(return_data.size) + floor32(mem[_1841 + mem[_1841]]) + 1
                    mem[_1841 + ceil32(return_data.size)] = _1870
                    require _1855 + (32 * _1870) + 32 <= return_data.size
                    s = _1841 + _1855 + 32
                    t = _1841 + ceil32(return_data.size) + 32
                    while s < _1841 + _1855 + (32 * _1870) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[0] = _1639
                    mem[32] = sha3(address(arg1), 8)
                    _2441 = mem[64]
                    mem[64] = mem[64] + (32 * stor8[address(arg1)][_1639]) + 32
                    mem[_2441] = stor8[address(arg1)][_1639]
                    t = _2441 + 32
                    s = 0
                    while s < stor8[address(arg1)][_1639]:
                        mem[0] = sha3(_1639, sha3(address(arg1), 8))
                        _4066 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4066] = stor8[address(arg1)][_1639][s]
                        idx = _4066
                        u = (6 * s) + sha3(sha3(_1639, sha3(address(arg1), 8)))
                        while _4066 + 192 > idx + 32:
                            mem[idx + 32] = stor1[u]
                            idx = idx + 32
                            u = u + 1
                            continue 
                        mem[t] = _4066
                        t = t + 32
                        s = s + 1
                        continue 
                    _4509 = mem[_2441]
                    s = 0
                    while uint8(s) < _4509:
                        if uint8(s) >= mem[_2441]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1841 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_1841 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(s)) + _2441 + 32]]:
                            if uint8(s) >= mem[_2441]:
                                revert with 'NH{q', 50
                            if 1 >= mem[_1841 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_1841 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(s)) + _2441 + 32] + 32]:
                                mem[0] = _1639
                                mem[32] = 7
                                if sub_69894cf7[_1639].field_768 and 3 > -1 / sub_69894cf7[_1639].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_1639][7][1].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(3 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][1].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(s) >= mem[_2441]:
                                    revert with 'NH{q', 50
                                if 2 >= mem[_1841 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_1841 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(s)) + _2441 + 32] + 64]:
                                    mem[0] = _1639
                                    mem[32] = 7
                                    if sub_69894cf7[_1639].field_768 and 6 > -1 / sub_69894cf7[_1639].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_1639][7][2].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(6 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][2].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(s) >= mem[_2441]:
                                        revert with 'NH{q', 50
                                    if 3 >= mem[_1841 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_1841 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(s)) + _2441 + 32] + 96]:
                                        mem[0] = _1639
                                        mem[32] = 7
                                        if sub_69894cf7[_1639].field_768 and 10 > -1 / sub_69894cf7[_1639].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_1639][7][3].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(10 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][3].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if uint8(s) >= mem[_2441]:
                                            revert with 'NH{q', 50
                                        if 4 >= mem[_1841 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_1841 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(s)) + _2441 + 32] + 128]:
                                            mem[0] = _1639
                                            mem[32] = 7
                                            if sub_69894cf7[_1639].field_768 and 15 > -1 / sub_69894cf7[_1639].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_1639][7][4].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(15 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][4].field_0) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if uint8(s) >= mem[_2441]:
                                                revert with 'NH{q', 50
                                            if 5 >= mem[_1841 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[0] = _1639
                                            mem[32] = 7
                                            if mem[_1841 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(s)) + _2441 + 32] + 160]:
                                                if sub_69894cf7[_1639].field_768 and 40 > -1 / sub_69894cf7[_1639].field_768:
                                                    revert with 'NH{q', 17
                                                if not sub_69894cf7[_1639][7][6].field_0:
                                                    revert with 'NH{q', 18
                                                if 0 > -(40 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][6].field_0) - 1:
                                                    revert with 'NH{q', 17
                                            else:
                                                if sub_69894cf7[_1639].field_768 and 26 > -1 / sub_69894cf7[_1639].field_768:
                                                    revert with 'NH{q', 17
                                                if not sub_69894cf7[_1639][7][5].field_0:
                                                    revert with 'NH{q', 18
                                                if 0 > -(26 * sub_69894cf7[_1639].field_768 / 100 / sub_69894cf7[_1639][7][5].field_0) - 1:
                                                    revert with 'NH{q', 17
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        _4509 = mem[_2441]
                        s = uint8(s) + 1
                        continue 
                    mem[0] = address(arg1)
                    mem[32] = sha3(_1639, 7) + 8
                    mem[_1593 + 96] = bool(uint8(sub_69894cf7[_1639][8][address(arg1)].field_0))
                mem[_1593 + 128] = 0
                if idx < -arg3 + (arg2 * arg3):
                    revert with 'NH{q', 17
                if idx + arg3 - (arg2 * arg3) >= mem[_769]:
                    revert with 'NH{q', 50
                mem[(32 * idx + arg3 - (arg2 * arg3)) + _769 + 32] = _1593
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1612 = mem[64]
            mem[mem[64]] = 96
            _1646 = mem[_769]
            mem[mem[64] + 96] = mem[_769]
            idx = 0
            s = _769 + 32
            t = mem[64] + 128
            while idx < _1646:
                _2419 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2419 + 32]
                mem[t + 64] = mem[_2419 + 64]
                mem[t + 96] = bool(mem[_2419 + 96])
                mem[t + 128] = mem[_2419 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_1612 + 32] = _747
            mem[_1612 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _1612 + (160 * _1646) + -mem[64] + 128
        mem[64] = _769 + (32 * _747 + arg3 - (arg2 * arg3)) + 192
        mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 32] = 0
        mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 64] = 0
        mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 96] = 0
        mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 128] = 0
        mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 160] = 0
        mem[var98001] = _769 + (32 * _747 + arg3 - (arg2 * arg3)) + 32
        s = var98001
        idx = var98002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 32] = 0
            mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 64] = 0
            mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 96] = 0
            mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 128] = 0
            mem[_769 + (32 * _747 + arg3 - (arg2 * arg3)) + 160] = 0
            mem[s + 32] = _769 + (32 * _747 + arg3 - (arg2 * arg3)) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = -arg3 + (arg2 * arg3)
        while idx < _747:
            _3133 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3133] = 0
            mem[_3133 + 32] = 0
            mem[_3133 + 64] = 0
            mem[_3133 + 96] = 0
            mem[_3133 + 128] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3133] = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3133 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3133 + 64] = mem[mem[(32 * idx) + 128] + 64]
            _3199 = mem[_3133 + 32]
            mem[0] = mem[_3133 + 32]
            mem[32] = 7
            if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                revert with 'NH{q', 33
            if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                mem[_3133 + 96] = 0
            else:
                mem[mem[64] + 4] = _3199
                staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                        gas gas_remaining wei
                       args _3199
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3331] == mem[_3331]
                if mem[_3331] <= 0:
                    revert with 0, 'This round has not lottery'
                mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _3199
                staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                        gas gas_remaining wei
                       args _3199
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3459 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3469 = mem[_3459]
                require mem[_3459] <= test266151307()
                require _3459 + mem[_3459] + 31 < _3459 + return_data.size
                _3475 = mem[_3459 + mem[_3459]]
                if mem[_3459 + mem[_3459]] > test266151307():
                    revert with 'NH{q', 65
                if _3459 + ceil32(return_data.size) + floor32(mem[_3459 + mem[_3459]]) + 1 > test266151307() or floor32(mem[_3459 + mem[_3459]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _3459 + ceil32(return_data.size) + floor32(mem[_3459 + mem[_3459]]) + 1
                mem[_3459 + ceil32(return_data.size)] = _3475
                require _3469 + (32 * _3475) + 32 <= return_data.size
                s = _3459 + _3469 + 32
                t = _3459 + ceil32(return_data.size) + 32
                while s < _3459 + _3469 + (32 * _3475) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                mem[0] = _3199
                mem[32] = sha3(address(arg1), 8)
                _3771 = mem[64]
                mem[64] = mem[64] + (32 * stor8[address(arg1)][_3199]) + 32
                mem[_3771] = stor8[address(arg1)][_3199]
                t = _3771 + 32
                s = 0
                while s < stor8[address(arg1)][_3199]:
                    mem[0] = sha3(_3199, sha3(address(arg1), 8))
                    _4755 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4755] = stor8[address(arg1)][_3199][s]
                    idx = _4755
                    u = (6 * s) + sha3(sha3(_3199, sha3(address(arg1), 8)))
                    while _4755 + 192 > idx + 32:
                        mem[idx + 32] = stor1[u]
                        idx = idx + 32
                        u = u + 1
                        continue 
                    mem[t] = _4755
                    t = t + 32
                    s = s + 1
                    continue 
                _4997 = mem[_3771]
                s = 0
                while uint8(s) < _4997:
                    if uint8(s) >= mem[_3771]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_3459 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[_3459 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(s)) + _3771 + 32]]:
                        if uint8(s) >= mem[_3771]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_3459 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_3459 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(s)) + _3771 + 32] + 32]:
                            mem[0] = _3199
                            mem[32] = 7
                            if sub_69894cf7[_3199].field_768 and 3 > -1 / sub_69894cf7[_3199].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[_3199][7][1].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(3 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][1].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(s) >= mem[_3771]:
                                revert with 'NH{q', 50
                            if 2 >= mem[_3459 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_3459 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(s)) + _3771 + 32] + 64]:
                                mem[0] = _3199
                                mem[32] = 7
                                if sub_69894cf7[_3199].field_768 and 6 > -1 / sub_69894cf7[_3199].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_3199][7][2].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(6 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][2].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(s) >= mem[_3771]:
                                    revert with 'NH{q', 50
                                if 3 >= mem[_3459 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_3459 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(s)) + _3771 + 32] + 96]:
                                    mem[0] = _3199
                                    mem[32] = 7
                                    if sub_69894cf7[_3199].field_768 and 10 > -1 / sub_69894cf7[_3199].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_3199][7][3].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(10 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][3].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(s) >= mem[_3771]:
                                        revert with 'NH{q', 50
                                    if 4 >= mem[_3459 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_3459 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(s)) + _3771 + 32] + 128]:
                                        mem[0] = _3199
                                        mem[32] = 7
                                        if sub_69894cf7[_3199].field_768 and 15 > -1 / sub_69894cf7[_3199].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_3199][7][4].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(15 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][4].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if uint8(s) >= mem[_3771]:
                                            revert with 'NH{q', 50
                                        if 5 >= mem[_3459 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[0] = _3199
                                        mem[32] = 7
                                        if mem[_3459 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(s)) + _3771 + 32] + 160]:
                                            if sub_69894cf7[_3199].field_768 and 40 > -1 / sub_69894cf7[_3199].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_3199][7][6].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(40 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][6].field_0) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if sub_69894cf7[_3199].field_768 and 26 > -1 / sub_69894cf7[_3199].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_3199][7][5].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(26 * sub_69894cf7[_3199].field_768 / 100 / sub_69894cf7[_3199][7][5].field_0) - 1:
                                                revert with 'NH{q', 17
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    _4997 = mem[_3771]
                    s = uint8(s) + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = sha3(_3199, 7) + 8
                mem[_3133 + 96] = bool(uint8(sub_69894cf7[_3199][8][address(arg1)].field_0))
            mem[_3133 + 128] = 0
            if idx < -arg3 + (arg2 * arg3):
                revert with 'NH{q', 17
            if idx + arg3 - (arg2 * arg3) >= mem[_769]:
                revert with 'NH{q', 50
            mem[(32 * idx + arg3 - (arg2 * arg3)) + _769 + 32] = _3133
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _3164 = mem[64]
        mem[mem[64]] = 96
        _3211 = mem[_769]
        mem[mem[64] + 96] = mem[_769]
        idx = 0
        s = _769 + 32
        t = mem[64] + 128
        while idx < _3211:
            _3747 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_3747 + 32]
            mem[t + 64] = mem[_3747 + 64]
            mem[t + 96] = bool(mem[_3747 + 96])
            mem[t + 128] = mem[_3747 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_3164 + 32] = _747
        mem[_3164 + 64] = _747 + arg3 - 1 / arg3
        return memory
          from mem[64]
           len _3164 + (160 * _3211) + -mem[64] + 128
    if arg3 and arg2 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 < 1:
        revert with 'NH{q', 17
    if mem[96] > -arg3:
        revert with 'NH{q', 17
    if mem[96] + arg3 - 1 < arg3 * arg2:
        revert with 'NH{q', 17
    if mem[96] + arg3 + (-1 * arg3 * arg2) - 1 <= arg3:
        if mem[96] + arg3 + (-1 * arg3 * arg2) - 1 < 0:
            revert with 'NH{q', 17
        if mem[96] + arg3 + (-1 * arg3 * arg2) - 1 > -2:
            revert with 'NH{q', 17
        if mem[96] + arg3 - (arg3 * arg2) > test266151307():
            revert with 'NH{q', 65
        _822 = mem[64]
        mem[mem[64]] = mem[96] + arg3 - (arg3 * arg2)
        mem[64] = mem[64] + (32 * _747 + arg3 - (arg3 * arg2)) + 32
        if not _747 + arg3 - (arg3 * arg2):
            idx = _747 + arg3 + (-1 * arg3 * arg2) - 1
            s = 0
            while idx >= 0:
                _1590 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1590] = 0
                mem[_1590 + 32] = 0
                mem[_1590 + 64] = 0
                mem[_1590 + 96] = 0
                mem[_1590 + 128] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1590] = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1590 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_1590 + 64] = mem[mem[(32 * idx) + 128] + 64]
                _1630 = mem[_1590 + 32]
                mem[0] = mem[_1590 + 32]
                mem[32] = 7
                if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                    revert with 'NH{q', 33
                if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                    mem[_1590 + 96] = 0
                    mem[_1590 + 128] = 0
                    if s >= mem[_822]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _822 + 32] = _1590
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx:
                        idx = idx - 1
                        s = s + 1
                        continue 
                    _1764 = mem[64]
                    mem[mem[64]] = 96
                    _1784 = mem[_822]
                    mem[mem[64] + 96] = mem[_822]
                    idx = 0
                    s = _822 + 32
                    t = mem[64] + 128
                    while idx < _1784:
                        _2415 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_2415 + 32]
                        mem[t + 64] = mem[_2415 + 64]
                        mem[t + 96] = bool(mem[_2415 + 96])
                        mem[t + 128] = mem[_2415 + 128]
                        idx = idx + 1
                        s = s + 32
                        t = t + 160
                        continue 
                    mem[_1764 + 32] = _747
                    mem[_1764 + 64] = _747 + arg3 - 1 / arg3
                    return memory
                      from mem[64]
                       len _1764 + (160 * _1784) + -mem[64] + 128
                mem[mem[64] + 4] = _1630
                staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1630
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1736] == mem[_1736]
                if mem[_1736] <= 0:
                    revert with 0, 'This round has not lottery'
                mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1630
                staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                        gas gas_remaining wei
                       args _1630
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1838 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1850 = mem[_1838]
                require mem[_1838] <= test266151307()
                require _1838 + mem[_1838] + 31 < _1838 + return_data.size
                _1864 = mem[_1838 + mem[_1838]]
                if mem[_1838 + mem[_1838]] > test266151307():
                    revert with 'NH{q', 65
                if _1838 + ceil32(return_data.size) + floor32(mem[_1838 + mem[_1838]]) + 1 > test266151307() or floor32(mem[_1838 + mem[_1838]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1838 + ceil32(return_data.size) + floor32(mem[_1838 + mem[_1838]]) + 1
                mem[_1838 + ceil32(return_data.size)] = _1864
                require _1850 + (32 * _1864) + 32 <= return_data.size
                t = _1838 + _1850 + 32
                u = _1838 + ceil32(return_data.size) + 32
                while t < _1838 + _1850 + (32 * _1864) + 32:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    continue 
                mem[0] = _1630
                mem[32] = sha3(address(arg1), 8)
                _2432 = mem[64]
                mem[64] = mem[64] + (32 * stor8[address(arg1)][_1630]) + 32
                mem[_2432] = stor8[address(arg1)][_1630]
                u = _2432 + 32
                t = 0
                while t < stor8[address(arg1)][_1630]:
                    mem[0] = sha3(_1630, sha3(address(arg1), 8))
                    _4051 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4051] = stor8[address(arg1)][_1630][t]
                    idx = _4051
                    s = (6 * t) + sha3(sha3(_1630, sha3(address(arg1), 8)))
                    while _4051 + 192 > idx + 32:
                        mem[idx + 32] = stor1[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[u] = _4051
                    u = u + 32
                    t = t + 1
                    continue 
                _4506 = mem[_2432]
                t = 0
                while uint8(t) < _4506:
                    if uint8(t) >= mem[_2432]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1838 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[_1838 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(t)) + _2432 + 32]]:
                        if uint8(t) >= mem[_2432]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_1838 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_1838 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(t)) + _2432 + 32] + 32]:
                            mem[0] = _1630
                            mem[32] = 7
                            if sub_69894cf7[_1630].field_768 and 3 > -1 / sub_69894cf7[_1630].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[_1630][7][1].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(3 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][1].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(t) >= mem[_2432]:
                                revert with 'NH{q', 50
                            if 2 >= mem[_1838 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_1838 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(t)) + _2432 + 32] + 64]:
                                mem[0] = _1630
                                mem[32] = 7
                                if sub_69894cf7[_1630].field_768 and 6 > -1 / sub_69894cf7[_1630].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_1630][7][2].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(6 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][2].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(t) >= mem[_2432]:
                                    revert with 'NH{q', 50
                                if 3 >= mem[_1838 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_1838 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(t)) + _2432 + 32] + 96]:
                                    mem[0] = _1630
                                    mem[32] = 7
                                    if sub_69894cf7[_1630].field_768 and 10 > -1 / sub_69894cf7[_1630].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_1630][7][3].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(10 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][3].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(t) >= mem[_2432]:
                                        revert with 'NH{q', 50
                                    if 4 >= mem[_1838 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_1838 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(t)) + _2432 + 32] + 128]:
                                        mem[0] = _1630
                                        mem[32] = 7
                                        if sub_69894cf7[_1630].field_768 and 15 > -1 / sub_69894cf7[_1630].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_1630][7][4].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(15 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][4].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if uint8(t) >= mem[_2432]:
                                            revert with 'NH{q', 50
                                        if 5 >= mem[_1838 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[0] = _1630
                                        mem[32] = 7
                                        if mem[_1838 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(t)) + _2432 + 32] + 160]:
                                            if sub_69894cf7[_1630].field_768 and 40 > -1 / sub_69894cf7[_1630].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_1630][7][6].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(40 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][6].field_0) - 1:
                                                revert with 'NH{q', 17
                                        else:
                                            if sub_69894cf7[_1630].field_768 and 26 > -1 / sub_69894cf7[_1630].field_768:
                                                revert with 'NH{q', 17
                                            if not sub_69894cf7[_1630][7][5].field_0:
                                                revert with 'NH{q', 18
                                            if 0 > -(26 * sub_69894cf7[_1630].field_768 / 100 / sub_69894cf7[_1630][7][5].field_0) - 1:
                                                revert with 'NH{q', 17
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    _4506 = mem[_2432]
                    t = uint8(t) + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = sha3(_1630, 7) + 8
                mem[_1590 + 96] = bool(uint8(sub_69894cf7[_1630][8][address(arg1)].field_0))
                mem[_1590 + 128] = 0
                if s >= mem[_822]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _822 + 32] = _1590
                if s == -1:
                    revert with 'NH{q', 17
                if idx:
                    idx = idx - 1
                    s = s + 1
                    continue 
                _4620 = mem[64]
                mem[mem[64]] = 96
                _4640 = mem[_822]
                mem[mem[64] + 96] = mem[_822]
                idx = 0
                s = _822 + 32
                t = mem[64] + 128
                while idx < _4640:
                    _4746 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_4746 + 32]
                    mem[t + 64] = mem[_4746 + 64]
                    mem[t + 96] = bool(mem[_4746 + 96])
                    mem[t + 128] = mem[_4746 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                mem[_4620 + 32] = _747
                mem[_4620 + 64] = _747 + arg3 - 1 / arg3
                return memory
                  from mem[64]
                   len _4620 + (160 * _4640) + -mem[64] + 128
            _1600 = mem[64]
            mem[mem[64]] = 96
            _1640 = mem[_822]
            mem[mem[64] + 96] = mem[_822]
            idx = 0
            s = _822 + 32
            t = mem[64] + 128
            while idx < _1640:
                _2414 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2414 + 32]
                mem[t + 64] = mem[_2414 + 64]
                mem[t + 96] = bool(mem[_2414 + 96])
                mem[t + 128] = mem[_2414 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_1600 + 32] = _747
            mem[_1600 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _1600 + (160 * _1640) + -mem[64] + 128
        mem[64] = _822 + (32 * _747 + arg3 - (arg3 * arg2)) + 192
        mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 32] = 0
        mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 64] = 0
        mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 96] = 0
        mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 128] = 0
        mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 160] = 0
        mem[var111001] = _822 + (32 * _747 + arg3 - (arg3 * arg2)) + 32
        s = var111001
        idx = var111002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 32] = 0
            mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 64] = 0
            mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 96] = 0
            mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 128] = 0
            mem[_822 + (32 * _747 + arg3 - (arg3 * arg2)) + 160] = 0
            mem[s + 32] = _822 + (32 * _747 + arg3 - (arg3 * arg2)) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = _747 + arg3 + (-1 * arg3 * arg2) - 1
        s = 0
        while idx >= 0:
            _3127 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3127] = 0
            mem[_3127 + 32] = 0
            mem[_3127 + 64] = 0
            mem[_3127 + 96] = 0
            mem[_3127 + 128] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3127] = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3127 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_3127 + 64] = mem[mem[(32 * idx) + 128] + 64]
            _3187 = mem[_3127 + 32]
            mem[0] = mem[_3127 + 32]
            mem[32] = 7
            if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                revert with 'NH{q', 33
            if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                mem[_3127 + 96] = 0
                mem[_3127 + 128] = 0
                if s >= mem[_822]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _822 + 32] = _3127
                if s == -1:
                    revert with 'NH{q', 17
                if idx:
                    idx = idx - 1
                    s = s + 1
                    continue 
                _3376 = mem[64]
                mem[mem[64]] = 96
                _3423 = mem[_822]
                mem[mem[64] + 96] = mem[_822]
                idx = 0
                s = _822 + 32
                t = mem[64] + 128
                while idx < _3423:
                    _3742 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_3742 + 32]
                    mem[t + 64] = mem[_3742 + 64]
                    mem[t + 96] = bool(mem[_3742 + 96])
                    mem[t + 128] = mem[_3742 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                mem[_3376 + 32] = _747
                mem[_3376 + 64] = _747 + arg3 - 1 / arg3
                return memory
                  from mem[64]
                   len _3376 + (160 * _3423) + -mem[64] + 128
            mem[mem[64] + 4] = _3187
            staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                    gas gas_remaining wei
                   args _3187
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3325] == mem[_3325]
            if mem[_3325] <= 0:
                revert with 0, 'This round has not lottery'
            mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _3187
            staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                    gas gas_remaining wei
                   args _3187
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3456 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3465 = mem[_3456]
            require mem[_3456] <= test266151307()
            require _3456 + mem[_3456] + 31 < _3456 + return_data.size
            _3472 = mem[_3456 + mem[_3456]]
            if mem[_3456 + mem[_3456]] > test266151307():
                revert with 'NH{q', 65
            if _3456 + ceil32(return_data.size) + floor32(mem[_3456 + mem[_3456]]) + 1 > test266151307() or floor32(mem[_3456 + mem[_3456]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _3456 + ceil32(return_data.size) + floor32(mem[_3456 + mem[_3456]]) + 1
            mem[_3456 + ceil32(return_data.size)] = _3472
            require _3465 + (32 * _3472) + 32 <= return_data.size
            t = _3456 + _3465 + 32
            u = _3456 + ceil32(return_data.size) + 32
            while t < _3456 + _3465 + (32 * _3472) + 32:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[0] = _3187
            mem[32] = sha3(address(arg1), 8)
            _3762 = mem[64]
            mem[64] = mem[64] + (32 * stor8[address(arg1)][_3187]) + 32
            mem[_3762] = stor8[address(arg1)][_3187]
            u = _3762 + 32
            t = 0
            while t < stor8[address(arg1)][_3187]:
                mem[0] = sha3(_3187, sha3(address(arg1), 8))
                _4748 = mem[64]
                mem[64] = mem[64] + 192
                mem[_4748] = stor8[address(arg1)][_3187][t]
                idx = _4748
                s = (6 * t) + sha3(sha3(_3187, sha3(address(arg1), 8)))
                while _4748 + 192 > idx + 32:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[u] = _4748
                u = u + 32
                t = t + 1
                continue 
            _4994 = mem[_3762]
            t = 0
            while uint8(t) < _4994:
                if uint8(t) >= mem[_3762]:
                    revert with 'NH{q', 50
                if 0 >= mem[_3456 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if mem[_3456 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(t)) + _3762 + 32]]:
                    if uint8(t) >= mem[_3762]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_3456 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[_3456 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(t)) + _3762 + 32] + 32]:
                        mem[0] = _3187
                        mem[32] = 7
                        if sub_69894cf7[_3187].field_768 and 3 > -1 / sub_69894cf7[_3187].field_768:
                            revert with 'NH{q', 17
                        if not sub_69894cf7[_3187][7][1].field_0:
                            revert with 'NH{q', 18
                        if 0 > -(3 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][1].field_0) - 1:
                            revert with 'NH{q', 17
                    else:
                        if uint8(t) >= mem[_3762]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_3456 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_3456 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(t)) + _3762 + 32] + 64]:
                            mem[0] = _3187
                            mem[32] = 7
                            if sub_69894cf7[_3187].field_768 and 6 > -1 / sub_69894cf7[_3187].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[_3187][7][2].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(6 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][2].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(t) >= mem[_3762]:
                                revert with 'NH{q', 50
                            if 3 >= mem[_3456 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_3456 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(t)) + _3762 + 32] + 96]:
                                mem[0] = _3187
                                mem[32] = 7
                                if sub_69894cf7[_3187].field_768 and 10 > -1 / sub_69894cf7[_3187].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_3187][7][3].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(10 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][3].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(t) >= mem[_3762]:
                                    revert with 'NH{q', 50
                                if 4 >= mem[_3456 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_3456 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(t)) + _3762 + 32] + 128]:
                                    mem[0] = _3187
                                    mem[32] = 7
                                    if sub_69894cf7[_3187].field_768 and 15 > -1 / sub_69894cf7[_3187].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_3187][7][4].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(15 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][4].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(t) >= mem[_3762]:
                                        revert with 'NH{q', 50
                                    if 5 >= mem[_3456 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[0] = _3187
                                    mem[32] = 7
                                    if mem[_3456 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(t)) + _3762 + 32] + 160]:
                                        if sub_69894cf7[_3187].field_768 and 40 > -1 / sub_69894cf7[_3187].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_3187][7][6].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(40 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][6].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if sub_69894cf7[_3187].field_768 and 26 > -1 / sub_69894cf7[_3187].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_3187][7][5].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(26 * sub_69894cf7[_3187].field_768 / 100 / sub_69894cf7[_3187][7][5].field_0) - 1:
                                            revert with 'NH{q', 17
                if uint8(t) == 255:
                    revert with 'NH{q', 17
                _4994 = mem[_3762]
                t = uint8(t) + 1
                continue 
            mem[0] = address(arg1)
            mem[32] = sha3(_3187, 7) + 8
            mem[_3127 + 96] = bool(uint8(sub_69894cf7[_3187][8][address(arg1)].field_0))
            mem[_3127 + 128] = 0
            if s >= mem[_822]:
                revert with 'NH{q', 50
            mem[(32 * s) + _822 + 32] = _3127
            if s == -1:
                revert with 'NH{q', 17
            if idx:
                idx = idx - 1
                s = s + 1
                continue 
            _5098 = mem[64]
            mem[mem[64]] = 96
            _5116 = mem[_822]
            mem[mem[64] + 96] = mem[_822]
            idx = 0
            s = _822 + 32
            t = mem[64] + 128
            while idx < _5116:
                _5220 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_5220 + 32]
                mem[t + 64] = mem[_5220 + 64]
                mem[t + 96] = bool(mem[_5220 + 96])
                mem[t + 128] = mem[_5220 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_5098 + 32] = _747
            mem[_5098 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _5098 + (160 * _5116) + -mem[64] + 128
        _3149 = mem[64]
        mem[mem[64]] = 96
        _3202 = mem[_822]
        mem[mem[64] + 96] = mem[_822]
        idx = 0
        s = _822 + 32
        t = mem[64] + 128
        while idx < _3202:
            _3741 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_3741 + 32]
            mem[t + 64] = mem[_3741 + 64]
            mem[t + 96] = bool(mem[_3741 + 96])
            mem[t + 128] = mem[_3741 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_3149 + 32] = _747
        mem[_3149 + 64] = _747 + arg3 - 1 / arg3
        return memory
          from mem[64]
           len _3149 + (160 * _3202) + -mem[64] + 128
    if mem[96] + arg3 + (-1 * arg3 * arg2) - 1 > -2:
        revert with 'NH{q', 17
    if mem[96] + arg3 - (arg3 * arg2) < arg3:
        revert with 'NH{q', 17
    if arg3 - 1 < 0:
        revert with 'NH{q', 17
    if arg3 + (-1 * arg3 * arg2) + (arg3 * arg2) - 1 > -2:
        revert with 'NH{q', 17
    if arg3 - (arg3 * arg2) + (arg3 * arg2) > test266151307():
        revert with 'NH{q', 65
    _895 = mem[64]
    mem[mem[64]] = arg3 - (arg3 * arg2) + (arg3 * arg2)
    mem[64] = mem[64] + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 32
    if not arg3 - (arg3 * arg2) + (arg3 * arg2):
        idx = _747 + arg3 + (-1 * arg3 * arg2) - 1
        s = 0
        while idx >= _747 - (arg3 * arg2):
            _1591 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1591] = 0
            mem[_1591 + 32] = 0
            mem[_1591 + 64] = 0
            mem[_1591 + 96] = 0
            mem[_1591 + 128] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_1591] = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_1591 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_1591 + 64] = mem[mem[(32 * idx) + 128] + 64]
            _1633 = mem[_1591 + 32]
            mem[0] = mem[_1591 + 32]
            mem[32] = 7
            if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
                revert with 'NH{q', 33
            if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
                mem[_1591 + 96] = 0
                mem[_1591 + 128] = 0
                if s >= mem[_895]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _895 + 32] = _1591
                if s == -1:
                    revert with 'NH{q', 17
                if idx:
                    idx = idx - 1
                    s = s + 1
                    continue 
                _1766 = mem[64]
                mem[mem[64]] = 96
                _1786 = mem[_895]
                mem[mem[64] + 96] = mem[_895]
                idx = 0
                s = _895 + 32
                t = mem[64] + 128
                while idx < _1786:
                    _2417 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2417 + 32]
                    mem[t + 64] = mem[_2417 + 64]
                    mem[t + 96] = bool(mem[_2417 + 96])
                    mem[t + 128] = mem[_2417 + 128]
                    idx = idx + 1
                    s = s + 32
                    t = t + 160
                    continue 
                mem[_1766 + 32] = _747
                mem[_1766 + 64] = _747 + arg3 - 1 / arg3
                return memory
                  from mem[64]
                   len _1766 + (160 * _1786) + -mem[64] + 128
            mem[mem[64] + 4] = _1633
            staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                    gas gas_remaining wei
                   args _1633
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1737] == mem[_1737]
            if mem[_1737] <= 0:
                revert with 0, 'This round has not lottery'
            mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1633
            staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                    gas gas_remaining wei
                   args _1633
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1839 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1852 = mem[_1839]
            require mem[_1839] <= test266151307()
            require _1839 + mem[_1839] + 31 < _1839 + return_data.size
            _1866 = mem[_1839 + mem[_1839]]
            if mem[_1839 + mem[_1839]] > test266151307():
                revert with 'NH{q', 65
            if _1839 + ceil32(return_data.size) + floor32(mem[_1839 + mem[_1839]]) + 1 > test266151307() or floor32(mem[_1839 + mem[_1839]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1839 + ceil32(return_data.size) + floor32(mem[_1839 + mem[_1839]]) + 1
            mem[_1839 + ceil32(return_data.size)] = _1866
            require _1852 + (32 * _1866) + 32 <= return_data.size
            t = _1839 + _1852 + 32
            u = _1839 + ceil32(return_data.size) + 32
            while t < _1839 + _1852 + (32 * _1866) + 32:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[0] = _1633
            mem[32] = sha3(address(arg1), 8)
            _2435 = mem[64]
            mem[64] = mem[64] + (32 * stor8[address(arg1)][_1633]) + 32
            mem[_2435] = stor8[address(arg1)][_1633]
            u = _2435 + 32
            t = 0
            while t < stor8[address(arg1)][_1633]:
                mem[0] = sha3(_1633, sha3(address(arg1), 8))
                _4056 = mem[64]
                mem[64] = mem[64] + 192
                mem[_4056] = stor8[address(arg1)][_1633][t]
                idx = _4056
                s = (6 * t) + sha3(sha3(_1633, sha3(address(arg1), 8)))
                while _4056 + 192 > idx + 32:
                    mem[idx + 32] = stor1[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[u] = _4056
                u = u + 32
                t = t + 1
                continue 
            _4507 = mem[_2435]
            t = 0
            while uint8(t) < _4507:
                if uint8(t) >= mem[_2435]:
                    revert with 'NH{q', 50
                if 0 >= mem[_1839 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if mem[_1839 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(t)) + _2435 + 32]]:
                    if uint8(t) >= mem[_2435]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_1839 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[_1839 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(t)) + _2435 + 32] + 32]:
                        mem[0] = _1633
                        mem[32] = 7
                        if sub_69894cf7[_1633].field_768 and 3 > -1 / sub_69894cf7[_1633].field_768:
                            revert with 'NH{q', 17
                        if not sub_69894cf7[_1633][7][1].field_0:
                            revert with 'NH{q', 18
                        if 0 > -(3 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][1].field_0) - 1:
                            revert with 'NH{q', 17
                    else:
                        if uint8(t) >= mem[_2435]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_1839 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_1839 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(t)) + _2435 + 32] + 64]:
                            mem[0] = _1633
                            mem[32] = 7
                            if sub_69894cf7[_1633].field_768 and 6 > -1 / sub_69894cf7[_1633].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[_1633][7][2].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(6 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][2].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(t) >= mem[_2435]:
                                revert with 'NH{q', 50
                            if 3 >= mem[_1839 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_1839 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(t)) + _2435 + 32] + 96]:
                                mem[0] = _1633
                                mem[32] = 7
                                if sub_69894cf7[_1633].field_768 and 10 > -1 / sub_69894cf7[_1633].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_1633][7][3].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(10 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][3].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(t) >= mem[_2435]:
                                    revert with 'NH{q', 50
                                if 4 >= mem[_1839 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_1839 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(t)) + _2435 + 32] + 128]:
                                    mem[0] = _1633
                                    mem[32] = 7
                                    if sub_69894cf7[_1633].field_768 and 15 > -1 / sub_69894cf7[_1633].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_1633][7][4].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(15 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][4].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if uint8(t) >= mem[_2435]:
                                        revert with 'NH{q', 50
                                    if 5 >= mem[_1839 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[0] = _1633
                                    mem[32] = 7
                                    if mem[_1839 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(t)) + _2435 + 32] + 160]:
                                        if sub_69894cf7[_1633].field_768 and 40 > -1 / sub_69894cf7[_1633].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_1633][7][6].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(40 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][6].field_0) - 1:
                                            revert with 'NH{q', 17
                                    else:
                                        if sub_69894cf7[_1633].field_768 and 26 > -1 / sub_69894cf7[_1633].field_768:
                                            revert with 'NH{q', 17
                                        if not sub_69894cf7[_1633][7][5].field_0:
                                            revert with 'NH{q', 18
                                        if 0 > -(26 * sub_69894cf7[_1633].field_768 / 100 / sub_69894cf7[_1633][7][5].field_0) - 1:
                                            revert with 'NH{q', 17
                if uint8(t) == 255:
                    revert with 'NH{q', 17
                _4507 = mem[_2435]
                t = uint8(t) + 1
                continue 
            mem[0] = address(arg1)
            mem[32] = sha3(_1633, 7) + 8
            mem[_1591 + 96] = bool(uint8(sub_69894cf7[_1633][8][address(arg1)].field_0))
            mem[_1591 + 128] = 0
            if s >= mem[_895]:
                revert with 'NH{q', 50
            mem[(32 * s) + _895 + 32] = _1591
            if s == -1:
                revert with 'NH{q', 17
            if idx:
                idx = idx - 1
                s = s + 1
                continue 
            _4622 = mem[64]
            mem[mem[64]] = 96
            _4645 = mem[_895]
            mem[mem[64] + 96] = mem[_895]
            idx = 0
            s = _895 + 32
            t = mem[64] + 128
            while idx < _4645:
                _4749 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_4749 + 32]
                mem[t + 64] = mem[_4749 + 64]
                mem[t + 96] = bool(mem[_4749 + 96])
                mem[t + 128] = mem[_4749 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_4622 + 32] = _747
            mem[_4622 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _4622 + (160 * _4645) + -mem[64] + 128
        _1604 = mem[64]
        mem[mem[64]] = 96
        _1642 = mem[_895]
        mem[mem[64] + 96] = mem[_895]
        idx = 0
        s = _895 + 32
        t = mem[64] + 128
        while idx < _1642:
            _2416 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2416 + 32]
            mem[t + 64] = mem[_2416 + 64]
            mem[t + 96] = bool(mem[_2416 + 96])
            mem[t + 128] = mem[_2416 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_1604 + 32] = _747
        mem[_1604 + 64] = _747 + arg3 - 1 / arg3
        return memory
          from mem[64]
           len _1604 + (160 * _1642) + -mem[64] + 128
    mem[64] = _895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 192
    mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 32] = 0
    mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 64] = 0
    mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 96] = 0
    mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 128] = 0
    mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 160] = 0
    mem[var126001] = _895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 32
    s = var126001
    idx = var126002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 32] = 0
        mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 64] = 0
        mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 96] = 0
        mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 128] = 0
        mem[_895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 160] = 0
        mem[s + 32] = _895 + (32 * arg3 - (arg3 * arg2) + (arg3 * arg2)) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = _747 + arg3 + (-1 * arg3 * arg2) - 1
    s = 0
    while idx >= _747 - (arg3 * arg2):
        _3129 = mem[64]
        mem[64] = mem[64] + 160
        mem[_3129] = 0
        mem[_3129 + 32] = 0
        mem[_3129 + 64] = 0
        mem[_3129 + 96] = 0
        mem[_3129 + 128] = 0
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_3129] = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_3129 + 32] = mem[mem[(32 * idx) + 128] + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_3129 + 64] = mem[mem[(32 * idx) + 128] + 64]
        _3191 = mem[_3129 + 32]
        mem[0] = mem[_3129 + 32]
        mem[32] = 7
        if uint8(sub_69894cf7[mem[0]].field_1280) > 2:
            revert with 'NH{q', 33
        if uint8(sub_69894cf7[mem[0]].field_1280) != 1:
            mem[_3129 + 96] = 0
            mem[_3129 + 128] = 0
            if s >= mem[_895]:
                revert with 'NH{q', 50
            mem[(32 * s) + _895 + 32] = _3129
            if s == -1:
                revert with 'NH{q', 17
            if idx:
                idx = idx - 1
                s = s + 1
                continue 
            _3379 = mem[64]
            mem[mem[64]] = 96
            _3425 = mem[_895]
            mem[mem[64] + 96] = mem[_895]
            idx = 0
            s = _895 + 32
            t = mem[64] + 128
            while idx < _3425:
                _3745 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_3745 + 32]
                mem[t + 64] = mem[_3745 + 64]
                mem[t + 96] = bool(mem[_3745 + 96])
                mem[t + 128] = mem[_3745 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            mem[_3379 + 32] = _747
            mem[_3379 + 64] = _747 + arg3 - 1 / arg3
            return memory
              from mem[64]
               len _3379 + (160 * _3425) + -mem[64] + 128
        mem[mem[64] + 4] = _3191
        staticcall sub_e6a572c5Address.randomNumbers(uint256 arg1) with:
                gas gas_remaining wei
               args _3191
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3327] == mem[_3327]
        if mem[_3327] <= 0:
            revert with 0, 'This round has not lottery'
        mem[mem[64]] = 0x74ecf4b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _3191
        staticcall sub_e6a572c5Address.0x74ecf4b5 with:
                gas gas_remaining wei
               args _3191
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3457 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3467 = mem[_3457]
        require mem[_3457] <= test266151307()
        require _3457 + mem[_3457] + 31 < _3457 + return_data.size
        _3473 = mem[_3457 + mem[_3457]]
        if mem[_3457 + mem[_3457]] > test266151307():
            revert with 'NH{q', 65
        if _3457 + ceil32(return_data.size) + floor32(mem[_3457 + mem[_3457]]) + 1 > test266151307() or floor32(mem[_3457 + mem[_3457]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _3457 + ceil32(return_data.size) + floor32(mem[_3457 + mem[_3457]]) + 1
        mem[_3457 + ceil32(return_data.size)] = _3473
        require _3467 + (32 * _3473) + 32 <= return_data.size
        t = _3457 + _3467 + 32
        u = _3457 + ceil32(return_data.size) + 32
        while t < _3457 + _3467 + (32 * _3473) + 32:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[0] = _3191
        mem[32] = sha3(address(arg1), 8)
        _3765 = mem[64]
        mem[64] = mem[64] + (32 * stor8[address(arg1)][_3191]) + 32
        mem[_3765] = stor8[address(arg1)][_3191]
        u = _3765 + 32
        t = 0
        while t < stor8[address(arg1)][_3191]:
            mem[0] = sha3(_3191, sha3(address(arg1), 8))
            _4751 = mem[64]
            mem[64] = mem[64] + 192
            mem[_4751] = stor8[address(arg1)][_3191][t]
            idx = _4751
            s = (6 * t) + sha3(sha3(_3191, sha3(address(arg1), 8)))
            while _4751 + 192 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            mem[u] = _4751
            u = u + 32
            t = t + 1
            continue 
        _4995 = mem[_3765]
        t = 0
        while uint8(t) < _4995:
            if uint8(t) >= mem[_3765]:
                revert with 'NH{q', 50
            if 0 >= mem[_3457 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[_3457 + ceil32(return_data.size) + 32] == mem[mem[(32 * uint8(t)) + _3765 + 32]]:
                if uint8(t) >= mem[_3765]:
                    revert with 'NH{q', 50
                if 1 >= mem[_3457 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if mem[_3457 + ceil32(return_data.size) + 64] != mem[mem[(32 * uint8(t)) + _3765 + 32] + 32]:
                    mem[0] = _3191
                    mem[32] = 7
                    if sub_69894cf7[_3191].field_768 and 3 > -1 / sub_69894cf7[_3191].field_768:
                        revert with 'NH{q', 17
                    if not sub_69894cf7[_3191][7][1].field_0:
                        revert with 'NH{q', 18
                    if 0 > -(3 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][1].field_0) - 1:
                        revert with 'NH{q', 17
                else:
                    if uint8(t) >= mem[_3765]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_3457 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[_3457 + ceil32(return_data.size) + 96] != mem[mem[(32 * uint8(t)) + _3765 + 32] + 64]:
                        mem[0] = _3191
                        mem[32] = 7
                        if sub_69894cf7[_3191].field_768 and 6 > -1 / sub_69894cf7[_3191].field_768:
                            revert with 'NH{q', 17
                        if not sub_69894cf7[_3191][7][2].field_0:
                            revert with 'NH{q', 18
                        if 0 > -(6 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][2].field_0) - 1:
                            revert with 'NH{q', 17
                    else:
                        if uint8(t) >= mem[_3765]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_3457 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_3457 + ceil32(return_data.size) + 128] != mem[mem[(32 * uint8(t)) + _3765 + 32] + 96]:
                            mem[0] = _3191
                            mem[32] = 7
                            if sub_69894cf7[_3191].field_768 and 10 > -1 / sub_69894cf7[_3191].field_768:
                                revert with 'NH{q', 17
                            if not sub_69894cf7[_3191][7][3].field_0:
                                revert with 'NH{q', 18
                            if 0 > -(10 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][3].field_0) - 1:
                                revert with 'NH{q', 17
                        else:
                            if uint8(t) >= mem[_3765]:
                                revert with 'NH{q', 50
                            if 4 >= mem[_3457 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_3457 + ceil32(return_data.size) + 160] != mem[mem[(32 * uint8(t)) + _3765 + 32] + 128]:
                                mem[0] = _3191
                                mem[32] = 7
                                if sub_69894cf7[_3191].field_768 and 15 > -1 / sub_69894cf7[_3191].field_768:
                                    revert with 'NH{q', 17
                                if not sub_69894cf7[_3191][7][4].field_0:
                                    revert with 'NH{q', 18
                                if 0 > -(15 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][4].field_0) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if uint8(t) >= mem[_3765]:
                                    revert with 'NH{q', 50
                                if 5 >= mem[_3457 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[0] = _3191
                                mem[32] = 7
                                if mem[_3457 + ceil32(return_data.size) + 192] == mem[mem[(32 * uint8(t)) + _3765 + 32] + 160]:
                                    if sub_69894cf7[_3191].field_768 and 40 > -1 / sub_69894cf7[_3191].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_3191][7][6].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(40 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][6].field_0) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if sub_69894cf7[_3191].field_768 and 26 > -1 / sub_69894cf7[_3191].field_768:
                                        revert with 'NH{q', 17
                                    if not sub_69894cf7[_3191][7][5].field_0:
                                        revert with 'NH{q', 18
                                    if 0 > -(26 * sub_69894cf7[_3191].field_768 / 100 / sub_69894cf7[_3191][7][5].field_0) - 1:
                                        revert with 'NH{q', 17
            if uint8(t) == 255:
                revert with 'NH{q', 17
            _4995 = mem[_3765]
            t = uint8(t) + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = sha3(_3191, 7) + 8
        mem[_3129 + 96] = bool(uint8(sub_69894cf7[_3191][8][address(arg1)].field_0))
        mem[_3129 + 128] = 0
        if s >= mem[_895]:
            revert with 'NH{q', 50
        mem[(32 * s) + _895 + 32] = _3129
        if s == -1:
            revert with 'NH{q', 17
        if idx:
            idx = idx - 1
            s = s + 1
            continue 
        _5100 = mem[64]
        mem[mem[64]] = 96
        _5121 = mem[_895]
        mem[mem[64] + 96] = mem[_895]
        idx = 0
        s = _895 + 32
        t = mem[64] + 128
        while idx < _5121:
            _5221 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_5221 + 32]
            mem[t + 64] = mem[_5221 + 64]
            mem[t + 96] = bool(mem[_5221 + 96])
            mem[t + 128] = mem[_5221 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        mem[_5100 + 32] = _747
        mem[_5100 + 64] = _747 + arg3 - 1 / arg3
        return memory
          from mem[64]
           len _5100 + (160 * _5121) + -mem[64] + 128
    _3154 = mem[64]
    mem[mem[64]] = 96
    _3205 = mem[_895]
    mem[mem[64] + 96] = mem[_895]
    idx = 0
    s = _895 + 32
    t = mem[64] + 128
    while idx < _3205:
        _3744 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_3744 + 32]
        mem[t + 64] = mem[_3744 + 64]
        mem[t + 96] = bool(mem[_3744 + 96])
        mem[t + 128] = mem[_3744 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    mem[_3154 + 32] = _747
    mem[_3154 + 64] = _747 + arg3 - 1 / arg3
    return memory
      from mem[64]
       len _3154 + (160 * _3205) + -mem[64] + 128
}



}
