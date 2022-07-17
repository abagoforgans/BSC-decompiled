contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c3a7fb7(?)
#  - sub_9c5dce1b(?)
#  - sub_c72898a1(?)
#
const getChainId = chainid


address owner;
address wethAddress;
address chefAddress;
address baseTokenAddress;
address swapFactoryAddress;
address sub_3faab59cAddress;

function chef() payable {
    return chefAddress
}

function sub_3faab59c(?) payable {
    return sub_3faab59cAddress
}

function weth() payable {
    return wethAddress
}

function swapFactory() payable {
    return swapFactoryAddress
}

function owner() payable {
    return owner
}

function baseToken() payable {
    return baseTokenAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    emit OwnerChanged(owner, arg1);
    owner = arg1
}

function getTokenDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 18
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: FORBIDDEN'
    chefAddress = arg1
    baseTokenAddress = arg2
    swapFactoryAddress = arg3
    sub_3faab59cAddress = arg4
    require ext_code.size(arg1)
    staticcall arg1.0x3fc8cef3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wethAddress = ext_call.return_data[12 len 20]
}

function getTokenSymbol(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if 56 == chainid:
            return '', 0
        if 97 == chainid:
            return '', 0
        if 128 == chainid:
            return '', 0
        if 256 == chainid:
            return '', 0
        if chainid != 137:
            if chainid != 80001:
                return '', 0
        return '', 0
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _10 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _10
    require _6 + _10 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_10)] = mem[_6 + 128 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[ceil32(return_data.size) + _10 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _10
    mem[mem[64] + 64 len ceil32(_10)] = mem[ceil32(return_data.size) + 128 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[mem[64] + _10 + 64] = 0
    return Array(len=_10, data=mem[mem[64] + 64 len ceil32(_10)])
}

function sub_7929e1a3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if baseTokenAddress == address(arg2):
        return arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), baseTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    if not address(arg2):
        if not baseTokenAddress:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(arg2):
                if Mask(112, 0, ext_call.return_data[0]):
                    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
            else:
                if not baseTokenAddress:
                    if not address(arg2):
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 18 > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 18 >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18))
                else:
                    require ext_code.size(baseTokenAddress)
                    staticcall baseTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(arg2):
                        if ext_call.return_data[0] > 18:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0)
        else:
            require ext_code.size(baseTokenAddress)
            staticcall baseTokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(arg2):
                if 18 > ext_call.return_data[0]:
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if 18 >= ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18):
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18))
            else:
                if not baseTokenAddress:
                    if not address(arg2):
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 18 > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 18 >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18))
                else:
                    require ext_code.size(baseTokenAddress)
                    staticcall baseTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(arg2):
                        if ext_call.return_data[0] > 18:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0)
    else:
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not baseTokenAddress:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(arg2):
                if ext_call.return_data[0] > 18:
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if ext_call.return_data[0] >= 18:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18):
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18))
            else:
                if not baseTokenAddress:
                    if not address(arg2):
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 18 > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 18 >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18))
                else:
                    require ext_code.size(baseTokenAddress)
                    staticcall baseTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(arg2):
                        if ext_call.return_data[0] > 18:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0)
        else:
            require ext_code.size(baseTokenAddress)
            staticcall baseTokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(arg2):
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    if Mask(112, 0, ext_call.return_data[0]):
                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) * 10^0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * 10^0:
                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^0)
            else:
                if not baseTokenAddress:
                    if not address(arg2):
                        if Mask(112, 0, ext_call.return_data[32]):
                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 18 > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 18 >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18))
                else:
                    require ext_code.size(baseTokenAddress)
                    staticcall baseTokenAddress.0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(arg2):
                        if ext_call.return_data[0] > 18:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18))
                    else:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if ext_call.return_data[0] >= ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0)
    revert
}

function sub_2e223df6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(chefAddress)
    staticcall chefAddress.0xd5d0afe7 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(chefAddress)
    staticcall chefAddress.swapTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if baseTokenAddress == address(arg1):
            return ext_call.return_data[0], ext_call.return_data[0]
        require ext_code.size(swapFactoryAddress)
        staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), baseTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return ext_call.return_data[0], 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return ext_call.return_data[0], 0
        if not ext_call.return_data[50 len 14]:
            return ext_call.return_data[0], 0
        if not address(arg1):
            if not baseTokenAddress:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(arg1):
                    if Mask(112, 0, ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                else:
                    if not baseTokenAddress:
                        if not address(arg1):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(arg1):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
            else:
                require ext_code.size(baseTokenAddress)
                staticcall baseTokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(arg1):
                    if 18 > ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 18 >= ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18)
                else:
                    if not baseTokenAddress:
                        if not address(arg1):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(arg1):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
        else:
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not baseTokenAddress:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(arg1):
                    if ext_call.return_data[0] > 18:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] >= 18:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18)
                else:
                    if not baseTokenAddress:
                        if not address(arg1):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(arg1):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
            else:
                require ext_code.size(baseTokenAddress)
                staticcall baseTokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(arg1):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^0 / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^0:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^0
                else:
                    if not baseTokenAddress:
                        if not address(arg1):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(arg1):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
    else:
        require ext_code.size(chefAddress)
        staticcall chefAddress.swapTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if baseTokenAddress == ext_call.return_data[12 len 20]:
            return ext_call.return_data[0], ext_call.return_data[0]
        require ext_code.size(swapFactoryAddress)
        staticcall swapFactoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), baseTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return ext_call.return_data[0], 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 0 == ext_call.return_data[18 len 14]:
            return ext_call.return_data[0], 0
        if not ext_call.return_data[50 len 14]:
            return ext_call.return_data[0], 0
        if not address(ext_call.return_data[0]):
            if not baseTokenAddress:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[0]):
                        return ext_call.return_data[0], 
                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                else:
                    if not baseTokenAddress:
                        if not address(ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
            else:
                require ext_code.size(baseTokenAddress)
                staticcall baseTokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if 18 > ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 18 >= ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18)
                else:
                    if not baseTokenAddress:
                        if not address(ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not baseTokenAddress:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[0] > 18:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] >= 18:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18)
                else:
                    if not baseTokenAddress:
                        if not address(ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
            else:
                require ext_code.size(baseTokenAddress)
                staticcall baseTokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if Mask(112, 0, ext_call.return_data[0]):
                            return ext_call.return_data[0], 
                                   ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) * 10^0 / Mask(112, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * 10^0:
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^0
                else:
                    if not baseTokenAddress:
                        if not address(ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]):
                                return ext_call.return_data[0], 
                                       ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 18 > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if 18 >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(ext_call.return_data[0] - 18)
                    else:
                        require ext_code.size(baseTokenAddress)
                        staticcall baseTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[0]):
                            if ext_call.return_data[0] > 18:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^(ext_call.return_data[0] - 18) / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= 18:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^(-ext_call.return_data[0] + 18)
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if Mask(112, 0, ext_call.return_data[32]):
                                    return ext_call.return_data[0], 
                                           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * 10^0 / Mask(112, 0, ext_call.return_data[32])
                            else:
                                if ext_call.return_data[0] >= ext_call.return_data[0]:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) * 10^0:
                                        return ext_call.return_data[0], 
                                               ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^0
    revert
}



}
