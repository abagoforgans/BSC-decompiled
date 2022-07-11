contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_870e5d51(?)
#  - sub_9bc5286c(?)
#
const sub_63788e67(?) = 1000

const sub_6dc2f606(?) = 10^10

const PERCENT = 100000


address owner;
array of struct stor1;

function sub_4c411f06(?) payable {
    return stor1.length
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

function sub_ff5f9974(?) payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    s = 128
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        _74 = mem[64]
        mem[64] = mem[64] + 416
        mem[_74] = stor1[idx].field_0
        mem[_74 + 32] = stor1[idx].field_256
        mem[_74 + 64] = stor1[idx].field_512
        _75 = mem[64]
        mem[64] = mem[64] + (32 * stor1[idx].field_768) + 32
        mem[_75] = stor1[idx].field_768
        if not stor1[idx].field_768:
            mem[_74 + 96] = _75
            _77 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1024) + 32
            mem[_77] = stor1[idx].field_1024
            t = _77 + 32
            u = 0
            while u < stor1[idx].field_1024:
                mem[0] = sha3(1) + (13 * idx) + 4
                _147 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0) + 32
                mem[_147] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 4)
                    mem[_147 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 4))].field_0
                    s = _147 + 32
                    v = sha3(mem[0])
                    while _147 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _147
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 128] = _77
            _145 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1280) + 32
            mem[_145] = stor1[idx].field_1280
            t = _145 + 32
            u = 0
            while u < stor1[idx].field_1280:
                mem[0] = sha3(1) + (13 * idx) + 5
                _212 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0) + 32
                mem[_212] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 5)
                    mem[_212 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 5))].field_0
                    s = _212 + 32
                    v = sha3(mem[0])
                    while _212 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _212
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 160] = _145
            _210 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1536) + 32
            mem[_210] = stor1[idx].field_1536
            t = _210 + 32
            u = 0
            while u < stor1[idx].field_1536:
                mem[0] = sha3(1) + (13 * idx) + 6
                _288 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0) + 32
                mem[_288] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 6)
                    mem[_288 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 6))].field_0
                    v = _288 + 32
                    w = sha3(mem[0])
                    while _288 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * w) + 6)].field_0) > v:
                        mem[v + 32] = stor1[w].field_0
                        v = v + 32
                        w = w + 1
                        continue 
                mem[t] = _288
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 192] = _210
            _286 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1792) + 32
            mem[_286] = stor1[idx].field_1792
            t = _286 + 32
            u = 0
            while u < stor1[idx].field_1792:
                mem[0] = sha3(1) + (13 * idx) + 7
                _358 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0) + 32
                mem[_358] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 7)
                    mem[_358 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 7))].field_0
                    s = _358 + 32
                    v = sha3(mem[0])
                    while _358 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _358
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 224] = _286
            mem[_74 + 256] = stor1[idx].field_2048
            _356 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2304) + 32
            mem[_356] = stor1[idx].field_2304
            if not stor1[idx].field_2304:
                mem[_74 + 288] = _356
                _364 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
                mem[_364] = stor1[idx].field_2560
                if not stor1[idx].field_2560:
                    mem[_74 + 320] = _364
                    _369 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_369] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _369
                        _375 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_375] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_375 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _375 + 32
                            u = sha3(mem[0])
                            while _375 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _375
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_369 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _369 + 32
                        u = sha3(mem[0])
                        while _369 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _369
                        _448 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_448] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_448 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _448 + 32
                            u = sha3(mem[0])
                            while _448 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _448
                else:
                    mem[0] = sha3(1) + (13 * idx) + 10
                    mem[_364 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 10)].field_0
                    t = _364 + 32
                    u = sha3(mem[0])
                    while _364 + (32 * stor1[idx].field_2560) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_74 + 320] = _364
                    _449 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_449] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _449
                        _454 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_454] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_454 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _454 + 32
                            u = sha3(mem[0])
                            while _454 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _454
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_449 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _449 + 32
                        u = sha3(mem[0])
                        while _449 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _449
                        _499 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_499] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_499 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _499 + 32
                            u = sha3(mem[0])
                            while _499 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _499
            else:
                mem[0] = sha3(1) + (13 * idx) + 9
                mem[_356 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 9)].field_0
                t = _356 + 32
                u = sha3(mem[0])
                while _356 + (32 * stor1[idx].field_2304) > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_74 + 288] = _356
                _450 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
                mem[_450] = stor1[idx].field_2560
                if not stor1[idx].field_2560:
                    mem[_74 + 320] = _450
                    _456 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_456] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _456
                        _465 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_465] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_465 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _465 + 32
                            u = sha3(mem[0])
                            while _465 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _465
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_456 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _456 + 32
                        u = sha3(mem[0])
                        while _456 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _456
                        _500 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_500] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_500 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _500 + 32
                            u = sha3(mem[0])
                            while _500 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _500
                else:
                    mem[0] = sha3(1) + (13 * idx) + 10
                    mem[_450 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 10)].field_0
                    t = _450 + 32
                    u = sha3(mem[0])
                    while _450 + (32 * stor1[idx].field_2560) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_74 + 320] = _450
                    _501 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_501] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _501
                        _508 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_508] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_508 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _508 + 32
                            u = sha3(mem[0])
                            while _508 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _508
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_501 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _501 + 32
                        u = sha3(mem[0])
                        while _501 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _501
                        _530 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_530] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_530 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _530 + 32
                            u = sha3(mem[0])
                            while _530 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _530
        else:
            mem[0] = sha3(1) + (13 * idx) + 3
            mem[_75 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 3)].field_0
            t = _75 + 32
            u = sha3(mem[0])
            while _75 + (32 * stor1[idx].field_768) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 96] = _75
            _208 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1024) + 32
            mem[_208] = stor1[idx].field_1024
            t = _208 + 32
            u = 0
            while u < stor1[idx].field_1024:
                mem[0] = sha3(1) + (13 * idx) + 4
                _291 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0) + 32
                mem[_291] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 4)
                    mem[_291 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 4))].field_0
                    s = _291 + 32
                    v = sha3(mem[0])
                    while _291 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 4)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _291
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 128] = _208
            _289 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1280) + 32
            mem[_289] = stor1[idx].field_1280
            t = _289 + 32
            u = 0
            while u < stor1[idx].field_1280:
                mem[0] = sha3(1) + (13 * idx) + 5
                _361 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0) + 32
                mem[_361] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 5)
                    mem[_361 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 5))].field_0
                    s = _361 + 32
                    v = sha3(mem[0])
                    while _361 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 5)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _361
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 160] = _289
            _359 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1536) + 32
            mem[_359] = stor1[idx].field_1536
            t = _359 + 32
            u = 0
            while u < stor1[idx].field_1536:
                mem[0] = sha3(1) + (13 * idx) + 6
                _415 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0) + 32
                mem[_415] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 6)
                    mem[_415 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 6))].field_0
                    s = _415 + 32
                    v = sha3(mem[0])
                    while _415 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 6)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _415
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 192] = _359
            _413 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1792) + 32
            mem[_413] = stor1[idx].field_1792
            t = _413 + 32
            u = 0
            while u < stor1[idx].field_1792:
                mem[0] = sha3(1) + (13 * idx) + 7
                _460 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0) + 32
                mem[_460] = stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0:
                    mem[0] = u + sha3(sha3(1) + (13 * idx) + 7)
                    mem[_460 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (13 * idx) + 7))].field_0
                    s = _460 + 32
                    v = sha3(mem[0])
                    while _460 + (32 * stor[u + sha3(('name', 'stor1', 1) + (13 * idx) + 7)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _460
                t = t + 32
                u = u + 1
                continue 
            mem[_74 + 224] = _413
            mem[_74 + 256] = stor1[idx].field_2048
            _458 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2304) + 32
            mem[_458] = stor1[idx].field_2304
            if not stor1[idx].field_2304:
                mem[_74 + 288] = _458
                _467 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
                mem[_467] = stor1[idx].field_2560
                if not stor1[idx].field_2560:
                    mem[_74 + 320] = _467
                    _472 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_472] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _472
                        _475 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_475] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_475 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _475 + 32
                            u = sha3(mem[0])
                            while _475 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _475
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_472 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _472 + 32
                        u = sha3(mem[0])
                        while _472 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _472
                        _502 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_502] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_502 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _502 + 32
                            u = sha3(mem[0])
                            while _502 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _502
                else:
                    mem[0] = sha3(1) + (13 * idx) + 10
                    mem[_467 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 10)].field_0
                    t = _467 + 32
                    u = sha3(mem[0])
                    while _467 + (32 * stor1[idx].field_2560) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_74 + 320] = _467
                    _503 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_503] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _503
                        _511 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_511] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_511 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _511 + 32
                            u = sha3(mem[0])
                            while _511 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _511
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_503 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _503 + 32
                        u = sha3(mem[0])
                        while _503 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _503
                        _531 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_531] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_531 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _531 + 32
                            u = sha3(mem[0])
                            while _531 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _531
            else:
                mem[0] = sha3(1) + (13 * idx) + 9
                mem[_458 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 9)].field_0
                t = _458 + 32
                u = sha3(mem[0])
                while _458 + (32 * stor1[idx].field_2304) > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_74 + 288] = _458
                _504 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
                mem[_504] = stor1[idx].field_2560
                if not stor1[idx].field_2560:
                    mem[_74 + 320] = _504
                    _513 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_513] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _513
                        _518 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_518] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_518 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _518 + 32
                            u = sha3(mem[0])
                            while _518 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _518
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_513 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _513 + 32
                        u = sha3(mem[0])
                        while _513 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _513
                        _532 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_532] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_532 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _532 + 32
                            u = sha3(mem[0])
                            while _532 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _532
                else:
                    mem[0] = sha3(1) + (13 * idx) + 10
                    mem[_504 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 10)].field_0
                    t = _504 + 32
                    u = sha3(mem[0])
                    while _504 + (32 * stor1[idx].field_2560) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_74 + 320] = _504
                    _533 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                    mem[_533] = stor1[idx].field_2816
                    if not stor1[idx].field_2816:
                        mem[_74 + 352] = _533
                        _538 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_538] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_538 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _538 + 32
                            u = sha3(mem[0])
                            while _538 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _538
                    else:
                        mem[0] = sha3(1) + (13 * idx) + 11
                        mem[_533 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 11)].field_0
                        t = _533 + 32
                        u = sha3(mem[0])
                        while _533 + (32 * stor1[idx].field_2816) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_74 + 352] = _533
                        _541 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                        mem[_541] = stor1[idx].field_3072
                        if stor1[idx].field_3072:
                            mem[0] = sha3(1) + (13 * idx) + 12
                            mem[_541 + 32] = stor[sha3(('name', 'stor1', 1) + (13 * idx) + 12)].field_0
                            t = _541 + 32
                            u = sha3(mem[0])
                            while _541 + (32 * stor1[idx].field_3072) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_74 + 384] = _541
        mem[s] = _74
        s = s + 32
        idx = idx + 1
        continue 
    _76 = mem[64]
    mem[mem[64]] = 32
    _79 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _79:
        mem[t] = u + -_76 - 64
        _144 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_144 + 44 len 20]
        mem[u + 64] = mem[_144 + 64]
        _153 = mem[_144 + 96]
        mem[u + 96] = 416
        _157 = mem[_153]
        mem[u + 416] = mem[_153]
        v = 0
        w = _153 + 32
        x = u + 448
        while v < _157:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _213 = mem[_144 + 128]
        mem[u + 128] = (32 * _157) + 448
        _218 = mem[_213]
        mem[u + (32 * _157) + 448] = mem[_213]
        v = 0
        w = _213 + 32
        x = u + (32 * _157) + (32 * _218) + 480
        y = u + (32 * _157) + 480
        while v < _218:
            mem[y] = x + -u + -(32 * _157) - 480
            _285 = mem[w]
            _293 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            s = _285 + 32
            t = x + 32
            while idx < _293:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _293 + 1
            s = _285 + (32 * _293) + 64
            x = x + (32 * _293) + 32
            y = y + 32
            continue 
        _292 = mem[_144 + 160]
        mem[u + 160] = x - u
        _296 = mem[_292]
        mem[x] = mem[_292]
        v = 0
        w = _292 + 32
        y = x + (32 * _296) + 32
        z = x + 32
        while v < _296:
            mem[z] = y + -x - 32
            _354 = mem[w]
            _363 = mem[mem[w]]
            mem[y] = mem[mem[w]]
            idx = 0
            s = _354 + 32
            t = y + 32
            while idx < _363:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _363 + 1
            s = _354 + (32 * _363) + 64
            y = y + (32 * _363) + 32
            z = z + 32
            continue 
        _362 = mem[_144 + 192]
        mem[u + 192] = y - u
        _368 = mem[_362]
        mem[y] = mem[_362]
        v = 0
        w = _362 + 32
        x = y + (32 * _368) + 32
        z = y + 32
        while v < _368:
            mem[z] = x + -y - 32
            _411 = mem[w]
            _417 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            s = _411 + 32
            t = x + 32
            while idx < _417:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _417 + 1
            s = _411 + (32 * _417) + 64
            x = x + (32 * _417) + 32
            z = z + 32
            continue 
        _416 = mem[_144 + 224]
        mem[u + 224] = x - u
        _419 = mem[_416]
        mem[x] = mem[_416]
        v = 0
        w = _416 + 32
        y = x + (32 * _419) + 32
        z = x + 32
        while v < _419:
            mem[z] = y + -x - 32
            _451 = mem[w]
            _463 = mem[mem[w]]
            mem[y] = mem[mem[w]]
            idx = 0
            s = _451 + 32
            t = y + 32
            while idx < _463:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _463 + 1
            s = _451 + (32 * _463) + 64
            y = y + (32 * _463) + 32
            z = z + 32
            continue 
        mem[u + 256] = mem[_144 + 256]
        _462 = mem[_144 + 288]
        mem[u + 288] = y - u
        _470 = mem[_462]
        mem[y] = mem[_462]
        v = 0
        w = _462 + 32
        x = y + 32
        while v < _470:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _490 = mem[_144 + 320]
        mem[u + 320] = y + (32 * _470) + -u + 32
        _491 = mem[_490]
        mem[y + (32 * _470) + 32] = mem[_490]
        v = 0
        w = _490 + 32
        x = y + (32 * _470) + 64
        while v < _491:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _515 = mem[_144 + 352]
        mem[u + 352] = y + (32 * _470) + (32 * _491) + -u + 64
        _520 = mem[_515]
        mem[y + (32 * _470) + (32 * _491) + 64] = mem[_515]
        v = 0
        w = _515 + 32
        x = y + (32 * _470) + (32 * _491) + 96
        while v < _520:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _527 = mem[_144 + 384]
        mem[u + 384] = y + (32 * _470) + (32 * _491) + (32 * _520) + -u + 96
        _528 = mem[_527]
        mem[y + (32 * _470) + (32 * _491) + (32 * _520) + 96] = mem[_527]
        u = 0
        v = _527 + 32
        w = y + (32 * _470) + (32 * _491) + (32 * _520) + 128
        while u < _528:
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = y + (32 * _470) + (32 * _491) + (32 * _520) + (32 * _528) + 128
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
