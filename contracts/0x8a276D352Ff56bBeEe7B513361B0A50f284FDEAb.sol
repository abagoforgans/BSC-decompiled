contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address uniFactoryAddress;
address sushiFactoryAddress;
address uniRouterAddress;
address sushiRouterAddress;
uint128 stor4; offset 160
address wEthAddress;
uint256 stor5;

function sushiFactory() {
    return sushiFactoryAddress
}

function sushiRouter() {
    return sushiRouterAddress
}

function uniFactory() {
    return uniFactoryAddress
}

function uniRouter() {
    return uniRouterAddress
}

function wEth() {
    return wEthAddress
}

function _fallback() payable {
    revert
}

function sub_91784a6e(?) {
    require calldata.size - 4 >= 96
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor4 = Mask(96, 0, arg3)
    if not arg3:
        require ext_code.size(uniFactoryAddress)
        staticcall uniFactoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), wEthAddress
    else:
        require ext_code.size(sushiFactoryAddress)
        staticcall sushiFactoryAddress.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), wEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if wEthAddress >= arg1:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg2, 0, address(this.address), 128, 1, 0
    else:
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg2, this.address, 128, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_1119ff77(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sushiFactoryAddress)
    staticcall sushiFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniFactoryAddress)
    staticcall uniFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    if not address(ext_call.return_data[0]):
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if wEthAddress >= arg1:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if not arg2:
            if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 0, 'ds-math-add-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * arg2 / 997 != arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                        return ((0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1)
                else:
                    if ext_call.return_data[50 len 14]:
                        if 997 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                            return ((997 * arg2 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1)
        else:
            if arg2:
                if ext_call.return_data[50 len 14] * arg2 / arg2 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] * arg2 / 1000 != ext_call.return_data[50 len 14] * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    if (1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[207 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if 997 * arg2 / 997 != arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                            return ((0 / (1000 * ext_call.return_data[18 len 14]) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1)
                    else:
                        if ext_call.return_data[50 len 14]:
                            if 997 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                                return ((997 * arg2 * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1)
    else:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if not arg2:
            if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / 997 != ext_call.return_data[50 len 14] - arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 0, 'ds-math-add-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * arg2 / 997 != arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                        return ((0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1)
                else:
                    if ext_call.return_data[18 len 14]:
                        if 997 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                            return ((997 * arg2 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1)
        else:
            if arg2:
                if ext_call.return_data[18 len 14] * arg2 / arg2 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] * arg2 / 1000 != ext_call.return_data[18 len 14] * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / 997 != ext_call.return_data[50 len 14] - arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    if (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[207 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if 997 * arg2 / 997 != arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                            return ((0 / (1000 * ext_call.return_data[50 len 14]) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1)
                    else:
                        if ext_call.return_data[18 len 14]:
                            if 997 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                                return ((997 * arg2 * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1)
    revert
}

function sub_a4b2388f(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sushiFactoryAddress)
    staticcall sushiFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniFactoryAddress)
    staticcall uniFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    if not address(ext_call.return_data[0]):
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if wEthAddress >= arg1:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if not arg2:
            if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    revert with 0, 'ds-math-add-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * arg2 / 997 != arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                        return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 
                               (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                else:
                    if ext_call.return_data[50 len 14]:
                        if 997 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                            return (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 
                                   (997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
        else:
            if arg2:
                if ext_call.return_data[50 len 14] * arg2 / arg2 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] * arg2 / 1000 != ext_call.return_data[50 len 14] * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[18 len 14] - arg2 > ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[18 len 14]) - (997 * arg2) / 997 != ext_call.return_data[18 len 14] - arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                    if (1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2)) + 1 < 1000 * ext_call.return_data[50 len 14] * arg2 / (997 * ext_call.return_data[18 len 14]) - (997 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[207 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if 997 * arg2 / 997 != arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                            return (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 
                                   (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
                    else:
                        if ext_call.return_data[50 len 14]:
                            if 997 * arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if (1000 * ext_call.return_data[18 len 14]) + (997 * arg2):
                                return (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1, 
                                       (997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) - 1
    else:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if not arg2:
            if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-sub-underflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / 997 != ext_call.return_data[50 len 14] - arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    revert with 0, 'ds-math-add-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * arg2 / 997 != arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                        return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 
                               (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                else:
                    if ext_call.return_data[18 len 14]:
                        if 997 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg2:
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                            return (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 
                                   (997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2)) + -(0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
        else:
            if arg2:
                if ext_call.return_data[18 len 14] * arg2 / arg2 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] * arg2 / 1000 != ext_call.return_data[18 len 14] * arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[50 len 14] - arg2 > ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-sub-underflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg2) / 997 != ext_call.return_data[50 len 14] - arg2:
                    revert with 0, 'ds-math-mul-overflow'
                if (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                    if (1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2)) + 1 < 1000 * ext_call.return_data[18 len 14] * arg2 / (997 * ext_call.return_data[50 len 14]) - (997 * arg2):
                        revert with 0, 'ds-math-add-overflow'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if arg2 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0x44556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[207 len 21]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if 997 * arg2 / 997 != arg2:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                            return (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 
                                   (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
                    else:
                        if ext_call.return_data[18 len 14]:
                            if 997 * arg2 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * arg2:
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if (1000 * ext_call.return_data[50 len 14]) + (997 * arg2):
                                return (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1, 
                                       (997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg2)) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) - 1
    revert
}



}
