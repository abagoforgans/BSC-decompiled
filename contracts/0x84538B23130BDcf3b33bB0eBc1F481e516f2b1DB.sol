contract main {




// =====================  Runtime code  =====================


#
#  - sub_22ee0b30(?)
#  - sub_38ac8f2c(?)
#
function _fallback() payable {
    revert
}

function sub_b0ed2882(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 64] = call.data[132 len 64]
    if var57003 >= var57001 / 2:
        return var57005, address(var57004)
    else:
        require (var61001 / 2) + var61003 < arg1.length
        require 0 < arg2.length
        require 1 < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = address(var67003)
        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = mem[(32 * arg1.length) + 204 len 20]
        require ext_code.size(var67005)
        staticcall var69002.mem[var69003 len 4] with:
                gas gas_remaining wei
               args mem[var69003 + 4 len var69004 - 4]
        mem[var69005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if not mem[var73002 + 12 len 20]:
                if var50004 <= 0:
                    if not var53001:
                        if var83003 >= var83001 / 2:
                            return var83005, address(var83004)
                        else:
                            require (var87001 / 2) + var87003 < arg1.length
                            require 0 < arg2.length
                            require 1 < arg2.length
                            # nil
                    else:
                        if arg4 != address(var79001):
                            require var75006 < arg1.length
                            _11702 = mem[(32 * var77001) + 128]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 64
                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            require ext_code.size(address(_11702))
                            staticcall address(_11702).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                require mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                require 1 < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224]
                                if var98008 >= var98001:
                                    # nil
                                else:
                                    require var98006 < arg1.length
                                    # nil
                        else:
                            require var81006 < arg1.length
                            if not var87006:
                                if not var89007:
                                    # nil
                                else:
                                    if arg5 != address(var89003):
                                        require ext_code.size(address(var89009))
                                        staticcall address(var89009).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args var89007, var89005, var89006
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            # nil
                                    else:
                                        require ext_code.size(address(var89009))
                                        staticcall address(var89009).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args var89007, var89006, var89005
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            # nil
                            else:
                                if arg5 != address(var89003):
                                    require ext_code.size(address(var89009))
                                    staticcall address(var89009).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args var89008, var89005, var89006
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        # nil
                                else:
                                    require ext_code.size(address(var89009))
                                    staticcall address(var89009).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args var89008, var89006, var89005
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        # nil
                else:
                    if not var78001:
                        if var60003 >= var60001 / 2:
                            return var78008, address(var78007)
                        else:
                            require (var64001 / 2) + var64003 < arg1.length
                            require 0 < arg2.length
                            # nil
                    else:
                        if arg4 != address(var78002):
                            require var78006 < arg1.length
                            _6772 = mem[(32 * var78006) + 128]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = 64
                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            require ext_code.size(address(_6772))
                            staticcall address(_6772).getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg3, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224
                                require return_data.size >= 32
                                _9286 = mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32
                                require mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                                require mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                                require mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
                                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[(32 * arg1.length) + (32 * arg2.length) + mem[(32 * arg1.length) + (32 * arg2.length) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                                _9456 = mem[(32 * arg1.length) + (32 * arg2.length) + _9286 + 224]
                                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _9286 + 224])] = mem[(32 * arg1.length) + (32 * arg2.length) + _9286 + 256 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + _9286 + 224])]
                                require 1 < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224]
                                if var78008 >= mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288]:
                                    if var78003 >= var78001 / 2:
                                        return var78008, address(var78007)
                                    else:
                                        # nil
                                else:
                                    require var78006 < arg1.length
                                    _11889 = mem[(32 * var78006) + 128]
                                    if var80003 >= var80001 / 2:
                                        mem[(32 * _9456) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288]
                                        return mem[(32 * _9456) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256], address(_11889)
                                    else:
                                        # nil
                        else:
                            require var78006 < arg1.length
                            _6776 = mem[(32 * var78006) + 128]
                            if not call.data[132]:
                                if not call.data[164]:
                                    require 0 < arg2.length
                                    if mem[(32 * arg1.length) + 172 len 20] != address(var78003):
                                        require var78006 < arg1.length
                                        _6876 = mem[(32 * var78006) + 128]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78004
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78005
                                        require ext_code.size(address(_6876))
                                        staticcall address(_6876).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args arg3, var78004, var78005
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if var78008 >= ext_call.return_data[0]:
                                                if var77003 >= var77001 / 2:
                                                    return var78008, address(var78007)
                                                else:
                                                    require (var81001 / 2) + var81003 < arg1.length
                                                    require 0 < arg2.length
                                                    # nil
                                            else:
                                                require var78006 < arg1.length
                                                if var79003 >= var79001 / 2:
                                                    return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                else:
                                                    require (var83001 / 2) + var83003 < arg1.length
                                                    require 0 < arg2.length
                                                    # nil
                                    else:
                                        require var78006 < arg1.length
                                        _6879 = mem[(32 * var78006) + 128]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78005
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78004
                                        require ext_code.size(address(_6879))
                                        staticcall address(_6879).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args arg3, var78005, var78004
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if var78008 >= ext_call.return_data[0]:
                                                if var77003 >= var77001 / 2:
                                                    return var78008, address(var78007)
                                                else:
                                                    require (var81001 / 2) + var81003 < arg1.length
                                                    require 0 < arg2.length
                                                    # nil
                                            else:
                                                require var78006 < arg1.length
                                                if var79003 >= var79001 / 2:
                                                    return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                else:
                                                    require (var83001 / 2) + var83003 < arg1.length
                                                    require 0 < arg2.length
                                                    # nil
                                else:
                                    if arg5 != address(var78003):
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.data[164]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78004
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78005
                                        require ext_code.size(address(_6776))
                                        staticcall address(_6776).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args call.data[164], var78004, var78005
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0 < arg2.length
                                            if mem[(32 * arg1.length) + 172 len 20] != address(var78003):
                                                require var78006 < arg1.length
                                                _7009 = mem[(32 * var78006) + 128]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 260] = ext_call.return_data[0] + var78004
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78005 - call.data[164]
                                                require ext_code.size(address(_7009))
                                                staticcall address(_7009).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, ext_call.return_data[0] + var78004, var78005 - call.data[164]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if var78008 >= ext_call.return_data[0]:
                                                        if var82003 >= var82001 / 2:
                                                            return var78008, address(var78007)
                                                        else:
                                                            require (var86001 / 2) + var86003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                                    else:
                                                        require var78006 < arg1.length
                                                        if var84003 >= var84001 / 2:
                                                            return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                        else:
                                                            require (var88001 / 2) + var88003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                            else:
                                                require var78006 < arg1.length
                                                _7012 = mem[(32 * var78006) + 128]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78005 - call.data[164]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 292] = ext_call.return_data[0] + var78004
                                                require ext_code.size(address(_7012))
                                                staticcall address(_7012).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, var78005 - call.data[164], ext_call.return_data[0] + var78004
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if var78008 >= ext_call.return_data[0]:
                                                        if var82003 >= var82001 / 2:
                                                            return var78008, address(var78007)
                                                        else:
                                                            require (var86001 / 2) + var86003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                                    else:
                                                        require var78006 < arg1.length
                                                        if var84003 >= var84001 / 2:
                                                            return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                        else:
                                                            require (var88001 / 2) + var88003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.data[164]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78005
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78004
                                        require ext_code.size(address(_6776))
                                        staticcall address(_6776).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args call.data[164], var78005, var78004
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 0 < arg2.length
                                            if mem[(32 * arg1.length) + 172 len 20] != address(var78003):
                                                require var78006 < arg1.length
                                                _7015 = mem[(32 * var78006) + 128]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78004 - call.data[164]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 292] = ext_call.return_data[0] + var78005
                                                require ext_code.size(address(_7015))
                                                staticcall address(_7015).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, var78004 - call.data[164], ext_call.return_data[0] + var78005
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if var78008 >= ext_call.return_data[0]:
                                                        if var82003 >= var82001 / 2:
                                                            return var78008, address(var78007)
                                                        else:
                                                            require (var86001 / 2) + var86003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                                    else:
                                                        require var78006 < arg1.length
                                                        if var84003 >= var84001 / 2:
                                                            return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                        else:
                                                            require (var88001 / 2) + var88003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                            else:
                                                require var78006 < arg1.length
                                                _7018 = mem[(32 * var78006) + 128]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 260] = ext_call.return_data[0] + var78005
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78004 - call.data[164]
                                                require ext_code.size(address(_7018))
                                                staticcall address(_7018).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                        gas gas_remaining wei
                                                       args arg3, ext_call.return_data[0] + var78005, var78004 - call.data[164]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if var78008 >= ext_call.return_data[0]:
                                                        if var82003 >= var82001 / 2:
                                                            return var78008, address(var78007)
                                                        else:
                                                            require (var86001 / 2) + var86003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                                                    else:
                                                        require var78006 < arg1.length
                                                        if var84003 >= var84001 / 2:
                                                            return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                        else:
                                                            require (var88001 / 2) + var88003 < arg1.length
                                                            require 0 < arg2.length
                                                            # nil
                            else:
                                if arg5 != address(var78003):
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.data[132]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78004
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78005
                                    require ext_code.size(address(_6776))
                                    staticcall address(_6776).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args call.data[132], var78004, var78005
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0 < arg2.length
                                        if mem[(32 * arg1.length) + 172 len 20] != address(var78003):
                                            require var78006 < arg1.length
                                            _7021 = mem[(32 * var78006) + 128]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = call.data[132] + var78004
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78005 - ext_call.return_data[0]
                                            require ext_code.size(address(_7021))
                                            staticcall address(_7021).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, call.data[132] + var78004, var78005 - ext_call.return_data[0]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if var78008 >= ext_call.return_data[0]:
                                                    if var82003 >= var82001 / 2:
                                                        return var78008, address(var78007)
                                                    else:
                                                        require (var86001 / 2) + var86003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                                else:
                                                    require var78006 < arg1.length
                                                    if var84003 >= var84001 / 2:
                                                        return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                    else:
                                                        require (var88001 / 2) + var88003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                        else:
                                            require var78006 < arg1.length
                                            _7024 = mem[(32 * var78006) + 128]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78005 - ext_call.return_data[0]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = call.data[132] + var78004
                                            require ext_code.size(address(_7024))
                                            staticcall address(_7024).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, var78005 - ext_call.return_data[0], call.data[132] + var78004
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if var78008 >= ext_call.return_data[0]:
                                                    if var82003 >= var82001 / 2:
                                                        return var78008, address(var78007)
                                                    else:
                                                        require (var86001 / 2) + var86003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                                else:
                                                    require var78006 < arg1.length
                                                    if var84003 >= var84001 / 2:
                                                        return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                    else:
                                                        require (var88001 / 2) + var88003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = call.data[132]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78005
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78004
                                    require ext_code.size(address(_6776))
                                    staticcall address(_6776).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args call.data[132], var78005, var78004
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 0 < arg2.length
                                        if mem[(32 * arg1.length) + 172 len 20] != address(var78003):
                                            require var78006 < arg1.length
                                            _7027 = mem[(32 * var78006) + 128]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = var78004 - ext_call.return_data[0]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = call.data[132] + var78005
                                            require ext_code.size(address(_7027))
                                            staticcall address(_7027).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, var78004 - ext_call.return_data[0], call.data[132] + var78005
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if var78008 >= ext_call.return_data[0]:
                                                    if var82003 >= var82001 / 2:
                                                        return var78008, address(var78007)
                                                    else:
                                                        require (var86001 / 2) + var86003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                                else:
                                                    require var78006 < arg1.length
                                                    if var84003 >= var84001 / 2:
                                                        return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                    else:
                                                        require (var88001 / 2) + var88003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                        else:
                                            require var78006 < arg1.length
                                            _7030 = mem[(32 * var78006) + 128]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = call.data[132] + var78005
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 292] = var78004 - ext_call.return_data[0]
                                            require ext_code.size(address(_7030))
                                            staticcall address(_7030).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                    gas gas_remaining wei
                                                   args arg3, call.data[132] + var78005, var78004 - ext_call.return_data[0]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if var78008 >= ext_call.return_data[0]:
                                                    if var82003 >= var82001 / 2:
                                                        return var78008, address(var78007)
                                                    else:
                                                        require (var86001 / 2) + var86003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
                                                else:
                                                    require var78006 < arg1.length
                                                    if var84003 >= var84001 / 2:
                                                        return ext_call.return_data[0], mem[(32 * var78006) + 140 len 20]
                                                    else:
                                                        require (var88001 / 2) + var88003 < arg1.length
                                                        require 0 < arg2.length
                                                        # nil
            else:
                mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(var75001))
                staticcall var77002.mem[var77003 len 4] with:
                        gas gas_remaining wei
                       args mem[var77003 + 4 len var77004 - 4]
                mem[var77005 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 96
                    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(var81003))
                    staticcall var83002.mem[var83003 len 4] with:
                            gas gas_remaining wei
                           args mem[var83003 + 4 len var83004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if var89004 <= 0:
                            if not var67001:
                                # nil
                            else:
                                # nil
                        else:
                            # nil
}



}
