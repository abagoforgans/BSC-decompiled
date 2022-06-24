contract main {




// =====================  Runtime code  =====================


#
#  - sub_095249de(?)
#  - sub_aff87805(?)
#  - deposit(address arg1, uint256 arg2, string arg3)
#  - sub_df492187(?)
#  - withdraw(uint256 arg1, address arg2, string arg3)
#
address owner;
array of uint256 stor1;
uint256 poolsCount;
array of struct stor3;
address stor4;
array of struct sub_f648fa88;
mapping of struct stor6;
array of struct sub_92091fb9;
mapping of uint256 stor99;

function percent() payable {
    return stor1.length
}

function poolsCount() payable {
    return poolsCount
}

function owner() payable {
    return owner
}

function sub_92091fb9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_92091fb9[arg1].field_0
    return address(sub_92091fb9[arg1][arg2].field_0), sub_92091fb9[arg1][arg2].field_256, sub_92091fb9[arg1][arg2].field_512
}

function sub_f648fa88(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < sub_f648fa88[arg1[all]][arg2].field_0
    return address(sub_f648fa88[arg1[all]][arg2][arg3].field_0), 
           sub_f648fa88[arg1[all]][arg2][arg3].field_256,
           sub_f648fa88[arg1[all]][arg2][arg3].field_512,
           sub_f648fa88[arg1[all]][arg2][arg3].field_768,
           sub_f648fa88[arg1[all]][arg2][arg3].field_1024,
           sub_f648fa88[arg1[all]][arg2][arg3].field_1280
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

function sub_beecb8b6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= 175200 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lock: period should be less than 20 years'
    if arg2 >= sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_92091fb9[address(arg1)][arg2].field_512 > -arg3 - 1:
        revert with 'NH{q', 17
    if sub_92091fb9[address(arg1)][arg2].field_512 + arg3 < sub_92091fb9[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 50
    sub_92091fb9[address(arg1)][arg2].field_512 += arg3
}

function sub_10092b35(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 6
    if not uint8(sub_f648fa88[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
        revert with 0, 'Pool: not exists'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 5
    mem[ceil32(ceil32(arg2.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][address(arg1)]
    return memory
      from ceil32(ceil32(arg2.length)) + 97
       len 32
}

function lockLPToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= 175200 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lock: period should be less than 20 years'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'LP: transferFrom error'
    if block.timestamp > -arg3 - 1:
        revert with 'NH{q', 17
    if block.timestamp + arg3 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    sub_92091fb9[address(arg1)].field_0++
    address(sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0) = arg1
    sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_256 = arg2
    sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_512 = block.timestamp + arg3
}

function sub_adf150f8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor6[arg3[all]].field_1280):
        revert with 0, 'Pool: not exists'
    if arg1 >= sub_f648fa88[arg3[all]][address(arg2)].field_0:
        revert with 'NH{q', 50
    if sub_f648fa88[arg3[all]][address(arg2)][arg1].field_512 <= 0:
        revert with 0, 'Beneficiary does not exists'
    require ext_code.size(stor4)
    call stor4.transferTrusted(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, sub_f648fa88[arg3[all]][address(arg2)][arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Cannot send to beneficiary'
    if sub_f648fa88[arg3[all]][address(arg2)][arg1].field_512 > stor6[arg3[all]].field_2048:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor6[arg3[all]].field_2048 < sub_f648fa88[arg3[all]][address(arg2)][arg1].field_512:
        revert with 'NH{q', 17
    sub_f648fa88[arg3[all]][address(arg2)][arg1].field_512 = 0
    return 1
}

function sub_ee3de960(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if not uint8(stor6[arg1[all]].field_1280):
        revert with 0, 'Pool: not exists'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 5
    mem[0] = address(arg2)
    mem[32] = sha3(arg1[all], 5)
    mem[64] = (32 * sub_f648fa88[arg1[all]][address(arg2)].field_0) + 128
    mem[96] = sub_f648fa88[arg1[all]][address(arg2)].field_0
    s = 128
    idx = 0
    while idx < sub_f648fa88[arg1[all]][address(arg2)].field_0:
        mem[0] = sha3(address(arg2), sha3(arg1[all], 5))
        _24 = mem[64]
        mem[64] = mem[64] + 192
        mem[_24] = address(sub_f648fa88[arg1[all]][address(arg2)][idx].field_0)
        mem[_24 + 32] = sub_f648fa88[arg1[all]][address(arg2)][idx].field_256
        mem[_24 + 64] = sub_f648fa88[arg1[all]][address(arg2)][idx].field_512
        mem[_24 + 96] = sub_f648fa88[arg1[all]][address(arg2)][idx].field_768
        mem[_24 + 128] = sub_f648fa88[arg1[all]][address(arg2)][idx].field_1024
        mem[_24 + 160] = sub_f648fa88[arg1[all]][address(arg2)][idx].field_1280
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64]] = 32
    _26 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _26:
        _35 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_35 + 32]
        mem[t + 64] = mem[_35 + 64]
        mem[t + 96] = mem[_35 + 96]
        mem[t + 128] = mem[_35 + 128]
        mem[t + 160] = mem[_35 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _25 + (192 * _26) + -mem[64] + 64
}

function sub_00f6c93e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_92091fb9[address(arg1)].field_0:
        revert with 0, 'Locker: wrong id'
    if arg2 >= sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 50
    if block.timestamp <= sub_92091fb9[address(arg1)][arg2].field_512:
        revert with 0, 'Locker: LP tokens still locked'
    require ext_code.size(address(sub_92091fb9[address(arg1)][arg2].field_0))
    call address(sub_92091fb9[address(arg1)][arg2].field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_92091fb9[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Locker: unable to transfer'
    if 1 > sub_92091fb9[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_92091fb9[address(arg1)].field_0 < 1:
        revert with 'NH{q', 17
    if sub_92091fb9[address(arg1)].field_0 - 1 >= sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg2 >= sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 50
    address(sub_92091fb9[address(arg1)][arg2].field_0) = address(sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0)
    sub_92091fb9[address(arg1)][arg2].field_256 = sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0
    sub_92091fb9[address(arg1)][arg2].field_512 = sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0
    if not sub_92091fb9[address(arg1)].field_0:
        revert with 'NH{q', 49
    address(sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0) = 0
    sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0 = 0
    sub_92091fb9[address(arg1)][sub_92091fb9[address(arg1)].field_0].field_0 = 0
    sub_92091fb9[address(arg1)].field_0--
}

function sub_c1f57af7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if bool(stor6[arg1[all]].field_0):
        if bool(stor6[arg1[all]].field_0) == uint255(stor6[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor6[arg1[all]].field_0):
            if bool(stor6[arg1[all]].field_0) == uint255(stor6[arg1[all]].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor6[arg1[all]].field_1):
                if 31 >= uint255(stor6[arg1[all]].field_1):
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor6[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor6[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + uint255(stor6[arg1[all]].field_1) + 97 > idx:
                        mem[idx + 32] = stor6[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[arg1[all]].field_0) == stor6[arg1[all]].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor6[arg1[all]].field_1 % 128:
                if 31 >= stor6[arg1[all]].field_1 % 128:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor6[arg1[all]].field_8)
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor6[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor6[arg1[all]].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = stor6[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor6[arg1[all]].field_1)), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor6[arg1[all]].field_1))]), 
               stor6[arg1[all]].field_256,
               stor6[arg1[all]].field_512,
               stor6[arg1[all]].field_768,
               stor6[arg1[all]].field_1024,
               bool(uint8(stor6[arg1[all]].field_1280)),
               stor6[arg1[all]].field_1536,
               stor6[arg1[all]].field_1792,
               stor6[arg1[all]].field_2048,
               stor6[arg1[all]].field_2304
    if bool(stor6[arg1[all]].field_0) == stor6[arg1[all]].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor6[arg1[all]].field_0):
        if bool(stor6[arg1[all]].field_0) == uint255(stor6[arg1[all]].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor6[arg1[all]].field_1):
            if 31 >= uint255(stor6[arg1[all]].field_1):
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor6[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor6[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + uint255(stor6[arg1[all]].field_1) + 97 > idx:
                    mem[idx + 32] = stor6[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[arg1[all]].field_0) == stor6[arg1[all]].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor6[arg1[all]].field_1 % 128:
            if 31 >= stor6[arg1[all]].field_1 % 128:
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * Mask(248, 0, stor6[arg1[all]].field_8)
            else:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor6[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor6[arg1[all]].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = stor6[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor6[arg1[all]].field_0 % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor6[arg1[all]].field_1 % 128)]), 
           stor6[arg1[all]].field_256,
           stor6[arg1[all]].field_512,
           stor6[arg1[all]].field_768,
           stor6[arg1[all]].field_1024,
           bool(uint8(stor6[arg1[all]].field_1280)),
           stor6[arg1[all]].field_1536,
           stor6[arg1[all]].field_1792,
           stor6[arg1[all]].field_2048,
           stor6[arg1[all]].field_2304
}

function getPools() payable {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    s = 128
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _18 = mem[64]
        mem[64] = mem[64] + 32
        if bool(stor3[idx].field_0):
            if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                revert with 'NH{q', 34
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_1)) + 32
            mem[_21] = uint255(stor3[idx].field_1)
            if bool(stor3[idx].field_0):
                if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if uint255(stor3[idx].field_1):
                    if 31 >= uint255(stor3[idx].field_1):
                        mem[_21 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                    else:
                        mem[0] = sha3(3) + idx
                        mem[_21 + 32] = stor3[idx].field_0
                        t = _21 + 32
                        u = sha3(mem[0])
                        while _21 + uint255(stor3[idx].field_1) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_18] = _21
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor3[idx].field_1 % 128:
                mem[_18] = _21
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1 % 128:
                mem[_21 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                mem[_18] = _21
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(3) + idx
            mem[_21 + 32] = stor3[idx].field_0
            t = _21 + 32
            u = sha3(mem[0])
            while _21 + stor3[u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_18] = _21
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].field_1 % 128) + 32
        mem[_22] = stor3[idx].field_1 % 128
        if bool(stor3[idx].field_0):
            if bool(stor3[idx].field_0) == uint255(stor3[idx].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor3[idx].field_1):
                mem[_18] = _22
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[idx].field_1):
                mem[_22 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
                mem[_18] = _22
                mem[s] = _18
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(3) + idx
            mem[_22 + 32] = stor3[idx].field_0
            t = _22 + 32
            u = sha3(mem[0])
            while _22 + uint255(stor3[u].field_1) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_18] = _22
            mem[t] = _18
            t = t + 32
            u = u + 1
            continue 
        if bool(stor3[idx].field_0) == stor3[idx].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor3[idx].field_1 % 128:
            if 31 >= stor3[idx].field_1 % 128:
                mem[_22 + 32] = 256 * Mask(248, 0, stor3[idx].field_8)
            else:
                mem[0] = sha3(3) + idx
                mem[_22 + 32] = stor3[idx].field_0
                t = _22 + 32
                u = sha3(mem[0])
                while _22 + stor3[idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_18] = _22
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    _19 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _20:
        mem[u] = t + -_19 - 64
        _34 = mem[mem[s]]
        mem[t] = 32
        _35 = mem[_34]
        mem[t + 32] = mem[_34]
        v = 0
        while v < _35:
            mem[t + v + 64] = mem[_34 + v + 32]
            v = v + 32
            continue 
        if ceil32(_35) > _35:
            mem[t + _35 + 64] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_35) + 64
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
