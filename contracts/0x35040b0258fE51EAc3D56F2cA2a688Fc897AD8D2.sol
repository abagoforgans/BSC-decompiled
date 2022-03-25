contract main {




// =====================  Runtime code  =====================


const sub_9f10025d(?) = 0x300d5a743a6339bdb1c1966979bac053e6d0119c

const sub_c124d819(?) = 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2


function _fallback() payable {
    revert
}

function haveBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function workable(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    if arg1:
        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = arg2
    s = 0
    while idx < arg3:
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1) + 132] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        mem[(32 * arg1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1) + 132] = idx
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[(32 * arg1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s < arg1
        mem[(32 * s) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg1) + 192 len floor32(arg1)] = mem[128 len floor32(arg1)]
    return Array(len=arg1, data=mem[128 len floor32(arg1)], mem[(32 * arg1) + floor32(arg1) + 192 len (32 * arg1) - floor32(arg1)]), 
}

function workableAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= test266151307()
    if arg1:
        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1) + 132] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        mem[(32 * arg1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            s = s
            continue 
        mem[(32 * arg1) + 132] = idx
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[(32 * arg1) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s < arg1
        mem[(32 * s) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg1) + 192 len floor32(arg1)] = mem[128 len floor32(arg1)]
    return Array(len=arg1, data=mem[128 len floor32(arg1)], mem[(32 * arg1) + floor32(arg1) + 192 len (32 * arg1) - floor32(arg1)]), 
}

function count() payable {
    mem[64] = 96
    mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var20003 len 4] with:
            gas gas_remaining wei
           args mem[var20003 + 4 len var20004 - 4]
    mem[var20005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if var24003 >= mem[var24002]:
            return var24004
        mem[96] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
        mem[100] = var26001
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var28003 len 4] with:
                gas gas_remaining wei
               args mem[var28003 + 4 len var28004 - 4]
        mem[var28005] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
            require ext_code.size(address(var34001))
            staticcall var36002.mem[var36003 len 4] with:
                    gas gas_remaining wei
                   args mem[var36003 + 4 len var36004 - 4]
            mem[var36005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not var42001:
                    s = var42002
                    t = var42003
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 >= mem[96]:
                            return t
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args (s + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    s = var42002
                    s = var42003
                    while ext_call.success:
                        require return_data.size >= 32
                        if var45001 + 1 >= mem[96]:
                            return (s + 1)
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args (var45001 + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            var45001 = var45001 + 1
                            continue 
                        s = var45001 + 1
                        s = s + 1
                        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function workable() payable {
    mem[64] = 96
    mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var21003 len 4] with:
            gas gas_remaining wei
           args mem[var21003 + 4 len var21004 - 4]
    mem[var21005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if var25003 >= mem[var25002]:
            return (var25004 > 0)
        mem[96] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
        mem[100] = var27001
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var29003 len 4] with:
                gas gas_remaining wei
               args mem[var29003 + 4 len var29004 - 4]
        mem[var29005] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
            require ext_code.size(address(var35001))
            staticcall var37002.mem[var37003 len 4] with:
                    gas gas_remaining wei
                   args mem[var37003 + 4 len var37004 - 4]
            mem[var37005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not var43001:
                    s = var43002
                    t = var43003
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 >= mem[96]:
                            return (t > 0)
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args (s + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            s = s + 1
                            t = t
                            continue 
                        s = s + 1
                        t = t + 1
                        continue 
                else:
                    s = var43002
                    s = var43003
                    while ext_call.success:
                        require return_data.size >= 32
                        if var46001 + 1 >= mem[96]:
                            return (s + 1 > 0)
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                gas gas_remaining wei
                               args (var46001 + 1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            var46001 = var46001 + 1
                            continue 
                        s = var46001 + 1
                        s = s + 1
                        continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_99a4bb62(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _84 = mem[64]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = address(ext_call.return_data[0])
        _85 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_85 + 32] = 0xbd1b820c00000000000000000000000000000000000000000000000000000000 or mem[_85 + 36 len 28]
        _88 = mem[_85]
        t = _85 + 32
        u = mem[64]
        s = mem[_85]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_85])] = mem[_85 + floor32(mem[_85]) + -(mem[_85] % 32) + 64 len mem[_85] % 32] or Mask(8 * -(mem[_85] % 32) + 32, -(8 * -(mem[_85] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_85])])
        delegate 0x300d5a743a6339bdb1c1966979bac053e6d0119c.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _88 + _84 + -mem[64] + 96]
        if not return_data.size:
            _148 = mem[64]
            mem[mem[64] + 32 len 38] = 0xfe54687567734175746f6d6174656442757965723a3a636f6e766572743a206661696c656420
            _149 = mem[96]
            t = 128
            u = mem[64] + 70
            s = mem[96]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_148 + floor32(mem[96]) + 70] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[_148 + floor32(mem[96]) + 70])
            mem[_149 + _148 + 70] = 0x5d00000000000000000000000000000000000000000000000000000000000000
            _199 = mem[64]
            mem[mem[64]] = _149 + _148 + -mem[64] + 39
            mem[64] = _149 + _148 + 71
            if delegate.return_code:
                idx = idx + 1
                continue 
            mem[_149 + _148 + 71] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_149 + _148 + 75] = 32
            mem[_149 + _148 + 107] = mem[_199]
            _207 = mem[_199]
            if not mem[_199]:
                if not mem[_199] % 32:
                    revert with 0, 32, mem[_149 + _148 + 107 len mem[_199] + 32]
                mem[floor32(mem[_199]) + _149 + _148 + 139] = mem[floor32(mem[_199]) + _149 + _148 + -(mem[_199] % 32) + 171 len mem[_199] % 32]
            else:
                mem[_149 + _148 + 139] = mem[_199 + 32]
                idx = 32
                while idx < _207:
                    mem[idx + _149 + _148 + 139] = mem[idx + _199 + 32]
                    idx = idx + 32
                    continue 
                if not _207 % 32:
                    revert with 0, 32, mem[_149 + _148 + 107 len _207 + 32]
                mem[floor32(_207) + _149 + _148 + 139] = mem[floor32(_207) + _149 + _148 + -(_207 % 32) + 171 len _207 % 32]
            revert with 0, 32, mem[_149 + _148 + 107 len floor32(_207) + 64]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_147] = return_data.size
        mem[_147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[mem[64] + 32 len 38] = 0xfe54687567734175746f6d6174656442757965723a3a636f6e766572743a206661696c656420
        t = _147 + 32
        u = mem[64] + 70
        s = mem[_147]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_147]) + 70] = mem[_147 + floor32(mem[_147]) + -(mem[_147] % 32) + 64 len mem[_147] % 32] or Mask(8 * -(mem[_147] % 32) + 32, -(8 * -(mem[_147] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_147]) + 70])
        mem[return_data.size + mem[64] + 70] = 0x5d00000000000000000000000000000000000000000000000000000000000000
        _203 = mem[64]
        mem[mem[64]] = return_data.size + 39
        mem[64] = return_data.size + mem[64] + 71
        if delegate.return_code:
            t = t + 1
            continue 
        mem[return_data.size + _150 + 71] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[return_data.size + _150 + 75] = 32
        mem[return_data.size + _150 + 107] = mem[_203]
        _210 = mem[_203]
        if not mem[_203]:
            if not mem[_203] % 32:
                revert with 0, 32, mem[return_data.size + _150 + 107 len mem[_203] + 32]
            mem[floor32(mem[_203]) + return_data.size + _150 + 139] = mem[floor32(mem[_203]) + return_data.size + _150 + -(mem[_203] % 32) + 171 len mem[_203] % 32]
        else:
            mem[return_data.size + _150 + 139] = mem[_203 + 32]
            idx = 32
            while idx < _210:
                mem[idx + return_data.size + _150 + 139] = mem[idx + _203 + 32]
                idx = idx + 32
                continue 
            if not _210 % 32:
                revert with 0, 32, mem[return_data.size + _150 + 107 len _210 + 32]
            mem[floor32(_210) + return_data.size + _150 + 139] = mem[floor32(_210) + return_data.size + _150 + -(_210 % 32) + 171 len _210 % 32]
        revert with 0, 32, mem[return_data.size + _150 + 107 len floor32(_210) + 64]
}

