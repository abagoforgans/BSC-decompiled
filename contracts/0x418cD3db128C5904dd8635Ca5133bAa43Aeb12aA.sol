contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_863307db(?)
#  - sub_870e5d51(?)
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
        _75 = mem[64]
        mem[64] = mem[64] + 448
        mem[_75] = stor1[idx].field_0
        mem[_75 + 32] = stor1[idx].field_256
        mem[_75 + 64] = stor1[idx].field_512
        mem[_75 + 96] = stor1[idx].field_768
        _76 = mem[64]
        mem[64] = mem[64] + (32 * stor1[idx].field_1024) + 32
        mem[_76] = stor1[idx].field_1024
        if not stor1[idx].field_1024:
            mem[_75 + 128] = _76
            _78 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1280) + 32
            mem[_78] = stor1[idx].field_1280
            t = _78 + 32
            u = 0
            while u < stor1[idx].field_1280:
                mem[0] = sha3(1) + (14 * idx) + 5
                _149 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0) + 32
                mem[_149] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 5)
                    mem[_149 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 5))].field_0
                    s = _149 + 32
                    v = sha3(mem[0])
                    while _149 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _149
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 160] = _78
            _147 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1536) + 32
            mem[_147] = stor1[idx].field_1536
            t = _147 + 32
            u = 0
            while u < stor1[idx].field_1536:
                mem[0] = sha3(1) + (14 * idx) + 6
                _215 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0) + 32
                mem[_215] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 6)
                    mem[_215 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 6))].field_0
                    s = _215 + 32
                    v = sha3(mem[0])
                    while _215 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _215
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 192] = _147
            _213 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1792) + 32
            mem[_213] = stor1[idx].field_1792
            t = _213 + 32
            u = 0
            while u < stor1[idx].field_1792:
                mem[0] = sha3(1) + (14 * idx) + 7
                _291 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0) + 32
                mem[_291] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 7)
                    mem[_291 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 7))].field_0
                    v = _291 + 32
                    w = sha3(mem[0])
                    while _291 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * w) + 7)].field_0) > v:
                        mem[v + 32] = stor1[w].field_0
                        v = v + 32
                        w = w + 1
                        continue 
                mem[t] = _291
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 224] = _213
            _289 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2048) + 32
            mem[_289] = stor1[idx].field_2048
            t = _289 + 32
            u = 0
            while u < stor1[idx].field_2048:
                mem[0] = sha3(1) + (14 * idx) + 8
                _361 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0) + 32
                mem[_361] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 8)
                    mem[_361 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 8))].field_0
                    s = _361 + 32
                    v = sha3(mem[0])
                    while _361 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _361
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 256] = _289
            mem[_75 + 288] = stor1[idx].field_2304
            _359 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
            mem[_359] = stor1[idx].field_2560
            if not stor1[idx].field_2560:
                mem[_75 + 320] = _359
                _367 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                mem[_367] = stor1[idx].field_2816
                if not stor1[idx].field_2816:
                    mem[_75 + 352] = _367
                    _372 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_372] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _372
                        _378 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_378] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_378 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _378 + 32
                            u = sha3(mem[0])
                            while _378 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _378
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_372 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _372 + 32
                        u = sha3(mem[0])
                        while _372 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _372
                        _451 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_451] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_451 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _451 + 32
                            u = sha3(mem[0])
                            while _451 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _451
                else:
                    mem[0] = sha3(1) + (14 * idx) + 11
                    mem[_367 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 11)].field_0
                    t = _367 + 32
                    u = sha3(mem[0])
                    while _367 + (32 * stor1[idx].field_2816) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_75 + 352] = _367
                    _452 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_452] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _452
                        _457 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_457] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_457 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _457 + 32
                            u = sha3(mem[0])
                            while _457 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _457
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_452 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _452 + 32
                        u = sha3(mem[0])
                        while _452 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _452
                        _502 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_502] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_502 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _502 + 32
                            u = sha3(mem[0])
                            while _502 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _502
            else:
                mem[0] = sha3(1) + (14 * idx) + 10
                mem[_359 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 10)].field_0
                t = _359 + 32
                u = sha3(mem[0])
                while _359 + (32 * stor1[idx].field_2560) > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_75 + 320] = _359
                _453 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                mem[_453] = stor1[idx].field_2816
                if not stor1[idx].field_2816:
                    mem[_75 + 352] = _453
                    _459 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_459] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _459
                        _468 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_468] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_468 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _468 + 32
                            u = sha3(mem[0])
                            while _468 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _468
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_459 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _459 + 32
                        u = sha3(mem[0])
                        while _459 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _459
                        _503 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_503] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_503 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _503 + 32
                            u = sha3(mem[0])
                            while _503 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _503
                else:
                    mem[0] = sha3(1) + (14 * idx) + 11
                    mem[_453 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 11)].field_0
                    t = _453 + 32
                    u = sha3(mem[0])
                    while _453 + (32 * stor1[idx].field_2816) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_75 + 352] = _453
                    _504 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_504] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _504
                        _511 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_511] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_511 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _511 + 32
                            u = sha3(mem[0])
                            while _511 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _511
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_504 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _504 + 32
                        u = sha3(mem[0])
                        while _504 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _504
                        _533 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_533] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_533 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _533 + 32
                            u = sha3(mem[0])
                            while _533 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _533
        else:
            mem[0] = sha3(1) + (14 * idx) + 4
            mem[_76 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 4)].field_0
            t = _76 + 32
            u = sha3(mem[0])
            while _76 + (32 * stor1[idx].field_1024) > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 128] = _76
            _211 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1280) + 32
            mem[_211] = stor1[idx].field_1280
            t = _211 + 32
            u = 0
            while u < stor1[idx].field_1280:
                mem[0] = sha3(1) + (14 * idx) + 5
                _294 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0) + 32
                mem[_294] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 5)
                    mem[_294 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 5))].field_0
                    s = _294 + 32
                    v = sha3(mem[0])
                    while _294 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 5)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _294
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 160] = _211
            _292 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1536) + 32
            mem[_292] = stor1[idx].field_1536
            t = _292 + 32
            u = 0
            while u < stor1[idx].field_1536:
                mem[0] = sha3(1) + (14 * idx) + 6
                _364 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0) + 32
                mem[_364] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 6)
                    mem[_364 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 6))].field_0
                    s = _364 + 32
                    v = sha3(mem[0])
                    while _364 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 6)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _364
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 192] = _292
            _362 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_1792) + 32
            mem[_362] = stor1[idx].field_1792
            t = _362 + 32
            u = 0
            while u < stor1[idx].field_1792:
                mem[0] = sha3(1) + (14 * idx) + 7
                _418 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0) + 32
                mem[_418] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 7)
                    mem[_418 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 7))].field_0
                    s = _418 + 32
                    v = sha3(mem[0])
                    while _418 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 7)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _418
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 224] = _362
            _416 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2048) + 32
            mem[_416] = stor1[idx].field_2048
            t = _416 + 32
            u = 0
            while u < stor1[idx].field_2048:
                mem[0] = sha3(1) + (14 * idx) + 8
                _463 = mem[64]
                mem[64] = mem[64] + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0) + 32
                mem[_463] = stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0
                if stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0:
                    mem[0] = u + sha3(sha3(1) + (14 * idx) + 8)
                    mem[_463 + 32] = stor[sha3(u + sha3(('name', 'stor1', 1) + (14 * idx) + 8))].field_0
                    s = _463 + 32
                    v = sha3(mem[0])
                    while _463 + (32 * stor[u + sha3(('name', 'stor1', 1) + (14 * idx) + 8)].field_0) > s:
                        mem[s + 32] = stor1[v].field_0
                        s = s + 32
                        v = v + 1
                        continue 
                mem[t] = _463
                t = t + 32
                u = u + 1
                continue 
            mem[_75 + 256] = _416
            mem[_75 + 288] = stor1[idx].field_2304
            _461 = mem[64]
            mem[64] = mem[64] + (32 * stor1[idx].field_2560) + 32
            mem[_461] = stor1[idx].field_2560
            if not stor1[idx].field_2560:
                mem[_75 + 320] = _461
                _470 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                mem[_470] = stor1[idx].field_2816
                if not stor1[idx].field_2816:
                    mem[_75 + 352] = _470
                    _475 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_475] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _475
                        _478 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_478] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_478 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _478 + 32
                            u = sha3(mem[0])
                            while _478 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _478
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_475 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _475 + 32
                        u = sha3(mem[0])
                        while _475 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _475
                        _505 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_505] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_505 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _505 + 32
                            u = sha3(mem[0])
                            while _505 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _505
                else:
                    mem[0] = sha3(1) + (14 * idx) + 11
                    mem[_470 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 11)].field_0
                    t = _470 + 32
                    u = sha3(mem[0])
                    while _470 + (32 * stor1[idx].field_2816) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_75 + 352] = _470
                    _506 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_506] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _506
                        _514 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_514] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_514 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _514 + 32
                            u = sha3(mem[0])
                            while _514 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _514
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_506 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _506 + 32
                        u = sha3(mem[0])
                        while _506 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _506
                        _534 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_534] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_534 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _534 + 32
                            u = sha3(mem[0])
                            while _534 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _534
            else:
                mem[0] = sha3(1) + (14 * idx) + 10
                mem[_461 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 10)].field_0
                t = _461 + 32
                u = sha3(mem[0])
                while _461 + (32 * stor1[idx].field_2560) > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_75 + 320] = _461
                _507 = mem[64]
                mem[64] = mem[64] + (32 * stor1[idx].field_2816) + 32
                mem[_507] = stor1[idx].field_2816
                if not stor1[idx].field_2816:
                    mem[_75 + 352] = _507
                    _516 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_516] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _516
                        _521 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_521] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_521 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _521 + 32
                            u = sha3(mem[0])
                            while _521 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _521
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_516 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _516 + 32
                        u = sha3(mem[0])
                        while _516 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _516
                        _535 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_535] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_535 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _535 + 32
                            u = sha3(mem[0])
                            while _535 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _535
                else:
                    mem[0] = sha3(1) + (14 * idx) + 11
                    mem[_507 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 11)].field_0
                    t = _507 + 32
                    u = sha3(mem[0])
                    while _507 + (32 * stor1[idx].field_2816) > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_75 + 352] = _507
                    _536 = mem[64]
                    mem[64] = mem[64] + (32 * stor1[idx].field_3072) + 32
                    mem[_536] = stor1[idx].field_3072
                    if not stor1[idx].field_3072:
                        mem[_75 + 384] = _536
                        _541 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_541] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_541 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _541 + 32
                            u = sha3(mem[0])
                            while _541 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _541
                    else:
                        mem[0] = sha3(1) + (14 * idx) + 12
                        mem[_536 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 12)].field_0
                        t = _536 + 32
                        u = sha3(mem[0])
                        while _536 + (32 * stor1[idx].field_3072) > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_75 + 384] = _536
                        _544 = mem[64]
                        mem[64] = mem[64] + (32 * stor1[idx].field_3328) + 32
                        mem[_544] = stor1[idx].field_3328
                        if stor1[idx].field_3328:
                            mem[0] = sha3(1) + (14 * idx) + 13
                            mem[_544 + 32] = stor[sha3(('name', 'stor1', 1) + (14 * idx) + 13)].field_0
                            t = _544 + 32
                            u = sha3(mem[0])
                            while _544 + (32 * stor1[idx].field_3328) > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_75 + 416] = _544
        mem[s] = _75
        s = s + 32
        idx = idx + 1
        continue 
    _77 = mem[64]
    mem[mem[64]] = 32
    _80 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _80:
        mem[t] = u + -_77 - 64
        _146 = mem[s]
        mem[u] = mem[mem[s]]
        mem[u + 32] = mem[_146 + 44 len 20]
        mem[u + 64] = mem[_146 + 64]
        mem[u + 96] = mem[_146 + 96]
        _156 = mem[_146 + 128]
        mem[u + 128] = 448
        _160 = mem[_156]
        mem[u + 448] = mem[_156]
        v = 0
        w = _156 + 32
        x = u + 480
        while v < _160:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _216 = mem[_146 + 160]
        mem[u + 160] = (32 * _160) + 480
        _221 = mem[_216]
        mem[u + (32 * _160) + 480] = mem[_216]
        v = 0
        w = _216 + 32
        x = u + (32 * _160) + (32 * _221) + 512
        y = u + (32 * _160) + 512
        while v < _221:
            mem[y] = x + -u + -(32 * _160) - 512
            _288 = mem[w]
            _296 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            s = _288 + 32
            t = x + 32
            while idx < _296:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _296 + 1
            s = _288 + (32 * _296) + 64
            x = x + (32 * _296) + 32
            y = y + 32
            continue 
        _295 = mem[_146 + 192]
        mem[u + 192] = x - u
        _299 = mem[_295]
        mem[x] = mem[_295]
        v = 0
        w = _295 + 32
        y = x + (32 * _299) + 32
        z = x + 32
        while v < _299:
            mem[z] = y + -x - 32
            _357 = mem[w]
            _366 = mem[mem[w]]
            mem[y] = mem[mem[w]]
            idx = 0
            s = _357 + 32
            t = y + 32
            while idx < _366:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _366 + 1
            s = _357 + (32 * _366) + 64
            y = y + (32 * _366) + 32
            z = z + 32
            continue 
        _365 = mem[_146 + 224]
        mem[u + 224] = y - u
        _371 = mem[_365]
        mem[y] = mem[_365]
        v = 0
        w = _365 + 32
        x = y + (32 * _371) + 32
        z = y + 32
        while v < _371:
            mem[z] = x + -y - 32
            _414 = mem[w]
            _420 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            s = _414 + 32
            t = x + 32
            while idx < _420:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _420 + 1
            s = _414 + (32 * _420) + 64
            x = x + (32 * _420) + 32
            z = z + 32
            continue 
        _419 = mem[_146 + 256]
        mem[u + 256] = x - u
        _422 = mem[_419]
        mem[x] = mem[_419]
        v = 0
        w = _419 + 32
        y = x + (32 * _422) + 32
        z = x + 32
        while v < _422:
            mem[z] = y + -x - 32
            _454 = mem[w]
            _466 = mem[mem[w]]
            mem[y] = mem[mem[w]]
            idx = 0
            s = _454 + 32
            t = y + 32
            while idx < _466:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _466 + 1
            s = _454 + (32 * _466) + 64
            y = y + (32 * _466) + 32
            z = z + 32
            continue 
        mem[u + 288] = mem[_146 + 288]
        _465 = mem[_146 + 320]
        mem[u + 320] = y - u
        _473 = mem[_465]
        mem[y] = mem[_465]
        v = 0
        w = _465 + 32
        x = y + 32
        while v < _473:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _493 = mem[_146 + 352]
        mem[u + 352] = y + (32 * _473) + -u + 32
        _494 = mem[_493]
        mem[y + (32 * _473) + 32] = mem[_493]
        v = 0
        w = _493 + 32
        x = y + (32 * _473) + 64
        while v < _494:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _518 = mem[_146 + 384]
        mem[u + 384] = y + (32 * _473) + (32 * _494) + -u + 64
        _523 = mem[_518]
        mem[y + (32 * _473) + (32 * _494) + 64] = mem[_518]
        v = 0
        w = _518 + 32
        x = y + (32 * _473) + (32 * _494) + 96
        while v < _523:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        _530 = mem[_146 + 416]
        mem[u + 416] = y + (32 * _473) + (32 * _494) + (32 * _523) + -u + 96
        _531 = mem[_530]
        mem[y + (32 * _473) + (32 * _494) + (32 * _523) + 96] = mem[_530]
        u = 0
        v = _530 + 32
        w = y + (32 * _473) + (32 * _494) + (32 * _523) + 128
        while u < _531:
            mem[w] = mem[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = y + (32 * _473) + (32 * _494) + (32 * _523) + (32 * _531) + 128
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
