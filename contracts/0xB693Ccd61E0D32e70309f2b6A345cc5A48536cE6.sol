contract main {




// =====================  Runtime code  =====================


#
#  - sub_bb94b088(?)
#
function _fallback() payable {
    revert
}

function sub_ef0b2848(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if arg1 != 0x7500000000000000000000000000000000000000000000000000000000000000:
        if arg1 != 0x5700000000000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg5.length) + 128] = 0
        else:
            mem[ceil32(arg5.length) + 128] = arg2
        return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if not address(arg3):
        _5 = mem[128]
        require ext_code.size(mem[128 len 20])
        staticcall mem[128 len 20].token0() with:
                gas gas_remaining wei
        mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        require ext_code.size(Mask(160, 96, _5) >> 96)
        staticcall Mask(160, 96, _5) >> 96.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            if not arg2:
                if not ext_call.return_data[50 len 14]:
                    return 0
                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * ext_call.return_data[50 len 14]:
                    return 0
                if not 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
            if 997 * arg2 / arg2 != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 997 * arg2:
                if not ext_call.return_data[50 len 14]:
                    if 997 * arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg2:
                        return 0
                    if not 997 * arg2:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 997 * arg2)
                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (997 * arg2) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg2) + (1000 * ext_call.return_data[50 len 14]):
                    return 0
                if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])))
            if 997 * ext_call.return_data[18 len 14] * arg2 / 997 * arg2 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[50 len 14]:
                if 997 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg2:
                    return 0
                if not 997 * arg2:
                    revert with 0, 'SafeMath: division by zero', 0
                return (997 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 997 * arg2)
            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (997 * arg2) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg2) + (1000 * ext_call.return_data[50 len 14]):
                return 0
            if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'SafeMath: division by zero', 0
            return (997 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])))
    else:
        if address(arg4):
            _4 = mem[128]
            require ext_code.size(mem[128 len 20])
            staticcall mem[128 len 20].token0() with:
                    gas gas_remaining wei
            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            require ext_code.size(Mask(160, 96, _4) >> 96)
            staticcall Mask(160, 96, _4) >> 96.getReserves() with:
                    gas gas_remaining wei
        else:
            _8 = mem[128]
            require ext_code.size(mem[128 len 20])
            staticcall mem[128 len 20].token0() with:
                    gas gas_remaining wei
            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            require ext_code.size(Mask(160, 96, _8) >> 96)
            staticcall Mask(160, 96, _8) >> 96.getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) != address(arg3):
            if not arg2:
                if not ext_call.return_data[50 len 14]:
                    return 0
                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * ext_call.return_data[50 len 14]:
                    return 0
                if not 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
            if 997 * arg2 / arg2 != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 997 * arg2:
                if not ext_call.return_data[50 len 14]:
                    if 997 * arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg2:
                        return 0
                    if not 997 * arg2:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / 997 * arg2)
                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (997 * arg2) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg2) + (1000 * ext_call.return_data[50 len 14]):
                    return 0
                if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])))
            if 997 * ext_call.return_data[18 len 14] * arg2 / 997 * arg2 != ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[50 len 14]:
                if 997 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg2:
                    return 0
                if not 997 * arg2:
                    revert with 0, 'SafeMath: division by zero', 0
                return (997 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 997 * arg2)
            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (997 * arg2) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg2) + (1000 * ext_call.return_data[50 len 14]):
                return 0
            if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'SafeMath: division by zero', 0
            return (997 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[32])))
    if not arg2:
        if not ext_call.return_data[18 len 14]:
            return 0
        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * ext_call.return_data[18 len 14]:
            return 0
        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
    if 997 * arg2 / arg2 != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 997 * arg2:
        if not ext_call.return_data[18 len 14]:
            if 997 * arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg2:
                return 0
            if not 997 * arg2:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 997 * arg2)
        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (997 * arg2) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg2) + (1000 * ext_call.return_data[18 len 14]):
            return 0
        if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[0])))
    if 997 * ext_call.return_data[50 len 14] * arg2 / 997 * arg2 != ext_call.return_data[50 len 14]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[18 len 14]:
        if 997 * arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 997 * arg2:
            return 0
        if not 997 * arg2:
            revert with 0, 'SafeMath: division by zero', 0
        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 997 * arg2)
    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
        revert with 0, 'SafeMath: multiplication overflow'
    if (997 * arg2) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
        revert with 0, 'SafeMath: addition overflow'
    if not (997 * arg2) + (1000 * ext_call.return_data[18 len 14]):
        return 0
    if not (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[0])):
        revert with 0, 'SafeMath: division by zero', 0
    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * arg2) + (1000 * Mask(112, 0, ext_call.return_data[0])))
}



}