function work() payable {
    mem[64] = 96
    mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var22003 len 4] with:
            gas gas_remaining wei
           args mem[var22003 + 4 len var22004 - 4]
    mem[var22005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var26003 < mem[var26002]:
        mem[96] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
        mem[100] = var28001
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var30003 len 4] with:
                gas gas_remaining wei
               args mem[var30003 + 4 len var30004 - 4]
        mem[var30005] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
            require ext_code.size(address(var36001))
            staticcall var38002.mem[var38003 len 4] with:
                    gas gas_remaining wei
                   args mem[var38003 + 4 len var38004 - 4]
            mem[var38005] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not var44001:
                    s = var44002
                    t = var44003
                    while ext_call.success:
                        require return_data.size >= 32
                        if s + 1 >= mem[96]:
                            if t <= 0:
                                revert with 0, 'No pairs to convert'
                            mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var77003 len 4] with:
                                    gas gas_remaining wei
                                   args mem[var77003 + 4 len var77004 - 4]
                            mem[var77005] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var81003 >= mem[var81002]:
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            # nil
                        else:
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args (s + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if ext_call.return_data[0] <= 0:
                                s = s + 1
                                t = t
                                continue 
                            s = s + 1
                            t = t + 1
                            continue 
                else:
                    s = var44002
                    s = var44003
                    while ext_call.success:
                        require return_data.size >= 32
                        if var47001 + 1 >= mem[96]:
                            if s + 1 <= 0:
                                revert with 0, 'No pairs to convert'
                            mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var79003 len 4] with:
                                    gas gas_remaining wei
                                   args mem[var79003 + 4 len var79004 - 4]
                            mem[var79005] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if var83003 >= mem[var83002]:
                            # nil
                        else:
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args (var47001 + 1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if ext_call.return_data[0] <= 0:
                                var47001 = var47001 + 1
                                continue 
                            s = var47001 + 1
                            s = s + 1
                            continue 
        revert with ext_call.return_data[0 len return_data.size]
    if var26004 <= 0:
        revert with 0, 'No pairs to convert'
    mem[96] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var53003 len 4] with:
            gas gas_remaining wei
           args mem[var53003 + 4 len var53004 - 4]
    mem[var53005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var57003 >= mem[var57002]:
    mem[96] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
    mem[100] = var59001
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var61003 len 4] with:
            gas gas_remaining wei
           args mem[var61003 + 4 len var61004 - 4]
    mem[var61005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
    require ext_code.size(address(var67001))
    staticcall var69002.mem[var69003 len 4] with:
            gas gas_remaining wei
           args mem[var69003 + 4 len var69004 - 4]
    mem[var69005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not var75001:
        require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
        staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        s = var75002
        while ext_call.success:
            require return_data.size >= 32
            if s + 1 >= mem[96]:
            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (s + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = 0x300d5a743a6339bdb1c1966979bac053e6d0119c
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args 0x300d5a743a6339bdb1c1966979bac053e6d0119c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = s + 1
                continue 
            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (s + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
            staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args (s + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[132] = address(ext_call.return_data[0])
            mem[164] = address(ext_call.return_data[0])
            mem[96] = 68
            mem[64] = 196
            mem[128] = 0xbd1b820c00000000000000000000000000000000000000000000000000000000 or address(ext_call.return_data[0]) << 64
            s = 128
            t = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[t] = mem[s]
                mem[mem[64]] = 0x574f2ba300000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
                staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.allPairsLength() with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len -mem[64] + 96]
                mem[mem[64]] = ext_call.return_data[0]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
            delegate 0x300d5a743a6339bdb1c1966979bac053e6d0119c.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len -mem[64] + 260]
            # nil
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x1e3dd18b00000000000000000000000000000000000000000000000000000000
    mem[100] = var77001
    require ext_code.size(0xac653ce27e04c6ac565fd87f18128ad33ca03ba2)
    staticcall 0xac653ce27e04c6ac565fd87f18128ad33ca03ba2.mem[var79003 len 4] with:
            gas gas_remaining wei
           args mem[var79003 + 4 len var79004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
