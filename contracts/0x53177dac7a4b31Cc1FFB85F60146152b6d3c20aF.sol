contract main {




// =====================  Runtime code  =====================


const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address sub_05fd3181Address;

function sub_05fd3181(?) payable {
    return sub_05fd3181Address
}

function _fallback() payable {
    revert
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg1 == arg2:
        mem[288 len 0] = None
        return arg3, Array(len=2, data=mem[288 len 64])
    s = 192
    idx = 2
    while idx - 1:
        mem[s + 32] = 4188
        s = s + 32
        idx = idx - 1
        continue 
    if not Mask(1, 48, arg5):
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
    if bool(Mask(1, 49, arg5)) != bool(bool(arg5)):
        ...  # unusual jump ('remco jump', 2355), couldn't decompile, sorry
    ...  # unusual jump ('remco jump', 1311), couldn't decompile, sorry
}

function sub_589af317(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_05fd3181Address)
    staticcall sub_05fd3181Address.0xd81f84b7 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_05fd3181Address)
    staticcall sub_05fd3181Address.0xe4b50cb8 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg1:
        if not arg2:
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                return 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getDummy() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg3:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                        return 0
                    if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                if 997 * arg3 / arg3 != 997:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not 997 * arg3:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                    return 0
                if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
            if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                if not arg3:
                    return 0
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 997 * arg3:
                    if 0 / 997 * arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    return 0
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / 997 * arg3)
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getDummy() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 997 * arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    if not arg3:
                        return 0
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 997 * arg3:
                        if 0 / 997 * arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 997 * arg3)
            else:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getDummy() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 997 * arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                if address(ext_call.return_data[0]) != arg2:
                    if not arg3:
                        return 0
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 997 * arg3:
                        if 0 / 997 * arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 997 * arg3)
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            if not arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getDummy() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 997 * arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    if not arg3:
                        return 0
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 997 * arg3:
                        if 0 / 997 * arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 997 * arg3)
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDummy() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 997 * arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        if not arg3:
                            return 0
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 997 * arg3:
                            if 0 / 997 * arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                else:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDummy() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 997 * arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if address(ext_call.return_data[0]) != arg2:
                        if not arg3:
                            return 0
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 997 * arg3:
                            if 0 / 997 * arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
        else:
            if not arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg1 == address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getDummy() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            return 0
                        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 997 * arg3:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    if not arg3:
                        return 0
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 997 * arg3:
                        if 0 / 997 * arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 997 * arg3)
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg1 == address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDummy() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 997 * arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                        if not arg3:
                            return 0
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 997 * arg3:
                            if 0 / 997 * arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                else:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg1 == address(ext_call.return_data[0]):
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDummy() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if Mask(112, 0, ext_call.return_data[32]) > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                return 0
                            if not 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 997 * arg3:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                        if 997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / 997 * arg3)
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[0])))
                    if address(ext_call.return_data[0]) != arg2:
                        if not arg3:
                            return 0
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 997 * arg3:
                            if 0 / 997 * arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getDummy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if Mask(112, 0, ext_call.return_data[0]) > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3:
        if not Mask(112, 0, ext_call.return_data[32]):
            return 0
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * Mask(112, 0, ext_call.return_data[32]):
            return 0
        if not 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
    if 997 * arg3 / arg3 != 997:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 997 * arg3:
        if not Mask(112, 0, ext_call.return_data[32]):
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                return 0
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 997 * arg3)
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            return 0
        if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 'SafeMath: division by zero'
        return (0 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])))
    if 997 * Mask(112, 0, ext_call.return_data[0]) * arg3 / 997 * arg3 != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not Mask(112, 0, ext_call.return_data[32]):
        if 997 * arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 997 * arg3:
            return 0
        if not 997 * arg3:
            revert with 0, 'SafeMath: division by zero'
        return (997 * Mask(112, 0, ext_call.return_data[0]) * arg3 / 997 * arg3)
    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: addition overflow'
    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])):
        return 0
    if not (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])):
        revert with 0, 'SafeMath: division by zero'
    return (997 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * Mask(112, 0, ext_call.return_data[32])))
}

