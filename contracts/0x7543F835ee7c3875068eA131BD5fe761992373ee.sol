contract main {




// =====================  Runtime code  =====================


#
#  - sub_1820a2de(?)
#  - sub_26e3b241(?)
#
address owner;
array of struct stor1;
array of struct stor2;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    owner = arg1
}

function sub_a0e7c25e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor1[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor1.length = 0
            idx = 0
            while uint255(stor1.length.field_1) + 31 / 32 > idx:
                uint256(stor1[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor1[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor1.length = 0
            idx = 0
            while stor1.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor1[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function settings() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[uint255(stor1.length.field_1) + ceil32(uint255(stor1.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function sub_dc398435(?) payable {
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    stor2.length = 0
    mem[0] = 2
    idx = 0
    while sha3(2) + (2 * stor2.length) > idx + sha3(mem[0]):
        if bool(stor[idx + sha3(mem[0])].field_0):
            if bool(stor[idx + sha3(mem[0])].field_0) == uint255(stor[idx + sha3(mem[0])].field_1) < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 >= uint255(stor[idx + sha3(mem[0])].field_1):
                if bool(stor[idx + sha3(mem[0]) + 1].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(stor[idx + sha3(mem[0]) + 1].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 >= uint255(stor[idx + sha3(mem[0]) + 1].field_1):
                        idx = idx + 2
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(s + sha3(mem[0]) + 1)
                    while sha3(s + sha3(mem[0]) + 1) + (uint255(stor[s + sha3(mem[0]) + 1].field_1) + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        s = s + 1
                        continue 
                    s = s + 2
                    continue 
                if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (uint255(stor[idx + sha3(mem[0])].field_1) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if bool(stor[idx + sha3(mem[0]) + 1].field_0):
                    if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(stor[idx + sha3(mem[0]) + 1].field_1) < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < uint255(stor[idx + sha3(mem[0]) + 1].field_1):
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (uint255(stor[idx + sha3(mem[0]) + 1].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
        else:
            if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                revert with 'NH{q', 34
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            if bool(stor[idx + sha3(mem[0]) + 1].field_0):
                if bool(stor[idx + sha3(mem[0]) + 1].field_0) == uint255(stor[idx + sha3(mem[0]) + 1].field_1) < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < uint255(stor[idx + sha3(mem[0]) + 1].field_1):
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (uint255(stor[idx + sha3(mem[0]) + 1].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0]) + 1].field_0) == stor[idx + sha3(mem[0]) + 1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].field_1 % 128:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
        idx = idx + 2
        continue 
}

function sub_da07758c(?) payable {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if bool(stor2[idx].field_256):
                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                    revert with 'NH{q', 34
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_257)) + 32
                mem[_61] = uint255(stor2[idx].field_257)
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor2[idx].field_257):
                        if 31 >= uint255(stor2[idx].field_257):
                            mem[_61 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_61 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _61 + 32
                            t = sha3(mem[0])
                            while _61 + uint255(stor2[idx].field_257) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor2[idx].field_257 % 128:
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_61 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_61 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _61 + 32
                            t = sha3(mem[0])
                            while _61 + stor2[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _61
            else:
                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                _62 = mem[64]
                mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                mem[_62] = stor2[idx].field_257 % 128
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor2[idx].field_257):
                        if 31 >= uint255(stor2[idx].field_257):
                            mem[_62 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_62 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _62 + 32
                            t = sha3(mem[0])
                            while _62 + uint255(stor2[idx].field_257) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor2[idx].field_257 % 128:
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_62 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_62 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _62 + 32
                            t = sha3(mem[0])
                            while _62 + stor2[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _62
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _54:
            mem[t] = u + -_52 - 64
            _102 = mem[s]
            _104 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _104:
                mem[v + u + 32] = mem[v + _102 + 32]
                v = v + 32
                continue 
            if ceil32(_104) > _104:
                mem[_104 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_104) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = stor2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if bool(stor2[idx].field_256):
                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                    revert with 'NH{q', 34
                _116 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_257)) + 32
                mem[_116] = uint255(stor2[idx].field_257)
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor2[idx].field_257):
                        if 31 >= uint255(stor2[idx].field_257):
                            mem[_116 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_116 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _116 + 32
                            t = sha3(mem[0])
                            while _116 + uint255(stor2[idx].field_257) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor2[idx].field_257 % 128:
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_116 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_116 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _116 + 32
                            t = sha3(mem[0])
                            while _116 + stor2[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _116
            else:
                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                    revert with 'NH{q', 34
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(stor2[idx].field_257 % 128) + 32
                mem[_117] = stor2[idx].field_257 % 128
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    if uint255(stor2[idx].field_257):
                        if 31 >= uint255(stor2[idx].field_257):
                            mem[_117 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_117 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _117 + 32
                            t = sha3(mem[0])
                            while _117 + uint255(stor2[idx].field_257) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    if stor2[idx].field_257 % 128:
                        if 31 >= stor2[idx].field_257 % 128:
                            mem[_117 + 32] = 256 * Mask(248, 0, stor2[idx].field_264)
                        else:
                            mem[0] = (2 * idx) + sha3(2) + 1
                            mem[_117 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor2', 2) + 1)].field_0)
                            s = _117 + 32
                            t = sha3(mem[0])
                            while _117 + stor2[idx].field_257 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _117
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _109 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _111:
            mem[t] = u + -_109 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _138:
                mem[v + u + 32] = mem[v + _136 + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[_138 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_138) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_5a022df5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg3.length) + 192 < 160 or ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    if not arg2.length:
        revert with 0, 'NO_VALUE'
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    idx = 0
    while idx < stor2.length:
        _929 = mem[64]
        _930 = mem[96]
        s = 0
        while s < _930:
            mem[s + _929 + 32] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_930) <= _930:
            _1847 = mem[64]
            mem[mem[64]] = _930 + _929 - mem[64]
            mem[64] = _930 + _929 + 32
            _1849 = sha3(mem[_1847 + 32 len mem[_1847]])
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_930 + _929 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_930 + _929 + 32] = uint255(stor2[idx].field_1)
                    mem[64] = _930 + _929 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_930 + _929 + 64 len uint255(stor2[idx].field_1)]) != _1849:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_930 + _929 + 32] = -_930 + -_929 - 64
                        mem[64] = 0
                        if sha3(mem[_930 + _929 + 64 len -_930 + -_929 - 64]) != _1849:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = (2 * idx) + sha3(2)
                        s = 0
                        t = sha3((2 * idx) + sha3(2))
                        while s < uint255(stor2[idx].field_1):
                            mem[s + _930 + _929 + 64] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        _2777 = mem[64]
                        mem[mem[64]] = _930 + _929 + uint255(stor2[idx].field_1) + -mem[64] + 32
                        mem[64] = _930 + _929 + uint255(stor2[idx].field_1) + 64
                        if sha3(mem[_2777 + 32 len mem[_2777]]) != _1849:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                        while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                        while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_930 + _929 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_930 + _929 + 32] = stor2[idx].field_1 % 128
                    mem[64] = _930 + _929 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_930 + _929 + 64 len stor2[idx].field_1 % 128]) != _1849:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                            while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                            while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_930 + _929 + 32] = -_930 + -_929 - 64
                        mem[64] = 0
                        if sha3(mem[_930 + _929 + 64 len -_930 + -_929 - 64]) != _1849:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[0] = (2 * idx) + sha3(2)
                        s = 0
                        t = sha3((2 * s) + sha3(2))
                        while s < stor2[s].field_1 % 128:
                            mem[s + _930 + _929 + 64] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        _2780 = mem[64]
                        mem[mem[64]] = _930 + _929 + stor2[s].field_1 % 128 + -mem[64] + 32
                        mem[64] = _930 + _929 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_2780 + 32 len mem[_2780]]) != _1849:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[s].field_256):
                            if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        else:
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
        else:
            mem[_930 + _929 + 32] = 0
            _1850 = mem[64]
            mem[mem[64]] = _930 + _929 - mem[64]
            mem[64] = _930 + _929 + 32
            _1852 = sha3(mem[_1850 + 32 len mem[_1850]])
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_930 + _929 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_930 + _929 + 32] = uint255(stor2[idx].field_1)
                    mem[64] = _930 + _929 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_930 + _929 + 64 len uint255(stor2[idx].field_1)]) != _1852:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_930 + _929 + 32] = -_930 + -_929 - 64
                        mem[64] = 0
                        if sha3(mem[_930 + _929 + 64 len -_930 + -_929 - 64]) != _1852:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = (2 * idx) + sha3(2)
                        s = 0
                        t = sha3((2 * idx) + sha3(2))
                        while s < uint255(stor2[idx].field_1):
                            mem[s + _930 + _929 + 64] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        _2783 = mem[64]
                        mem[mem[64]] = _930 + _929 + uint255(stor2[idx].field_1) + -mem[64] + 32
                        mem[64] = _930 + _929 + uint255(stor2[idx].field_1) + 64
                        if sha3(mem[_2783 + 32 len mem[_2783]]) != _1852:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                        revert with 'NH{q', 34
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                if bool(stor2[idx].field_256):
                    if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                        while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                        while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_930 + _929 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_930 + _929 + 32] = stor2[idx].field_1 % 128
                    mem[64] = _930 + _929 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_930 + _929 + 64 len stor2[idx].field_1 % 128]) != _1852:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                            while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                            while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_930 + _929 + 32] = -_930 + -_929 - 64
                        mem[64] = 0
                        if sha3(mem[_930 + _929 + 64 len -_930 + -_929 - 64]) != _1852:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[0] = (2 * idx) + sha3(2)
                        s = 0
                        t = sha3((2 * s) + sha3(2))
                        while s < stor2[s].field_1 % 128:
                            mem[s + _930 + _929 + 64] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        _2786 = mem[64]
                        mem[mem[64]] = _930 + _929 + stor2[s].field_1 % 128 + -mem[64] + 32
                        mem[64] = _930 + _929 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_2786 + 32 len mem[_2786]]) != _1852:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[s].field_256):
                            if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                        else:
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * mem[ceil32(arg1.length) + ceil32(arg2.length) + 160]) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
                                while ceil32(arg1.length) + ceil32(arg2.length) + mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 192 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    t = t + 1
                                    continue 
}

