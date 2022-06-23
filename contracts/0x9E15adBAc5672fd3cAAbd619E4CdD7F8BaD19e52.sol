contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
array of uint256 stor2;
mapping of struct stor3;

function sub_6a8f2614(?) payable {
    return stor2.length
}

function owner() payable {
    return owner
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

function sub_53435851(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor3[arg1].field_512):
        if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor3[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[arg1].field_512 = 0
            idx = 0
            while uint255(stor3[arg1].field_513) + 31 / 32 > idx:
                stor3[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor3[arg1][2][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[arg1].field_512 = 0
            idx = 0
            while stor3[arg1].field_513 % 128 + 31 / 32 > idx:
                stor3[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    address(stor3[arg1].field_768) = address(arg3)
    address(stor3[arg1].field_1024) = address(arg4)
    stor3[arg1].field_1280 = arg5
    stor3[arg1].field_1536 = arg6
}

function sub_741e58c0(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1.length == -1:
        revert with 'NH{q', 17
    stor1.length++
    stor2.length++
    stor2[stor2.length] = stor1.length + 1
    stor3[stor1.length + 1].field_0 = stor1.length + 1
    stor3[stor1.length + 1].field_256 = stor2.length
    if bool(stor3[stor1.length + 1].field_512):
        if bool(stor3[stor1.length + 1].field_512) == uint255(stor3[stor1.length + 1].field_513) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor3[stor1.length + 1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[stor1.length + 1].field_512 = 0
            idx = 0
            while uint255(stor3[stor1.length + 1].field_513) + 31 / 32 > idx:
                stor3[stor1.length + 1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[stor1.length + 1].field_512) == stor3[stor1.length + 1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor3[stor1.length + 1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[stor1.length + 1].field_512 = 0
            idx = 0
            while stor3[stor1.length + 1].field_513 % 128 + 31 / 32 > idx:
                stor3[stor1.length + 1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    address(stor3[stor1.length + 1].field_768) = address(arg2)
    address(stor3[stor1.length + 1].field_1024) = address(arg3)
    stor3[stor1.length + 1].field_1280 = arg4
    stor3[stor1.length + 1].field_1536 = arg5
    return (stor1.length + 1)
}

function deletePlan(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2.length < 1:
        revert with 'NH{q', 17
    if var62002 < stor2.length - 1:
        if var74003 > -2:
            revert with 'NH{q', 17
        idx = var76002 + 1
        s = var76006
        while idx < stor2.length:
            if s >= stor2.length:
                revert with 'NH{q', 50
            stor2[s] = stor2[idx]
            mem[0] = stor2[s]
            mem[32] = 3
            if not stor3[stor2[s]].field_256:
                revert with 'NH{q', 17
            stor3[stor2[s]].field_256--
            if s == -1:
                revert with 'NH{q', 17
            if stor2.length < 1:
                revert with 'NH{q', 17
            if s + 1 < stor2.length - 1:
                if s + 1 > -2:
                    revert with 'NH{q', 17
                idx = s + 2
                s = s + 1
                continue 
            if not stor2.length:
                revert with 'NH{q', 49
            stor2[stor2.length] = 0
            stor2.length--
            stor3[arg1].field_0 = 0
            stor3[arg1].field_256 = 0
            if bool(stor3[arg1].field_512):
                if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
                    revert with 'NH{q', 34
                stor3[arg1].field_512 = 0
                if 31 < uint255(stor3[arg1].field_513):
                    idx = sha3(sha3(arg1, 3) + 2)
                    while sha3(sha3(arg1, 3) + 2) + (uint255(stor3[arg1].field_513) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                stor3[arg1].field_512 = 0
                if 31 < stor3[arg1].field_513 % 128:
                    idx = sha3(sha3(arg1, 3) + 2)
                    while sha3(sha3(arg1, 3) + 2) + (stor3[arg1].field_513 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            address(stor3[arg1].field_768) = 0
            address(stor3[arg1].field_1024) = 0
            stor3[arg1].field_1280 = 0
            stor3[arg1].field_1536 = 0
        revert with 'NH{q', 50
    if not stor2.length:
        revert with 'NH{q', 49
    stor2[stor2.length] = 0
    stor2.length--
    stor3[arg1].field_0 = 0
    stor3[arg1].field_256 = 0
    if bool(stor3[arg1].field_512):
        if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
            revert with 'NH{q', 34
        stor3[arg1].field_512 = 0
        if 31 < uint255(stor3[arg1].field_513):
            idx = 0
            while uint255(stor3[arg1].field_513) + 31 / 32 > idx:
                stor3[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        stor3[arg1].field_512 = 0
        if 31 < stor3[arg1].field_513 % 128:
            idx = 0
            while stor3[arg1].field_513 % 128 + 31 / 32 > idx:
                stor3[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    address(stor3[arg1].field_768) = 0
    address(stor3[arg1].field_1024) = 0
    stor3[arg1].field_1280 = 0
    stor3[arg1].field_1536 = 0
}

function getPlanById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[arg1].field_512):
        if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor3[arg1].field_512):
            if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor3[arg1].field_513):
                if 31 >= uint255(stor3[arg1].field_513):
                    mem[352] = 256 * Mask(248, 0, stor3[arg1].field_520)
                else:
                    mem[352] = stor3[arg1][2].field_0
                    idx = 352
                    s = 0
                    while uint255(stor3[arg1].field_513) + 320 > idx:
                        mem[idx + 32] = stor3[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_513 % 128:
                if 31 >= stor3[arg1].field_513 % 128:
                    mem[352] = 256 * Mask(248, 0, stor3[arg1].field_520)
                else:
                    mem[352] = stor3[arg1][2].field_0
                    idx = 352
                    s = 0
                    while stor3[arg1].field_513 % 128 + 320 > idx:
                        mem[idx + 32] = stor3[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor3[arg1].field_0, 
               Array(len=2 * Mask(256, -1, uint255(stor3[arg1].field_513)), data=mem[352 len ceil32(uint255(stor3[arg1].field_513))]),
               address(stor3[arg1].field_768),
               address(stor3[arg1].field_1024),
               stor3[arg1].field_1280,
               stor3[arg1].field_1536
    if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3[arg1].field_512):
        if bool(stor3[arg1].field_512) == uint255(stor3[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor3[arg1].field_513):
            if 31 >= uint255(stor3[arg1].field_513):
                mem[352] = 256 * Mask(248, 0, stor3[arg1].field_520)
            else:
                mem[352] = stor3[arg1][2].field_0
                idx = 352
                s = 0
                while uint255(stor3[arg1].field_513) + 320 > idx:
                    mem[idx + 32] = stor3[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor3[arg1].field_512) == stor3[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_513 % 128:
            if 31 >= stor3[arg1].field_513 % 128:
                mem[352] = 256 * Mask(248, 0, stor3[arg1].field_520)
            else:
                mem[352] = stor3[arg1][2].field_0
                idx = 352
                s = 0
                while stor3[arg1].field_513 % 128 + 320 > idx:
                    mem[idx + 32] = stor3[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor3[arg1].field_0, 
           Array(len=stor3[arg1].field_512 % 128, data=mem[352 len ceil32(stor3[arg1].field_513 % 128)]),
           address(stor3[arg1].field_768),
           address(stor3[arg1].field_1024),
           stor3[arg1].field_1280,
           stor3[arg1].field_1536
}

function sub_98de396a(?) payable {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx]
            mem[32] = 3
            _83 = mem[64]
            mem[64] = mem[64] + 224
            mem[_83] = stor3[stor2[idx]].field_0
            mem[_83 + 32] = stor3[stor2[idx]].field_256
            if bool(stor3[stor2[idx]].field_512):
                if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                    revert with 'NH{q', 34
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[stor2[idx]].field_513)) + 32
                mem[_85] = uint255(stor3[stor2[idx]].field_513)
                if bool(stor3[stor2[idx]].field_512):
                    if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor3[stor2[idx]].field_513):
                        if 31 >= uint255(stor3[stor2[idx]].field_513):
                            mem[_85 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_85 + 32] = stor3[stor2[idx]][2].field_0
                            s = _85 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _85 + uint255(stor3[stor2[idx]].field_513) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor3[stor2[idx]].field_513 % 128:
                        if 31 >= stor3[stor2[idx]].field_513 % 128:
                            mem[_85 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_85 + 32] = stor3[stor2[idx]][2].field_0
                            s = _85 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _85 + stor3[stor2[idx]].field_513 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_83 + 64] = _85
            else:
                if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor2[idx]].field_513 % 128) + 32
                mem[_86] = stor3[stor2[idx]].field_513 % 128
                if bool(stor3[stor2[idx]].field_512):
                    if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor3[stor2[idx]].field_513):
                        if 31 >= uint255(stor3[stor2[idx]].field_513):
                            mem[_86 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_86 + 32] = stor3[stor2[idx]][2].field_0
                            s = _86 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _86 + uint255(stor3[stor2[idx]].field_513) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor3[stor2[idx]].field_513 % 128:
                        if 31 >= stor3[stor2[idx]].field_513 % 128:
                            mem[_86 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_86 + 32] = stor3[stor2[idx]][2].field_0
                            s = _86 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _86 + stor3[stor2[idx]].field_513 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_83 + 64] = _86
            mem[_83 + 96] = address(stor3[stor2[idx]].field_768)
            mem[_83 + 128] = address(stor3[stor2[idx]].field_1024)
            mem[_83 + 160] = stor3[stor2[idx]].field_1280
            mem[_83 + 192] = stor3[stor2[idx]].field_1536
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _83
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = 32
        _84 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _84:
            mem[u] = t + -_80 - 64
            _157 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_157 + 32]
            _171 = mem[_157 + 64]
            mem[t + 64] = 224
            _173 = mem[_171]
            mem[t + 224] = mem[_171]
            v = 0
            while v < _173:
                mem[t + v + 256] = mem[_171 + v + 32]
                v = v + 32
                continue 
            if ceil32(_173) > _173:
                mem[t + _173 + 256] = 0
            mem[t + 96] = mem[_157 + 108 len 20]
            mem[t + 128] = mem[_157 + 140 len 20]
            mem[t + 160] = mem[_157 + 160]
            mem[t + 192] = mem[_157 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_173) + 256
            u = u + 32
            continue 
    else:
        mem[64] = (32 * stor2.length) + 352
        mem[(32 * stor2.length) + 128] = 0
        mem[(32 * stor2.length) + 160] = 0
        mem[(32 * stor2.length) + 192] = 96
        mem[(32 * stor2.length) + 224] = 0
        mem[(32 * stor2.length) + 256] = 0
        mem[(32 * stor2.length) + 288] = 0
        mem[(32 * stor2.length) + 320] = 0
        mem[var8001] = (32 * stor2.length) + 128
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * stor2.length) + 128] = 0
            mem[(32 * stor2.length) + 160] = 0
            mem[(32 * stor2.length) + 192] = 96
            mem[(32 * stor2.length) + 224] = 0
            mem[(32 * stor2.length) + 256] = 0
            mem[(32 * stor2.length) + 288] = 0
            mem[(32 * stor2.length) + 320] = 0
            mem[s + 32] = (32 * stor2.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor2.length:
            mem[0] = stor2[idx]
            mem[32] = 3
            _218 = mem[64]
            mem[64] = mem[64] + 224
            mem[_218] = stor3[stor2[idx]].field_0
            mem[_218 + 32] = stor3[stor2[idx]].field_256
            if bool(stor3[stor2[idx]].field_512):
                if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                    revert with 'NH{q', 34
                _221 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor3[stor2[idx]].field_513)) + 32
                mem[_221] = uint255(stor3[stor2[idx]].field_513)
                if bool(stor3[stor2[idx]].field_512):
                    if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor3[stor2[idx]].field_513):
                        if 31 >= uint255(stor3[stor2[idx]].field_513):
                            mem[_221 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_221 + 32] = stor3[stor2[idx]][2].field_0
                            s = _221 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _221 + uint255(stor3[stor2[idx]].field_513) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor3[stor2[idx]].field_513 % 128:
                        if 31 >= stor3[stor2[idx]].field_513 % 128:
                            mem[_221 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_221 + 32] = stor3[stor2[idx]][2].field_0
                            s = _221 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _221 + stor3[stor2[idx]].field_513 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_218 + 64] = _221
            else:
                if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                    revert with 'NH{q', 34
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(stor3[stor2[idx]].field_513 % 128) + 32
                mem[_223] = stor3[stor2[idx]].field_513 % 128
                if bool(stor3[stor2[idx]].field_512):
                    if bool(stor3[stor2[idx]].field_512) == uint255(stor3[stor2[idx]].field_513) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor3[stor2[idx]].field_513):
                        if 31 >= uint255(stor3[stor2[idx]].field_513):
                            mem[_223 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_223 + 32] = stor3[stor2[idx]][2].field_0
                            s = _223 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _223 + uint255(stor3[stor2[idx]].field_513) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor3[stor2[idx]].field_512) == stor3[stor2[idx]].field_513 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor3[stor2[idx]].field_513 % 128:
                        if 31 >= stor3[stor2[idx]].field_513 % 128:
                            mem[_223 + 32] = 256 * Mask(248, 0, stor3[stor2[idx]].field_520)
                        else:
                            mem[0] = sha3(stor2[idx], 3) + 2
                            mem[_223 + 32] = stor3[stor2[idx]][2].field_0
                            s = _223 + 32
                            t = sha3(sha3(stor2[idx], 3) + 2)
                            while _223 + stor3[stor2[idx]].field_513 % 128 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_218 + 64] = _223
            mem[_218 + 96] = address(stor3[stor2[idx]].field_768)
            mem[_218 + 128] = address(stor3[stor2[idx]].field_1024)
            mem[_218 + 160] = stor3[stor2[idx]].field_1280
            mem[_218 + 192] = stor3[stor2[idx]].field_1536
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _218
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 32
        _219 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _219:
            mem[u] = t + -_215 - 64
            _261 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_261 + 32]
            _269 = mem[_261 + 64]
            mem[t + 64] = 224
            _270 = mem[_269]
            mem[t + 224] = mem[_269]
            v = 0
            while v < _270:
                mem[t + v + 256] = mem[_269 + v + 32]
                v = v + 32
                continue 
            if ceil32(_270) > _270:
                mem[t + _270 + 256] = 0
            mem[t + 96] = mem[_261 + 108 len 20]
            mem[t + 128] = mem[_261 + 140 len 20]
            mem[t + 160] = mem[_261 + 160]
            mem[t + 192] = mem[_261 + 192]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_270) + 256
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