function sub_dd2c2d1f(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_05fd3181Address)
    staticcall sub_05fd3181Address.0xd81f84b7 with:
            gas gas_remaining wei
           args 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_05fd3181Address)
    staticcall sub_05fd3181Address.0xe4b50cb8 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg1:
        if not arg2:
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                return 0
            if not address(ext_call.return_data[0]):
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        return 0
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        return 0
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    return 0
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        return 0
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        return 0
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    return 0
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                if not arg3:
                    if not ext_call.return_data[0]:
                        return 0
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * ext_call.return_data[0]:
                        return 0
                    if not 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 1000 * ext_call.return_data[0])
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    return 0
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                if not arg3:
                    if not ext_call.return_data[0]:
                        return 0
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * ext_call.return_data[0]:
                        return 0
                    if not 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / 1000 * ext_call.return_data[0])
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        return 0
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    return 0
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
        else:
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
            else:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                if not address(ext_call.return_data[0]):
                    if not arg2:
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not arg2:
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2:
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
    else:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            if not arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                else:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    if not address(ext_call.return_data[0]):
                        if not arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
        else:
            if not arg2:
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    return 0
                if not arg1:
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            return 0
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            return 0
                        if not 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        return 0
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    if not arg3:
                        if not ext_call.return_data[0]:
                            return 0
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 1000 * ext_call.return_data[0]:
                            return 0
                        if not 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / 1000 * ext_call.return_data[0])
                    if 997 * arg3 / arg3 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * arg3:
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[0]:
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            return 0
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        return 0
                    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
            else:
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    if not arg1:
                        if not address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if not address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                else:
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        return 0
                    if not arg1:
                        if not arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
                        if not arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                            if not arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    return 0
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    return 0
                                if not 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                            if 997 * arg3 / arg3 != 997:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not 997 * arg3:
                                if not eth.balance(ext_call.return_data[0]):
                                    if 997 * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 997 * arg3:
                                        return 0
                                    if not 997 * arg3:
                                        revert with 0, 'SafeMath: division by zero'
                                    return (0 / 997 * arg3)
                                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    return 0
                                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                return 0
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                return 0
                            if not 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * eth.balance(ext_call.return_data[0]))
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not eth.balance(ext_call.return_data[0]):
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                return 0
                            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not eth.balance(ext_call.return_data[0]):
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
                        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            return 0
                        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])))
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2:
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
                        if not arg3:
                            if not ext_call.return_data[0]:
                                return 0
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 1000 * ext_call.return_data[0]:
                                return 0
                            if not 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / 1000 * ext_call.return_data[0])
                        if 997 * arg3 / arg3 != 997:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not 997 * arg3:
                            if not ext_call.return_data[0]:
                                if 997 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 997 * arg3:
                                    return 0
                                if not 997 * arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / 997 * arg3)
                            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                return 0
                            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[0]:
                            if 997 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 997 * arg3:
                                return 0
                            if not 997 * arg3:
                                revert with 0, 'SafeMath: division by zero'
                            return (997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3)
                        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            return 0
                        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        return (997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if not ext_call.return_data[0]:
            return 0
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * ext_call.return_data[0]:
            return 0
        if not 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 1000 * ext_call.return_data[0])
    if 997 * arg3 / arg3 != 997:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 997 * arg3:
        if not ext_call.return_data[0]:
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                return 0
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            return (0 / 997 * arg3)
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            return 0
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / (997 * arg3) + (1000 * ext_call.return_data[0]))
    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        if 997 * arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 997 * arg3:
            return 0
        if not 997 * arg3:
            revert with 0, 'SafeMath: division by zero'
        return (997 * ext_call.return_data[0] * arg3 / 997 * arg3)
    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
        return 0
    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]))
}



}