function sub_ce85004f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    if not arg1.length:
        revert with 0, 'NO_VALUE'
    idx = 0
    s = 0
    while idx < stor2.length:
        _998 = mem[64]
        _1002 = mem[96]
        t = 0
        while t < _1002:
            mem[t + _998 + 32] = mem[t + 128]
            t = t + 32
            continue 
        if ceil32(_1002) <= _1002:
            _2003 = mem[64]
            mem[mem[64]] = _1002 + _998 - mem[64]
            mem[64] = _1002 + _998 + 32
            _2005 = sha3(mem[_2003 + 32 len mem[_2003]])
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_1002 + _998 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_1002 + _998 + 32] = uint255(stor2[idx].field_1)
                    mem[64] = _1002 + _998 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_1002 + _998 + 64 len uint255(stor2[idx].field_1)]) != _2005:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_1002 + _998 + 32] = -_1002 + -_998 - 64
                        mem[64] = 0
                        if sha3(mem[_1002 + _998 + 64 len -_1002 + -_998 - 64]) != _2005:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[96]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = 128
                                while mem[96] + 128 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * s) + sha3(2) + 1)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        u = sha3((2 * idx) + sha3(2) + 1)
                        t = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        u = 1
                        continue 
                    mem[0] = (2 * idx) + sha3(2)
                    t = 0
                    u = sha3((2 * idx) + sha3(2))
                    while t < uint255(stor2[idx].field_1):
                        mem[t + _1002 + _998 + 64] = uint256(stor[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
                    _3001 = mem[64]
                    mem[mem[64]] = _1002 + _998 + uint255(stor2[idx].field_1) + -mem[64] + 32
                    mem[64] = _1002 + _998 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_3001 + 32 len mem[_3001]]) != _2005:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            u = sha3((2 * idx) + sha3(2) + 1)
                            t = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = 128
                        while mem[96] + 128 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    s = 1
                                    continue 
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                u = sha3((2 * idx) + sha3(2) + 1)
                                t = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                    uint256(stor[u].field_0) = mem[t]
                                    u = u + 1
                                    t = t + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_1002 + _998 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_1002 + _998 + 32] = stor2[idx].field_1 % 128
                    mem[64] = _1002 + _998 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_1002 + _998 + 64 len stor2[idx].field_1 % 128]) != _2005:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 1
                        continue 
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[96]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        s = 1
                        continue 
                    uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                    u = sha3((2 * idx) + sha3(2))
                    t = 128
                    while mem[96] + 128 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 1
                        continue 
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * s) + sha3(2) + 1)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        s = 1
                        continue 
                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                    u = sha3((2 * idx) + sha3(2) + 1)
                    t = ceil32(arg1.length) + 160
                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    u = 1
                    continue 
                if bool(stor2[idx].field_0) != 1:
                    mem[_1002 + _998 + 32] = -_1002 + -_998 - 64
                    mem[64] = 0
                    if sha3(mem[_1002 + _998 + 64 len -_1002 + -_998 - 64]) != _2005:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * s) + sha3(2) + 1)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        u = sha3((2 * idx) + sha3(2) + 1)
                        t = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        u = 1
                        continue 
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[96]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            u = sha3((2 * idx) + sha3(2) + 1)
                            t = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = 1
                            continue 
                    ('iszero', ('type', 1, ('field', 256, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor2', 2))))))
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    mem[0] = (2 * idx) + sha3(2)
                    t = 0
                    u = sha3((2 * idx) + sha3(2))
                    while t < stor2[idx].field_1 % 128:
                        mem[t + _1002 + _998 + 64] = uint256(stor[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
                    _3004 = mem[64]
                    mem[mem[64]] = _1002 + _998 + stor2[idx].field_1 % 128 + -mem[64] + 32
                    mem[64] = _1002 + _998 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_3004 + 32 len mem[_3004]]) != _2005:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    s = 1
                                    continue 
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                u = sha3((2 * idx) + sha3(2) + 1)
                                t = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                    uint256(stor[u].field_0) = mem[t]
                                    u = u + 1
                                    t = t + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
        else:
            mem[_1002 + _998 + 32] = 0
            _2006 = mem[64]
            mem[mem[64]] = _1002 + _998 - mem[64]
            mem[64] = _1002 + _998 + 32
            _2008 = sha3(mem[_2006 + 32 len mem[_2006]])
            if idx >= stor2.length:
                revert with 'NH{q', 50
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_1002 + _998 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_1002 + _998 + 32] = uint255(stor2[idx].field_1)
                    mem[64] = _1002 + _998 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_1002 + _998 + 64 len uint255(stor2[idx].field_1)]) != _2008:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[_1002 + _998 + 32] = -_1002 + -_998 - 64
                        mem[64] = 0
                        if sha3(mem[_1002 + _998 + 64 len -_1002 + -_998 - 64]) != _2008:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_0):
                            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                                revert with 'NH{q', 34
                            if not mem[96]:
                                uint256(stor2[idx].field_0) = 0
                                s = sha3((2 * idx) + sha3(2))
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                                t = sha3((2 * idx) + sha3(2))
                                s = 128
                                while mem[96] + 128 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * s) + sha3(2) + 1)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        u = sha3((2 * idx) + sha3(2) + 1)
                        t = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        u = 1
                        continue 
                    mem[0] = (2 * idx) + sha3(2)
                    t = 0
                    u = sha3((2 * idx) + sha3(2))
                    while t < uint255(stor2[idx].field_1):
                        mem[t + _1002 + _998 + 64] = uint256(stor[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
                    _3007 = mem[64]
                    mem[mem[64]] = _1002 + _998 + uint255(stor2[idx].field_1) + -mem[64] + 32
                    mem[64] = _1002 + _998 + uint255(stor2[idx].field_1) + 64
                    if sha3(mem[_3007 + 32 len mem[_3007]]) != _2008:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            u = sha3((2 * idx) + sha3(2) + 1)
                            t = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        t = sha3((2 * idx) + sha3(2))
                        s = 128
                        while mem[96] + 128 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    s = 1
                                    continue 
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                u = sha3((2 * idx) + sha3(2) + 1)
                                t = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                    uint256(stor[u].field_0) = mem[t]
                                    u = u + 1
                                    t = t + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor2[idx].field_0):
                    mem[_1002 + _998 + 64] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[_1002 + _998 + 32] = stor2[idx].field_1 % 128
                    mem[64] = _1002 + _998 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_1002 + _998 + 64 len stor2[idx].field_1 % 128]) != _2008:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 1
                        continue 
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[96]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        s = 1
                        continue 
                    uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                    u = sha3((2 * idx) + sha3(2))
                    t = 128
                    while mem[96] + 128 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_256):
                        if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * idx) + sha3(2) + 1)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 1
                        continue 
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * s) + sha3(2) + 1)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        s = 1
                        continue 
                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                    u = sha3((2 * idx) + sha3(2) + 1)
                    t = ceil32(arg1.length) + 160
                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    u = 1
                    continue 
                if bool(stor2[idx].field_0) != 1:
                    mem[_1002 + _998 + 32] = -_1002 + -_998 - 64
                    mem[64] = 0
                    if sha3(mem[_1002 + _998 + 64 len -_1002 + -_998 - 64]) != _2008:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 1
                            continue 
                        if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * idx) + sha3(2) + 1
                        if not mem[ceil32(arg1.length) + 128]:
                            uint256(stor2[idx].field_256) = 0
                            s = sha3((2 * s) + sha3(2) + 1)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        u = sha3((2 * idx) + sha3(2) + 1)
                        t = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        u = 1
                        continue 
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not mem[96]:
                        uint256(stor2[idx].field_0) = 0
                        s = sha3((2 * idx) + sha3(2))
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            t = sha3((2 * idx) + sha3(2) + 1)
                            s = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            s = 1
                            continue 
                    else:
                        uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                        u = sha3((2 * idx) + sha3(2))
                        t = 128
                        while mem[96] + 128 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                s = 1
                                continue 
                            uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                            u = sha3((2 * idx) + sha3(2) + 1)
                            t = ceil32(arg1.length) + 160
                            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            u = 1
                            continue 
                    ('iszero', ('type', 1, ('field', 256, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'stor2', 2))))))
                    if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * idx) + sha3(2) + 1
                    if not mem[ceil32(arg1.length) + 128]:
                        uint256(stor2[idx].field_256) = 0
                        s = sha3((2 * idx) + sha3(2) + 1)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    else:
                        uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                        t = sha3((2 * idx) + sha3(2) + 1)
                        s = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                        while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    mem[0] = (2 * idx) + sha3(2)
                    t = 0
                    u = sha3((2 * idx) + sha3(2))
                    while t < stor2[idx].field_1 % 128:
                        mem[t + _1002 + _998 + 64] = uint256(stor[u].field_0)
                        t = t + 32
                        u = u + 1
                        continue 
                    _3010 = mem[64]
                    mem[mem[64]] = _1002 + _998 + stor2[idx].field_1 % 128 + -mem[64] + 32
                    mem[64] = _1002 + _998 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[_3010 + 32 len mem[_3010]]) != _2008:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_1) < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            t = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    s = s + 1
                                    s = 1
                                    continue 
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                u = sha3((2 * idx) + sha3(2) + 1)
                                t = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > t:
                                    uint256(stor[u].field_0) = mem[t]
                                    u = u + 1
                                    t = t + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                u = 1
                                continue 
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (uint255(stor2[idx].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            if idx >= stor2.length:
                                revert with 'NH{q', 50
                            if bool(stor2[idx].field_256):
                                if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * idx) + sha3(2) + 1
                                if not mem[ceil32(arg1.length) + 128]:
                                    uint256(stor2[idx].field_256) = 0
                                    s = sha3((2 * idx) + sha3(2) + 1)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                    t = sha3((2 * idx) + sha3(2) + 1)
                                    s = ceil32(arg1.length) + 160
                                    while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                    while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not mem[96]:
                            uint256(stor2[idx].field_0) = 0
                            s = sha3((2 * idx) + sha3(2))
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor2[idx].field_0) = (2 * mem[96]) + 1
                            t = sha3((2 * idx) + sha3(2))
                            s = 128
                            while mem[96] + 128 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * idx) + sha3(2)) + (Mask(251, 0, mem[96] + 31) >> 5)
                            while sha3((2 * idx) + sha3(2)) + (stor2[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        if idx >= stor2.length:
                            revert with 'NH{q', 50
                        if bool(stor2[idx].field_256):
                            if bool(stor2[idx].field_256) == uint255(stor2[idx].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (uint255(stor2[idx].field_257) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor2[idx].field_256) == stor2[idx].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * idx) + sha3(2) + 1
                            if not mem[ceil32(arg1.length) + 128]:
                                uint256(stor2[idx].field_256) = 0
                                s = sha3((2 * idx) + sha3(2) + 1)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor2[idx].field_256) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                                t = sha3((2 * idx) + sha3(2) + 1)
                                s = ceil32(arg1.length) + 160
                                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((2 * idx) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                                while sha3((2 * idx) + sha3(2) + 1) + (stor2[idx].field_257 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 1
        continue 
    if not s:
        mem[mem[64]] = 96
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        stor2.length++
        if bool(stor2[stor2.length].field_0):
            if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_1) < 32:
                revert with 'NH{q', 34
            if mem[96]:
                uint256(stor2[stor2.length][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            else:
                uint256(stor2[stor2.length].field_0) = 0
                idx = 0
                while uint255(stor2[stor2.length].field_1) + 31 / 32 > idx:
                    uint256(stor2[(2 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if mem[96]:
                uint256(stor2[stor2.length][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
            else:
                uint256(stor2[stor2.length].field_0) = 0
                idx = 0
                while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor2[(2 * stor2.length) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        if bool(stor4057[stor2.length].field_0):
            if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                revert with 'NH{q', 34
            if mem[ceil32(arg1.length) + 128]:
                uint256(stor[sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][].field_0) = Array(len=mem[ceil32(arg1.length) + 128], data=mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
            else:
                uint256(stor4057[stor2.length].field_0) = 0
                idx = 0
                while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if mem[ceil32(arg1.length) + 128]:
                uint256(stor[sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][].field_0) = Array(len=mem[ceil32(arg1.length) + 128], data=mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
            else:
                uint256(stor4057[stor2.length].field_0) = 0
                idx = 0
                while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)].field_0) = 0
                    idx = idx + 1
                    continue 
}

function sub_bc83c5f8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _1010 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1018 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]) + 32
        mem[_1018] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_1018 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]]
        mem[_1018 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] + 32] = 0
        mem[_1010] = _1018
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1032 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_1032] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_1032 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_1032 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_1010 + 32] = _1032
        mem[t] = _1010
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Owner: FORBIDDEN'
    if mem[96] <= 0:
        revert with 0, 'NO_DATA'
    _2018 = mem[96]
    idx = 0
    while idx < _2018:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2021 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2024 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[mem[(32 * idx) + 128]]]:
            revert with 0, 'NO_VALUE'
        s = 0
        t = 0
        while s < stor2.length:
            _3018 = mem[64]
            _3022 = mem[_2021]
            u = 0
            while ('cd', 4).length < _3022:
                mem[('cd', 4).length + _3018 + 32] = mem[('cd', 4).length + _2021 + 32]
                _2018 = mem[96]
                u = ('cd', 4).length + 32
                continue 
            if ('cd', 4).length <= _3022:
                _4023 = mem[64]
                mem[mem[64]] = _3022 + _3018 - mem[64]
                mem[64] = _3022 + _3018 + 32
                _4025 = sha3(mem[_4023 + 32 len mem[_4023]])
                if s >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if bool(stor2[s].field_0):
                    if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2[s].field_0):
                        mem[_3022 + _3018 + 64] = Mask(248, 8, uint256(stor2[s].field_0))
                        mem[_3022 + _3018 + 32] = uint255(stor2[s].field_1)
                        mem[64] = _3022 + _3018 + uint255(stor2[s].field_1) + 64
                        if sha3(mem[_3022 + _3018 + 64 len uint255(stor2[s].field_1)]) != _4025:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4088 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4088:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5038 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5038:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5038) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5038 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5038 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5038:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5038) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5038 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5038 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4088) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4088 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4088 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5954 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5954:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5954) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5954 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5954 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5954:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5954) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5954 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5954 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4088:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5044 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5044:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5044) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5044 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5044 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5044:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5044) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5044 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5044 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4088) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4088 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4088 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5956 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5956:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5956) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5956 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5956 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5956:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5956) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5956 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5956 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                    else:
                        if bool(stor2[s].field_0) != 1:
                            mem[_3022 + _3018 + 32] = -_3022 + -_3018 - 64
                            mem[64] = 0
                            if sha3(mem[_3022 + _3018 + 64 len -_3022 + -_3018 - 64]) != _4025:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = t
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _4106 = mem[_2021]
                            if bool(stor2[s].field_0):
                                if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2)
                                if not _4106:
                                    uint256(stor2[s].field_0) = 0
                                    t = sha3((2 * s) + sha3(2))
                                    while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s >= stor2.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 2
                                    _5050 = mem[_2024]
                                    if bool(stor2[s].field_256):
                                        if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5050:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5050) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5050 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5050 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                    else:
                                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5050:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5050) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5050 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5050 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                else:
                                    uint256(stor2[s].field_0) = (2 * _4106) + 1
                                    t = sha3((2 * s) + sha3(2))
                                    idx = _2021 + 32
                                    while _2021 + _4106 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4106 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s >= stor2.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 2
                                    _5970 = mem[_2024]
                                    if bool(stor2[s].field_256):
                                        if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5970:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5970) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5970 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5970 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                    else:
                                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5970:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5970) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5970 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5970 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4106:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5056 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5056:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5056) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5056 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5056 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5056:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5056) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5056 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5056 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _4106) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4106 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4106 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5972 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5972:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5972) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5972 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5972 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5972:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * t) + sha3(2) + 1)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _5972) + 1
                            u = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _5972 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5972 + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            u = 1
                            continue 
                        mem[0] = (2 * s) + sha3(2)
                        u = 0
                        v = sha3((2 * s) + sha3(2))
                        while u < uint255(stor2[s].field_1):
                            mem[u + _3022 + _3018 + 64] = uint256(stor[v].field_0)
                            _2018 = mem[96]
                            u = u + 32
                            v = v + 1
                            continue 
                        _5021 = mem[64]
                        mem[mem[64]] = _3022 + _3018 + uint255(stor2[s].field_1) + -mem[64] + 32
                        mem[64] = _3022 + _3018 + uint255(stor2[s].field_1) + 64
                        if sha3(mem[_5021 + 32 len mem[_5021]]) != _4025:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _5130 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5130:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5962 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5962:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5962) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5962 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5962 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5962:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * t) + sha3(2) + 1)
                                    while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    t = t + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5962) + 1
                                u = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5962 + 32 > idx:
                                    uint256(stor[u].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    u = u + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5962 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                u = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _5130) + 1
                            t = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _5130 + 32 > idx:
                                uint256(stor[t].field_0) = mem[idx]
                                _2018 = mem[96]
                                t = t + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5130 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _6418 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6418:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6418) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6418 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6418 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6418:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6418) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6418 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6418 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5130:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5968 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5968:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * t) + sha3(2) + 1)
                                        while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        _2018 = mem[96]
                                        t = t + 1
                                        t = 1
                                        continue 
                                    uint256(stor2[s].field_256) = (2 * _5968) + 1
                                    u = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5968 + 32 > idx:
                                        uint256(stor[u].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        u = u + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5968 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    u = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5968:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5968) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5968 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5968 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5130) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5130 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5130 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6420 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6420:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6420) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6420 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6420 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6420:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6420) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6420 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6420 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                else:
                    if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2[s].field_0):
                        mem[_3022 + _3018 + 64] = Mask(248, 8, uint256(stor2[s].field_0))
                        mem[_3022 + _3018 + 32] = stor2[s].field_1 % 128
                        mem[64] = _3022 + _3018 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_3022 + _3018 + 64 len stor2[s].field_1 % 128]) != _4025:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4108 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4108:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5062 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5062:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5062) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5062 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5062 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5062:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5062) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5062 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5062 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4108) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4108 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4108 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5974 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5974:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5974) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5974 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5974 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5974:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5974) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5974 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5974 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = 1
                            continue 
                        if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2)
                        if not _4108:
                            uint256(stor2[s].field_0) = 0
                            t = sha3((2 * s) + sha3(2))
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5068 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5068:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5068) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5068 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5068 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5068:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _5068) + 1
                            t = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _5068 + 32 > idx:
                                uint256(stor[t].field_0) = mem[idx]
                                _2018 = mem[96]
                                t = t + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5068 + 31) >> 5)
                            while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            t = t + 1
                            t = 1
                            continue 
                        uint256(stor2[s].field_0) = (2 * _4108) + 1
                        u = sha3((2 * s) + sha3(2))
                        idx = _2021 + 32
                        while _2021 + _4108 + 32 > idx:
                            uint256(stor[u].field_0) = mem[idx]
                            _2018 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4108 + 31) >> 5)
                        while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            _2018 = mem[96]
                            u = u + 1
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _5976 = mem[_2024]
                        if bool(stor2[s].field_256):
                            if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5976:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _5976) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5976 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5976 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = 1
                            continue 
                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2) + 1
                        if not _5976:
                            uint256(stor2[s].field_256) = 0
                            t = sha3((2 * t) + sha3(2) + 1)
                            while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            t = t + 1
                            t = 1
                            continue 
                        uint256(stor2[s].field_256) = (2 * _5976) + 1
                        u = sha3((2 * s) + sha3(2) + 1)
                        idx = _2024 + 32
                        while _2024 + _5976 + 32 > idx:
                            uint256(stor[u].field_0) = mem[idx]
                            _2018 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5976 + 31) >> 5)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            _2018 = mem[96]
                            t = t + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        s = s + 1
                        u = 1
                        continue 
                    if bool(stor2[s].field_0) != 1:
                        mem[_3022 + _3018 + 32] = -_3022 + -_3018 - 64
                        mem[64] = 0
                        if sha3(mem[_3022 + _3018 + 64 len -_3022 + -_3018 - 64]) != _4025:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4122 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4122:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5074 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5074:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5074) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5074 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5074 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5074:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5074) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5074 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5074 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _4122) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4122 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4122 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5990 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5990:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5990) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5990 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5990 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5990:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * t) + sha3(2) + 1)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _5990) + 1
                            u = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _5990 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5990 + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            u = 1
                            continue 
                        if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2)
                        if not _4122:
                            uint256(stor2[s].field_0) = 0
                            t = sha3((2 * s) + sha3(2))
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5080 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5080:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5080) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5080 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5080 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5080:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _5080) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5080 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5080 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                        else:
                            uint256(stor2[s].field_0) = (2 * _4122) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4122 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4122 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5992 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5992:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * t) + sha3(2) + 1)
                                    while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    t = t + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5992) + 1
                                u = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5992 + 32 > idx:
                                    uint256(stor[u].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    u = u + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5992 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                u = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5992:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _5992) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5992 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5992 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                    else:
                        mem[0] = (2 * s) + sha3(2)
                        u = 0
                        v = sha3((2 * s) + sha3(2))
                        while u < stor2[s].field_1 % 128:
                            mem[u + _3022 + _3018 + 64] = uint256(stor[v].field_0)
                            _2018 = mem[96]
                            u = u + 32
                            v = v + 1
                            continue 
                        _5024 = mem[64]
                        mem[mem[64]] = _3022 + _3018 + stor2[s].field_1 % 128 + -mem[64] + 32
                        mem[64] = _3022 + _3018 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_5024 + 32 len mem[_5024]]) != _4025:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _5132 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5132:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5982 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5982:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * t) + sha3(2) + 1)
                                        while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        _2018 = mem[96]
                                        t = t + 1
                                        t = 1
                                        continue 
                                    uint256(stor2[s].field_256) = (2 * _5982) + 1
                                    u = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5982 + 32 > idx:
                                        uint256(stor[u].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        u = u + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5982 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    u = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5982:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5982) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5982 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5982 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5132) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5132 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5132 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6422 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6422:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6422) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6422 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6422 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6422:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6422) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6422 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6422 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5132:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5988 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5988:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5988) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5988 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5988 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5988:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5988) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5988 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5988 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5132) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5132 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5132 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6424 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6424:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6424) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6424 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6424 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6424:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6424) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6424 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6424 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
            else:
                mem[_3022 + _3018 + 32] = 0
                _4026 = mem[64]
                mem[mem[64]] = _3022 + _3018 - mem[64]
                mem[64] = _3022 + _3018 + 32
                _4028 = sha3(mem[_4026 + 32 len mem[_4026]])
                if s >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                if bool(stor2[s].field_0):
                    if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2[s].field_0):
                        mem[_3022 + _3018 + 64] = Mask(248, 8, uint256(stor2[s].field_0))
                        mem[_3022 + _3018 + 32] = uint255(stor2[s].field_1)
                        mem[64] = _3022 + _3018 + uint255(stor2[s].field_1) + 64
                        if sha3(mem[_3022 + _3018 + 64 len uint255(stor2[s].field_1)]) != _4028:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4093 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4093:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5086 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5086:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5086) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5086 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5086 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5086:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5086) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5086 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5086 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4093) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4093 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4093 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5994 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5994:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5994) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5994 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5994 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5994:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5994) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5994 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5994 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4093:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5092 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5092:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5092) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5092 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5092 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5092:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5092) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5092 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5092 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4093) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4093 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4093 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5996 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5996:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5996) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5996 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5996 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5996:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5996) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5996 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5996 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                    else:
                        if bool(stor2[s].field_0) != 1:
                            mem[_3022 + _3018 + 32] = -_3022 + -_3018 - 64
                            mem[64] = 0
                            if sha3(mem[_3022 + _3018 + 64 len -_3022 + -_3018 - 64]) != _4028:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = t
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _4110 = mem[_2021]
                            if bool(stor2[s].field_0):
                                if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2)
                                if not _4110:
                                    uint256(stor2[s].field_0) = 0
                                    t = sha3((2 * s) + sha3(2))
                                    while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s >= stor2.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 2
                                    _5098 = mem[_2024]
                                    if bool(stor2[s].field_256):
                                        if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5098:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5098) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5098 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5098 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                    else:
                                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _5098:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _5098) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _5098 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5098 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                else:
                                    uint256(stor2[s].field_0) = (2 * _4110) + 1
                                    t = sha3((2 * s) + sha3(2))
                                    idx = _2021 + 32
                                    while _2021 + _4110 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4110 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s >= stor2.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 2
                                    _6010 = mem[_2024]
                                    if bool(stor2[s].field_256):
                                        if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _6010:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _6010) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _6010 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6010 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                    else:
                                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                            revert with 'NH{q', 34
                                        mem[0] = (2 * s) + sha3(2) + 1
                                        if not _6010:
                                            uint256(stor2[s].field_256) = 0
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                        else:
                                            uint256(stor2[s].field_256) = (2 * _6010) + 1
                                            t = sha3((2 * s) + sha3(2) + 1)
                                            idx = _2024 + 32
                                            while _2024 + _6010 + 32 > idx:
                                                uint256(stor[t].field_0) = mem[idx]
                                                _2018 = mem[96]
                                                t = t + 1
                                                idx = idx + 32
                                                continue 
                                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6010 + 31) >> 5)
                                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                                uint256(stor[t].field_0) = 0
                                                _2018 = mem[96]
                                                t = t + 1
                                                continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4110:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5104 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5104:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5104) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5104 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5104 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5104:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5104) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5104 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5104 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _4110) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4110 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4110 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _6012 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6012:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6012) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6012 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6012 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _6012:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * t) + sha3(2) + 1)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _6012) + 1
                            u = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _6012 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6012 + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            u = 1
                            continue 
                        mem[0] = (2 * s) + sha3(2)
                        u = 0
                        v = sha3((2 * s) + sha3(2))
                        while u < uint255(stor2[s].field_1):
                            mem[u + _3022 + _3018 + 64] = uint256(stor[v].field_0)
                            _2018 = mem[96]
                            u = u + 32
                            v = v + 1
                            continue 
                        _5027 = mem[64]
                        mem[mem[64]] = _3022 + _3018 + uint255(stor2[s].field_1) + -mem[64] + 32
                        mem[64] = _3022 + _3018 + uint255(stor2[s].field_1) + 64
                        if sha3(mem[_5027 + 32 len mem[_5027]]) != _4028:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _5134 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5134:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6002 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6002:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6002) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6002 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6002 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6002:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * t) + sha3(2) + 1)
                                    while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    t = t + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _6002) + 1
                                u = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _6002 + 32 > idx:
                                    uint256(stor[u].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    u = u + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6002 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                u = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _5134) + 1
                            t = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _5134 + 32 > idx:
                                uint256(stor[t].field_0) = mem[idx]
                                _2018 = mem[96]
                                t = t + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5134 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _6426 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6426:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6426) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6426 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6426 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6426:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6426) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6426 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6426 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5134:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6008 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6008:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * t) + sha3(2) + 1)
                                        while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        _2018 = mem[96]
                                        t = t + 1
                                        t = 1
                                        continue 
                                    uint256(stor2[s].field_256) = (2 * _6008) + 1
                                    u = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6008 + 32 > idx:
                                        uint256(stor[u].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        u = u + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6008 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    u = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6008:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6008) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6008 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6008 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5134) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5134 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5134 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6428 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6428:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6428) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6428 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6428 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6428:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6428) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6428 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6428 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                else:
                    if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor2[s].field_0):
                        mem[_3022 + _3018 + 64] = Mask(248, 8, uint256(stor2[s].field_0))
                        mem[_3022 + _3018 + 32] = stor2[s].field_1 % 128
                        mem[64] = _3022 + _3018 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_3022 + _3018 + 64 len stor2[s].field_1 % 128]) != _4028:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4112 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4112:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5110 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5110:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5110) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5110 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5110 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5110:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5110) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5110 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5110 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _4112) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _4112 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4112 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6014 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6014:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6014) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6014 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6014 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6014:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6014) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6014 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6014 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = 1
                            continue 
                        if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2)
                        if not _4112:
                            uint256(stor2[s].field_0) = 0
                            t = sha3((2 * s) + sha3(2))
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5116 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5116:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _5116) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _5116 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5116 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5116:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _5116) + 1
                            t = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _5116 + 32 > idx:
                                uint256(stor[t].field_0) = mem[idx]
                                _2018 = mem[96]
                                t = t + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5116 + 31) >> 5)
                            while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            t = t + 1
                            t = 1
                            continue 
                        uint256(stor2[s].field_0) = (2 * _4112) + 1
                        u = sha3((2 * s) + sha3(2))
                        idx = _2021 + 32
                        while _2021 + _4112 + 32 > idx:
                            uint256(stor[u].field_0) = mem[idx]
                            _2018 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4112 + 31) >> 5)
                        while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            _2018 = mem[96]
                            u = u + 1
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _6016 = mem[_2024]
                        if bool(stor2[s].field_256):
                            if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _6016:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _6016) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _6016 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6016 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = 1
                            continue 
                        if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2) + 1
                        if not _6016:
                            uint256(stor2[s].field_256) = 0
                            t = sha3((2 * t) + sha3(2) + 1)
                            while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            t = t + 1
                            t = 1
                            continue 
                        uint256(stor2[s].field_256) = (2 * _6016) + 1
                        u = sha3((2 * s) + sha3(2) + 1)
                        idx = _2024 + 32
                        while _2024 + _6016 + 32 > idx:
                            uint256(stor[u].field_0) = mem[idx]
                            _2018 = mem[96]
                            u = u + 1
                            idx = idx + 32
                            continue 
                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6016 + 31) >> 5)
                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            _2018 = mem[96]
                            t = t + 1
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        s = s + 1
                        u = 1
                        continue 
                    if bool(stor2[s].field_0) != 1:
                        mem[_3022 + _3018 + 32] = -_3022 + -_3018 - 64
                        mem[64] = 0
                        if sha3(mem[_3022 + _3018 + 64 len -_3022 + -_3018 - 64]) != _4028:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _4124 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _4124:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _5122 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _5122:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _5122) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _5122 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5122 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5122:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5122) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5122 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5122 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_0) = (2 * _4124) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4124 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4124 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _6030 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6030:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6030) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6030 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6030 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _6030:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * t) + sha3(2) + 1)
                                while sha3((2 * t) + sha3(2) + 1) + (stor2[t].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            uint256(stor2[s].field_256) = (2 * _6030) + 1
                            u = sha3((2 * s) + sha3(2) + 1)
                            idx = _2024 + 32
                            while _2024 + _6030 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6030 + 31) >> 5)
                            while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            u = 1
                            continue 
                        if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * s) + sha3(2)
                        if not _4124:
                            uint256(stor2[s].field_0) = 0
                            t = sha3((2 * s) + sha3(2))
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                _2018 = mem[96]
                                t = t + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _5128 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _5128:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _5128) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5128 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * t) + sha3(2) + 1) + (Mask(251, 0, _5128 + 31) >> 5)
                                while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if t == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                t = t + 1
                                t = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _5128:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _5128) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _5128 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _5128 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                        else:
                            uint256(stor2[s].field_0) = (2 * _4124) + 1
                            u = sha3((2 * s) + sha3(2))
                            idx = _2021 + 32
                            while _2021 + _4124 + 32 > idx:
                                uint256(stor[u].field_0) = mem[idx]
                                _2018 = mem[96]
                                u = u + 1
                                idx = idx + 32
                                continue 
                            u = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _4124 + 31) >> 5)
                            while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > u:
                                uint256(stor[u].field_0) = 0
                                _2018 = mem[96]
                                u = u + 1
                                continue 
                            if s >= stor2.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            _6032 = mem[_2024]
                            if bool(stor2[s].field_256):
                                if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6032:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * t) + sha3(2) + 1)
                                    while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    t = t + 1
                                    t = 1
                                    continue 
                                uint256(stor2[s].field_256) = (2 * _6032) + 1
                                u = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _6032 + 32 > idx:
                                    uint256(stor[u].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    u = u + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6032 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s == -1:
                                    revert with 'NH{q', 17
                                _2018 = mem[96]
                                s = s + 1
                                u = 1
                                continue 
                            if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2) + 1
                            if not _6032:
                                uint256(stor2[s].field_256) = 0
                                t = sha3((2 * s) + sha3(2) + 1)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                            else:
                                uint256(stor2[s].field_256) = (2 * _6032) + 1
                                t = sha3((2 * s) + sha3(2) + 1)
                                idx = _2024 + 32
                                while _2024 + _6032 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6032 + 31) >> 5)
                                while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                    else:
                        mem[0] = (2 * s) + sha3(2)
                        u = 0
                        v = sha3((2 * s) + sha3(2))
                        while u < stor2[s].field_1 % 128:
                            mem[u + _3022 + _3018 + 64] = uint256(stor[v].field_0)
                            _2018 = mem[96]
                            u = u + 32
                            v = v + 1
                            continue 
                        _5030 = mem[64]
                        mem[mem[64]] = _3022 + _3018 + stor2[s].field_1 % 128 + -mem[64] + 32
                        mem[64] = _3022 + _3018 + stor2[s].field_1 % 128 + 64
                        if sha3(mem[_5030 + 32 len mem[_5030]]) != _4028:
                            if s == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = s + 1
                            t = t
                            continue 
                        if s >= stor2.length:
                            revert with 'NH{q', 50
                        mem[0] = 2
                        _5136 = mem[_2021]
                        if bool(stor2[s].field_0):
                            if bool(stor2[s].field_0) == uint255(stor2[s].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5136:
                                uint256(stor2[s].field_0) = 0
                                u = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    _2018 = mem[96]
                                    u = u + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6022 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6022:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * t) + sha3(2) + 1)
                                        while sha3((2 * t) + sha3(2) + 1) + (uint255(stor2[t].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        _2018 = mem[96]
                                        t = t + 1
                                        t = 1
                                        continue 
                                    uint256(stor2[s].field_256) = (2 * _6022) + 1
                                    u = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6022 + 32 > idx:
                                        uint256(stor[u].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        u = u + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6022 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                    if s == -1:
                                        revert with 'NH{q', 17
                                    _2018 = mem[96]
                                    s = s + 1
                                    u = 1
                                    continue 
                                if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = (2 * s) + sha3(2) + 1
                                if not _6022:
                                    uint256(stor2[s].field_256) = 0
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                                else:
                                    uint256(stor2[s].field_256) = (2 * _6022) + 1
                                    t = sha3((2 * s) + sha3(2) + 1)
                                    idx = _2024 + 32
                                    while _2024 + _6022 + 32 > idx:
                                        uint256(stor[t].field_0) = mem[idx]
                                        _2018 = mem[96]
                                        t = t + 1
                                        idx = idx + 32
                                        continue 
                                    t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6022 + 31) >> 5)
                                    while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                        uint256(stor[t].field_0) = 0
                                        _2018 = mem[96]
                                        t = t + 1
                                        continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5136) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5136 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5136 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (uint255(stor2[s].field_1) + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6430 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6430:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6430) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6430 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6430 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6430:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6430) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6430 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6430 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                        else:
                            if bool(stor2[s].field_0) == stor2[s].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (2 * s) + sha3(2)
                            if not _5136:
                                uint256(stor2[s].field_0) = 0
                                t = sha3((2 * s) + sha3(2))
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6028 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6028:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6028) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6028 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6028 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6028:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6028) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6028 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6028 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                            else:
                                uint256(stor2[s].field_0) = (2 * _5136) + 1
                                t = sha3((2 * s) + sha3(2))
                                idx = _2021 + 32
                                while _2021 + _5136 + 32 > idx:
                                    uint256(stor[t].field_0) = mem[idx]
                                    _2018 = mem[96]
                                    t = t + 1
                                    idx = idx + 32
                                    continue 
                                t = sha3((2 * s) + sha3(2)) + (Mask(251, 0, _5136 + 31) >> 5)
                                while sha3((2 * s) + sha3(2)) + (stor2[s].field_1 % 128 + 31 / 32) > t:
                                    uint256(stor[t].field_0) = 0
                                    _2018 = mem[96]
                                    t = t + 1
                                    continue 
                                if s >= stor2.length:
                                    revert with 'NH{q', 50
                                mem[0] = 2
                                _6432 = mem[_2024]
                                if bool(stor2[s].field_256):
                                    if bool(stor2[s].field_256) == uint255(stor2[s].field_257) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6432:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6432) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6432 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6432 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (uint255(stor2[s].field_257) + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                else:
                                    if bool(stor2[s].field_256) == stor2[s].field_257 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = (2 * s) + sha3(2) + 1
                                    if not _6432:
                                        uint256(stor2[s].field_256) = 0
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
                                    else:
                                        uint256(stor2[s].field_256) = (2 * _6432) + 1
                                        t = sha3((2 * s) + sha3(2) + 1)
                                        idx = _2024 + 32
                                        while _2024 + _6432 + 32 > idx:
                                            uint256(stor[t].field_0) = mem[idx]
                                            _2018 = mem[96]
                                            t = t + 1
                                            idx = idx + 32
                                            continue 
                                        t = sha3((2 * s) + sha3(2) + 1) + (Mask(251, 0, _6432 + 31) >> 5)
                                        while sha3((2 * s) + sha3(2) + 1) + (stor2[s].field_257 % 128 + 31 / 32) > t:
                                            uint256(stor[t].field_0) = 0
                                            _2018 = mem[96]
                                            t = t + 1
                                            continue 
            if s == -1:
                revert with 'NH{q', 17
            _2018 = mem[96]
            s = s + 1
            t = 1
            continue 
        if not t:
            _3019 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3019] = _2021
            mem[_3019 + 32] = _2024
            stor2.length++
            mem[0] = 2
            _3021 = mem[_2021]
            if bool(stor2[stor2.length].field_0):
                if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_1) < 32:
                    revert with 'NH{q', 34
                mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
                if not _3021:
                    uint256(stor2[stor2.length].field_0) = 0
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace)
                    while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (uint255(stor2[stor2.length].field_1) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        _2018 = mem[96]
                        s = s + 1
                        continue 
                    _4016 = mem[_2024]
                    if bool(stor4057[stor2.length].field_0):
                        if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                        if not _4016:
                            uint256(stor4057[stor2.length].field_0) = 0
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor4057[stor2.length].field_0) = (2 * _4016) + 1
                            t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            s = _2024 + 32
                            while _2024 + _4016 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _2018 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _4016 + 31) >> 5)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        idx = idx + 1
                        continue 
                    if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                    if not _4016:
                        uint256(stor4057[stor2.length].field_0) = 0
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        idx = idx + 1
                        continue 
                    uint256(stor4057[stor2.length].field_0) = (2 * _4016) + 1
                    t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                    s = _2024 + 32
                    while _2024 + _4016 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        _2018 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _4016 + 31) >> 5)
                    while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        _2018 = mem[96]
                        s = s + 1
                        continue 
                    if sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) == -1:
                        revert with 'NH{q', 17
                    _2018 = mem[96]
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) + 1
                    continue 
                uint256(stor2[stor2.length].field_0) = (2 * _3021) + 1
                t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace)
                s = _2021 + 32
                while _2021 + _3021 + 32 > s:
                    uint256(stor[t].field_0) = mem[s]
                    _2018 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (Mask(251, 0, _3021 + 31) >> 5)
                while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (uint255(stor2[stor2.length].field_1) + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    _2018 = mem[96]
                    s = s + 1
                    continue 
                _5018 = mem[_2024]
                if bool(stor4057[stor2.length].field_0):
                    if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                    if not _5018:
                        uint256(stor4057[stor2.length].field_0) = 0
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4057[stor2.length].field_0) = (2 * _5018) + 1
                        t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        s = _2024 + 32
                        while _2024 + _5018 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _2018 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _5018 + 31) >> 5)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                    if not _5018:
                        uint256(stor4057[stor2.length].field_0) = 0
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                        if sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) + 1
                        continue 
                    uint256(stor4057[stor2.length].field_0) = (2 * _5018) + 1
                    t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                    s = _2024 + 32
                    while _2024 + _5018 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        _2018 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _5018 + 31) >> 5)
                    while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        _2018 = mem[96]
                        s = s + 1
                        continue 
            else:
                if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
                if not _3021:
                    uint256(stor2[stor2.length].field_0) = 0
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace)
                    while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (stor2[stor2.length].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        _2018 = mem[96]
                        s = s + 1
                        continue 
                    _4022 = mem[_2024]
                    if bool(stor4057[stor2.length].field_0):
                        if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                        if not _4022:
                            uint256(stor4057[stor2.length].field_0) = 0
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            idx = idx + 1
                            continue 
                        uint256(stor4057[stor2.length].field_0) = (2 * _4022) + 1
                        t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        s = _2024 + 32
                        while _2024 + _4022 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _2018 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _4022 + 31) >> 5)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                        if sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        _2018 = mem[96]
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) + 1
                        continue 
                    if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                    if not _4022:
                        uint256(stor4057[stor2.length].field_0) = 0
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor4057[stor2.length].field_0) = (2 * _4022) + 1
                        t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        s = _2024 + 32
                        while _2024 + _4022 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _2018 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _4022 + 31) >> 5)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                else:
                    uint256(stor2[stor2.length].field_0) = (2 * _3021) + 1
                    t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace)
                    s = _2021 + 32
                    while _2021 + _3021 + 32 > s:
                        uint256(stor[t].field_0) = mem[s]
                        _2018 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (Mask(251, 0, _3021 + 31) >> 5)
                    while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace) + (stor2[stor2.length].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        _2018 = mem[96]
                        s = s + 1
                        continue 
                    _5020 = mem[_2024]
                    if bool(stor4057[stor2.length].field_0):
                        if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                        if not _5020:
                            uint256(stor4057[stor2.length].field_0) = 0
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
                            if sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            _2018 = mem[96]
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) + 1
                            continue 
                        uint256(stor4057[stor2.length].field_0) = (2 * _5020) + 1
                        t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                        s = _2024 + 32
                        while _2024 + _5020 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _2018 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _5020 + 31) >> 5)
                        while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (uint255(stor4057[stor2.length].field_1) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _2018 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
                        if not _5020:
                            uint256(stor4057[stor2.length].field_0) = 0
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor4057[stor2.length].field_0) = (2 * _5020) + 1
                            t = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)
                            s = _2024 + 32
                            while _2024 + _5020 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _2018 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (Mask(251, 0, _5020 + 31) >> 5)
                            while sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + (stor4057[stor2.length].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _2018 = mem[96]
                                s = s + 1
                                continue 
        if idx == -1:
            revert with 'NH{q', 17
        _2018 = mem[96]
        idx = idx + 1
        continue 
}



}
