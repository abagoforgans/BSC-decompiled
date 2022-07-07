contract main {




// =====================  Runtime code  =====================


address sub_ead88dbcAddress;
address sub_d5bfbe4cAddress;
address WBNBAddress;
address stor3;

function WBNB() {
    return WBNBAddress
}

function sub_d5bfbe4c(?) {
    return sub_d5bfbe4cAddress
}

function sub_ead88dbc(?) {
    return sub_ead88dbcAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor3)
}

function sub_6f2cbafa(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d5bfbe4cAddress != ext_call.return_data[12 len 20]:
        revert with 0, 'not v2'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if WBNBAddress == address(ext_call.return_data[0]):
        revert with 0, 'no wbnb'
    if WBNBAddress == ext_call.return_data[12 len 20]:
        revert with 0, 'no wbnb'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_d5bfbe4cAddress)
    staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), WBNBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d5bfbe4cAddress)
    staticcall sub_d5bfbe4cAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), WBNBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, '0x'
    if not ext_call.return_data[12 len 20]:
        revert with 0, '0x'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                    mem[205 len 23]
    if WBNBAddress != address(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if 9975 * msg.value / 9975 != msg.value:
            revert with 0, 'ds-math-mul-overflow'
        if WBNBAddress == address(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[205 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            41,
                                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[205 len 23]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                    return address(ext_call.return_data[0]), 
                                           ext_call.return_data[32 len 64],
                                           address(ext_call.return_data[0]),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                           4
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               4
                    else:
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               4
                                else:
                                    if ext_call.return_data[18 len 14]:
                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   4
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * msg.value:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[205 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               4
                                else:
                                    if ext_call.return_data[18 len 14]:
                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   4
                        else:
                            if Mask(112, 0, ext_call.return_data[32]):
                                if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    41,
                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[205 len 23]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[18 len 14]:
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   4
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                                return address(ext_call.return_data[0]), 
                                                       ext_call.return_data[32 len 64],
                                                       address(ext_call.return_data[0]),
                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                       9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                       9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                       4
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[205 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            41,
                                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[205 len 23]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                    return address(ext_call.return_data[0]), 
                                           ext_call.return_data[32 len 64],
                                           address(ext_call.return_data[0]),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                           3
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               3
                    else:
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               3
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   3
            else:
                if Mask(112, 0, ext_call.return_data[0]):
                    if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * msg.value:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[205 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                               3
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   3
                        else:
                            if Mask(112, 0, ext_call.return_data[32]):
                                if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    41,
                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[205 len 23]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[50 len 14]:
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                   9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                   3
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))):
                                                return address(ext_call.return_data[0]), 
                                                       ext_call.return_data[32 len 64],
                                                       address(ext_call.return_data[0]),
                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value),
                                                       9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)),
                                                       9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * msg.value))),
                                                       3
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if 9975 * msg.value / 9975 != msg.value:
            revert with 0, 'ds-math-mul-overflow'
        if WBNBAddress != address(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[32]):
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[205 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            41,
                                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[205 len 23]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                    return address(ext_call.return_data[0]), 
                                           ext_call.return_data[32 len 64],
                                           address(ext_call.return_data[0]),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                           2
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               2
                    else:
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               2
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   2
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * msg.value:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[205 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[50 len 14]:
                                    if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               2
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   2
                        else:
                            if Mask(112, 0, ext_call.return_data[32]):
                                if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    41,
                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[205 len 23]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[50 len 14]:
                                        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   2
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[18 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (10000 * ext_call.return_data[18 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                                return address(ext_call.return_data[0]), 
                                                       ext_call.return_data[32 len 64],
                                                       address(ext_call.return_data[0]),
                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                       9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                       9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                       2
        else:
            if not Mask(112, 0, ext_call.return_data[32]):
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                    if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[205 len 23]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[202 len 26]
                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                            if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            41,
                                            0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                            mem[205 len 23]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[202 len 26]
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                    return address(ext_call.return_data[0]), 
                                           ext_call.return_data[32 len 64],
                                           address(ext_call.return_data[0]),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                           0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                           1
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               1
                    else:
                        if Mask(112, 0, ext_call.return_data[32]):
                            if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               1
                                else:
                                    if ext_call.return_data[18 len 14]:
                                        if 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   1
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * msg.value:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                        if 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[205 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[202 len 26]
                        if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) / 9975 != 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                if 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                41,
                                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                mem[205 len 23]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[202 len 26]
                                if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    revert with 0, 'ds-math-mul-overflow'
                                if not ext_call.return_data[18 len 14]:
                                    if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                        return address(ext_call.return_data[0]), 
                                               ext_call.return_data[32 len 64],
                                               address(ext_call.return_data[0]),
                                               9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                               0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                               1
                                else:
                                    if ext_call.return_data[18 len 14]:
                                        if 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   1
                        else:
                            if Mask(112, 0, ext_call.return_data[32]):
                                if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                    if 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    41,
                                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                                    mem[205 len 23]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[202 len 26]
                                    if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) / 9975 != 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not ext_call.return_data[18 len 14]:
                                        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                            return address(ext_call.return_data[0]), 
                                                   ext_call.return_data[32 len 64],
                                                   address(ext_call.return_data[0]),
                                                   9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                   9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                   0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                   1
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))) < 10000 * ext_call.return_data[50 len 14]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if (10000 * ext_call.return_data[50 len 14]) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))):
                                                return address(ext_call.return_data[0]), 
                                                       ext_call.return_data[32 len 64],
                                                       address(ext_call.return_data[0]),
                                                       9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value),
                                                       9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)),
                                                       9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value)) * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * 9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value) * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * 9975 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * msg.value))),
                                                       1
    revert
}

function sub_dd9a05be(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x5446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    mem[96] = 2
    require 0 < ('cd', 36).length
    mem[128] = address(('cd', 36)[0])
    require 1 < ('cd', 36).length
    mem[160] = address(('cd', 36)[1])
    require 0 < ('cd', 4).length
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[224] = msg.value
    idx = 0
    while idx < 1:
        require idx < 2
        _2873 = mem[(32 * idx) + 128]
        require idx + 1 < 2
        _2882 = mem[(32 * idx + 1) + 128]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[391 len 29]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(('cd', 4)[0]))
            staticcall address(('cd', 4)[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 41, 0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[397 len 23]
            if address(_2873) == address(_2873):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require ext_code.size(address(('cd', 4)[0]))
            staticcall address(('cd', 4)[0]).getReserves() with:
                    gas gas_remaining wei
            mem[288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < 2
            if mem[(32 * idx) + 224] <= 0:
                revert with 0, 32, 41, 0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[397 len 23]
            if address(_2882) == address(_2873):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + 224])
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[394 len 26]
                if 9975 * mem[(32 * idx) + 224] / 9975 != mem[(32 * idx) + 224]:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[0]):
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                else:
                    require Mask(112, 0, ext_call.return_data[0])
                    if 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + 224]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
                    require idx + 1 < 2
                    mem[(32 * idx + 1) + 224] = 9975 * mem[(32 * idx) + 224] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + 224])
        idx = idx + 1
        continue 
    require ext_code.size(WBNBAddress)
    call WBNBAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 4).length
    require 1 < ('cd', 4).length
    if uint64(('cd', 36)[0]) << 96 != WBNBAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    mem[292] = address(('cd', 4)[0])
    mem[324] = msg.value
    require ext_code.size(WBNBAddress)
    call WBNBAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 4)[0]), msg.value
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    idx = 0
    while idx < 1:
        require idx < mem[96]
        require idx + 1 < mem[96]
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[192]
            _5755 = mem[(32 * idx + 1) + 224]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                if idx < mem[96] - 2:
                    _5807 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5807 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5807 + 36] = 0
                    mem[_5807 + 68] = _5755
                    mem[_5807 + 100] = address(('cd', 4)[0])
                    mem[_5807 + 132] = 128
                    mem[_5807 + 164] = mem[_5807]
                    s = 0
                    while s < mem[_5807]:
                        mem[s + _5807 + 196] = mem[s + _5807 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5807] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5755, address(('cd', 4)[0]), 128, mem[_5807 + 164 len mem[_5807] + 32]
                    else:
                        mem[floor32(mem[_5807]) + _5807 + 196] = mem[floor32(mem[_5807]) + _5807 + -(mem[_5807] % 32) + 228 len mem[_5807] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5755, address(('cd', 4)[0]), 128, mem[_5807], mem[_5807 + 196 len floor32(mem[_5807]) + 32]
                else:
                    _5811 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5811 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5811 + 36] = 0
                    mem[_5811 + 68] = _5755
                    mem[_5811 + 100] = address(('cd', 4)[1])
                    mem[_5811 + 132] = 128
                    mem[_5811 + 164] = mem[_5811]
                    s = 0
                    while s < mem[_5811]:
                        mem[s + _5811 + 196] = mem[s + _5811 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5811] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5755, address(('cd', 4)[1]), 128, mem[_5811 + 164 len mem[_5811] + 32]
                    else:
                        mem[floor32(mem[_5811]) + _5811 + 196] = mem[floor32(mem[_5811]) + _5811 + -(mem[_5811] % 32) + 228 len mem[_5811] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5755, address(('cd', 4)[1]), 128, mem[_5811], mem[_5811 + 196 len floor32(mem[_5811]) + 32]
            else:
                if idx < mem[96] - 2:
                    _5815 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5815 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5815 + 36] = _5755
                    mem[_5815 + 68] = 0
                    mem[_5815 + 100] = address(('cd', 4)[0])
                    mem[_5815 + 132] = 128
                    mem[_5815 + 164] = mem[_5815]
                    s = 0
                    while s < mem[_5815]:
                        mem[s + _5815 + 196] = mem[s + _5815 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5815] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5755, 0, address(('cd', 4)[0]), 128, mem[_5815 + 164 len mem[_5815] + 32]
                    else:
                        mem[floor32(mem[_5815]) + _5815 + 196] = mem[floor32(mem[_5815]) + _5815 + -(mem[_5815] % 32) + 228 len mem[_5815] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5755, 0, address(('cd', 4)[0]), 128, mem[_5815], mem[_5815 + 196 len floor32(mem[_5815]) + 32]
                else:
                    _5819 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5819 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5819 + 36] = _5755
                    mem[_5819 + 68] = 0
                    mem[_5819 + 100] = address(('cd', 4)[1])
                    mem[_5819 + 132] = 128
                    mem[_5819 + 164] = mem[_5819]
                    s = 0
                    while s < mem[_5819]:
                        mem[s + _5819 + 196] = mem[s + _5819 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5819] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5755, 0, address(('cd', 4)[1]), 128, mem[_5819 + 164 len mem[_5819] + 32]
                    else:
                        mem[floor32(mem[_5819]) + _5819 + 196] = mem[floor32(mem[_5819]) + _5819 + -(mem[_5819] % 32) + 228 len mem[_5819] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5755, 0, address(('cd', 4)[1]), 128, mem[_5819], mem[_5819 + 196 len floor32(mem[_5819]) + 32]
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
            require idx + 1 < mem[192]
            _5756 = mem[(32 * idx + 1) + 224]
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                if idx < mem[96] - 2:
                    _5823 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5823 + 36] = 0
                    mem[_5823 + 68] = _5756
                    mem[_5823 + 100] = address(('cd', 4)[0])
                    mem[_5823 + 132] = 128
                    mem[_5823 + 164] = mem[_5823]
                    s = 0
                    while s < mem[_5823]:
                        mem[s + _5823 + 196] = mem[s + _5823 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5823] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5756, address(('cd', 4)[0]), 128, mem[_5823 + 164 len mem[_5823] + 32]
                    else:
                        mem[floor32(mem[_5823]) + _5823 + 196] = mem[floor32(mem[_5823]) + _5823 + -(mem[_5823] % 32) + 228 len mem[_5823] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5756, address(('cd', 4)[0]), 128, mem[_5823], mem[_5823 + 196 len floor32(mem[_5823]) + 32]
                else:
                    _5827 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5827 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5827 + 36] = 0
                    mem[_5827 + 68] = _5756
                    mem[_5827 + 100] = address(('cd', 4)[1])
                    mem[_5827 + 132] = 128
                    mem[_5827 + 164] = mem[_5827]
                    s = 0
                    while s < mem[_5827]:
                        mem[s + _5827 + 196] = mem[s + _5827 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5827] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5756, address(('cd', 4)[1]), 128, mem[_5827 + 164 len mem[_5827] + 32]
                    else:
                        mem[floor32(mem[_5827]) + _5827 + 196] = mem[floor32(mem[_5827]) + _5827 + -(mem[_5827] % 32) + 228 len mem[_5827] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _5756, address(('cd', 4)[1]), 128, mem[_5827], mem[_5827 + 196 len floor32(mem[_5827]) + 32]
            else:
                if idx < mem[96] - 2:
                    _5831 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5831 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5831 + 36] = _5756
                    mem[_5831 + 68] = 0
                    mem[_5831 + 100] = address(('cd', 4)[0])
                    mem[_5831 + 132] = 128
                    mem[_5831 + 164] = mem[_5831]
                    s = 0
                    while s < mem[_5831]:
                        mem[s + _5831 + 196] = mem[s + _5831 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5831] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5756, 0, address(('cd', 4)[0]), 128, mem[_5831 + 164 len mem[_5831] + 32]
                    else:
                        mem[floor32(mem[_5831]) + _5831 + 196] = mem[floor32(mem[_5831]) + _5831 + -(mem[_5831] % 32) + 228 len mem[_5831] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5756, 0, address(('cd', 4)[0]), 128, mem[_5831], mem[_5831 + 196 len floor32(mem[_5831]) + 32]
                else:
                    _5835 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_5835 + 36] = _5756
                    mem[_5835 + 68] = 0
                    mem[_5835 + 100] = address(('cd', 4)[1])
                    mem[_5835 + 132] = 128
                    mem[_5835 + 164] = mem[_5835]
                    s = 0
                    while s < mem[_5835]:
                        mem[s + _5835 + 196] = mem[s + _5835 + 32]
                        s = s + 32
                        continue 
                    if not mem[_5835] % 32:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5756, 0, address(('cd', 4)[1]), 128, mem[_5835 + 164 len mem[_5835] + 32]
                    else:
                        mem[floor32(mem[_5835]) + _5835 + 196] = mem[floor32(mem[_5835]) + _5835 + -(mem[_5835] % 32) + 228 len mem[_5835] % 32]
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5756, 0, address(('cd', 4)[1]), 128, mem[_5835], mem[_5835 + 196 len floor32(mem[_5835]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require 1 < mem[192]
    _5729 = mem[256]
    _5732 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 2 < ('cd', 36).length
    require 0 < mem[_5732]
    mem[_5732 + 32] = address(('cd', 36)[2])
    require 3 < ('cd', 36).length
    require 1 < mem[_5732]
    mem[_5732 + 64] = address(('cd', 36)[3])
    require 1 < ('cd', 4).length
    require 2 < ('cd', 4).length
    if mem[_5732] < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    _5770 = mem[_5732]
    require mem[_5732] <= test266151307()
    mem[_5732 + 96] = mem[_5732]
    mem[64] = _5732 + (32 * mem[_5732]) + 128
    if not _5770:
        require 0 < mem[_5732 + 96]
        mem[_5732 + 128] = _5729
        _8325 = mem[_5732]
        idx = 0
        while idx < _8325 - 1:
            require idx < mem[_5732]
            _8367 = mem[(32 * idx) + _5732 + 32]
            require idx + 1 < mem[_5732]
            _8397 = mem[(32 * idx + 1) + _5732 + 32]
            if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5732 + 44 len 20] < mem[(32 * idx + 1) + _5732 + 44 len 20]:
                if not mem[(32 * idx) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_5732 + 96]
                if mem[(32 * idx) + _5732 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8367) == address(_8367):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
            else:
                if not mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_5732 + 96]
                if mem[(32 * idx) + _5732 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8397) == address(_8367):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
            idx = idx + 1
            continue 
        _10805 = mem[_5732]
        idx = 0
        while idx < _10805 - 1:
            require idx < mem[_5732]
            require idx + 1 < mem[_5732]
            if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5732 + 44 len 20] < mem[(32 * idx + 1) + _5732 + 44 len 20]:
                if not mem[(32 * idx) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_5732 + 96]
                _10879 = mem[(32 * idx + 1) + _5732 + 128]
                if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx) + _5732 + 44 len 20]:
                    if idx < mem[_5732] - 2:
                        _10986 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10986 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10986 + 36] = 0
                        mem[_10986 + 68] = _10879
                        mem[_10986 + 100] = address(('cd', 4)[1])
                        mem[_10986 + 132] = 128
                        mem[_10986 + 164] = mem[_10986]
                        s = 0
                        while s < mem[_10986]:
                            mem[s + _10986 + 196] = mem[s + _10986 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10986] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10879, address(('cd', 4)[1]), 128, mem[_10986 + 164 len mem[_10986] + 32]
                        else:
                            mem[floor32(mem[_10986]) + _10986 + 196] = mem[floor32(mem[_10986]) + _10986 + -(mem[_10986] % 32) + 228 len mem[_10986] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10879, address(('cd', 4)[1]), 128, mem[_10986], mem[_10986 + 196 len floor32(mem[_10986]) + 32]
                    else:
                        _10990 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10990 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10990 + 36] = 0
                        mem[_10990 + 68] = _10879
                        mem[_10990 + 100] = address(('cd', 4)[2])
                        mem[_10990 + 132] = 128
                        mem[_10990 + 164] = mem[_10990]
                        s = 0
                        while s < mem[_10990]:
                            mem[s + _10990 + 196] = mem[s + _10990 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10990] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10879, address(('cd', 4)[2]), 128, mem[_10990 + 164 len mem[_10990] + 32]
                        else:
                            mem[floor32(mem[_10990]) + _10990 + 196] = mem[floor32(mem[_10990]) + _10990 + -(mem[_10990] % 32) + 228 len mem[_10990] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10879, address(('cd', 4)[2]), 128, mem[_10990], mem[_10990 + 196 len floor32(mem[_10990]) + 32]
                else:
                    if idx < mem[_5732] - 2:
                        _10994 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10994 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10994 + 36] = _10879
                        mem[_10994 + 68] = 0
                        mem[_10994 + 100] = address(('cd', 4)[1])
                        mem[_10994 + 132] = 128
                        mem[_10994 + 164] = mem[_10994]
                        s = 0
                        while s < mem[_10994]:
                            mem[s + _10994 + 196] = mem[s + _10994 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10994] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10879, 0, address(('cd', 4)[1]), 128, mem[_10994 + 164 len mem[_10994] + 32]
                        else:
                            mem[floor32(mem[_10994]) + _10994 + 196] = mem[floor32(mem[_10994]) + _10994 + -(mem[_10994] % 32) + 228 len mem[_10994] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10879, 0, address(('cd', 4)[1]), 128, mem[_10994], mem[_10994 + 196 len floor32(mem[_10994]) + 32]
                    else:
                        _10998 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10998 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10998 + 36] = _10879
                        mem[_10998 + 68] = 0
                        mem[_10998 + 100] = address(('cd', 4)[2])
                        mem[_10998 + 132] = 128
                        mem[_10998 + 164] = mem[_10998]
                        s = 0
                        while s < mem[_10998]:
                            mem[s + _10998 + 196] = mem[s + _10998 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10998] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10879, 0, address(('cd', 4)[2]), 128, mem[_10998 + 164 len mem[_10998] + 32]
                        else:
                            mem[floor32(mem[_10998]) + _10998 + 196] = mem[floor32(mem[_10998]) + _10998 + -(mem[_10998] % 32) + 228 len mem[_10998] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10879, 0, address(('cd', 4)[2]), 128, mem[_10998], mem[_10998 + 196 len floor32(mem[_10998]) + 32]
            else:
                if not mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_5732 + 96]
                _10880 = mem[(32 * idx + 1) + _5732 + 128]
                if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    if idx < mem[_5732] - 2:
                        _11002 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11002 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11002 + 36] = 0
                        mem[_11002 + 68] = _10880
                        mem[_11002 + 100] = address(('cd', 4)[1])
                        mem[_11002 + 132] = 128
                        mem[_11002 + 164] = mem[_11002]
                        s = 0
                        while s < mem[_11002]:
                            mem[s + _11002 + 196] = mem[s + _11002 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11002] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10880, address(('cd', 4)[1]), 128, mem[_11002 + 164 len mem[_11002] + 32]
                        else:
                            mem[floor32(mem[_11002]) + _11002 + 196] = mem[floor32(mem[_11002]) + _11002 + -(mem[_11002] % 32) + 228 len mem[_11002] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10880, address(('cd', 4)[1]), 128, mem[_11002], mem[_11002 + 196 len floor32(mem[_11002]) + 32]
                    else:
                        _11006 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11006 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11006 + 36] = 0
                        mem[_11006 + 68] = _10880
                        mem[_11006 + 100] = address(('cd', 4)[2])
                        mem[_11006 + 132] = 128
                        mem[_11006 + 164] = mem[_11006]
                        s = 0
                        while s < mem[_11006]:
                            mem[s + _11006 + 196] = mem[s + _11006 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11006] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10880, address(('cd', 4)[2]), 128, mem[_11006 + 164 len mem[_11006] + 32]
                        else:
                            mem[floor32(mem[_11006]) + _11006 + 196] = mem[floor32(mem[_11006]) + _11006 + -(mem[_11006] % 32) + 228 len mem[_11006] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10880, address(('cd', 4)[2]), 128, mem[_11006], mem[_11006 + 196 len floor32(mem[_11006]) + 32]
                else:
                    if idx < mem[_5732] - 2:
                        _11010 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11010 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11010 + 36] = _10880
                        mem[_11010 + 68] = 0
                        mem[_11010 + 100] = address(('cd', 4)[1])
                        mem[_11010 + 132] = 128
                        mem[_11010 + 164] = mem[_11010]
                        s = 0
                        while s < mem[_11010]:
                            mem[s + _11010 + 196] = mem[s + _11010 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11010] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10880, 0, address(('cd', 4)[1]), 128, mem[_11010 + 164 len mem[_11010] + 32]
                        else:
                            mem[floor32(mem[_11010]) + _11010 + 196] = mem[floor32(mem[_11010]) + _11010 + -(mem[_11010] % 32) + 228 len mem[_11010] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10880, 0, address(('cd', 4)[1]), 128, mem[_11010], mem[_11010 + 196 len floor32(mem[_11010]) + 32]
                    else:
                        _11014 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11014 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11014 + 36] = _10880
                        mem[_11014 + 68] = 0
                        mem[_11014 + 100] = address(('cd', 4)[2])
                        mem[_11014 + 132] = 128
                        mem[_11014 + 164] = mem[_11014]
                        s = 0
                        while s < mem[_11014]:
                            mem[s + _11014 + 196] = mem[s + _11014 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11014] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10880, 0, address(('cd', 4)[2]), 128, mem[_11014 + 164 len mem[_11014] + 32]
                        else:
                            mem[floor32(mem[_11014]) + _11014 + 196] = mem[floor32(mem[_11014]) + _11014 + -(mem[_11014] % 32) + 228 len mem[_11014] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10880, 0, address(('cd', 4)[2]), 128, mem[_11014], mem[_11014 + 196 len floor32(mem[_11014]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[_5732 + 96]
        _10827 = mem[_5732 + 160]
        _10833 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 4 < ('cd', 36).length
        require 0 < mem[_10833]
        mem[_10833 + 32] = address(('cd', 36)[4])
        require 5 < ('cd', 36).length
        require 1 < mem[_10833]
        mem[_10833 + 64] = address(('cd', 36)[5])
        require 2 < ('cd', 4).length
        if mem[_10833] < 2:
            revert with 0, 'PancakeLibrary: INVALID_PATH'
        _10901 = mem[_10833]
        require mem[_10833] <= test266151307()
        mem[_10833 + 96] = mem[_10833]
        mem[64] = _10833 + (32 * mem[_10833]) + 128
        if not _10901:
            require 0 < mem[_10833 + 96]
            mem[_10833 + 128] = _10827
            _12787 = mem[_10833]
            idx = 0
            while idx < _12787 - 1:
                require idx < mem[_10833]
                _12871 = mem[(32 * idx) + _10833 + 32]
                require idx + 1 < mem[_10833]
                _12931 = mem[(32 * idx + 1) + _10833 + 32]
                if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10833 + 44 len 20] < mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    if not mem[(32 * idx) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10833 + 96]
                    if mem[(32 * idx) + _10833 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12871) == address(_12871):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                else:
                    if not mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10833 + 96]
                    if mem[(32 * idx) + _10833 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12931) == address(_12871):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                idx = idx + 1
                continue 
            _14515 = mem[_10833]
            idx = 0
            while idx < _14515 - 1:
                require idx < mem[_10833]
                require idx + 1 < mem[_10833]
                if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10833 + 44 len 20] < mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    if not mem[(32 * idx) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10833 + 96]
                    _14687 = mem[(32 * idx + 1) + _10833 + 128]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx) + _10833 + 44 len 20]:
                        if idx < mem[_10833] - 2:
                            _14855 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14855 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14855 + 36] = 0
                            mem[_14855 + 68] = _14687
                            mem[_14855 + 100] = address(('cd', 4)[2])
                            mem[_14855 + 132] = 128
                            mem[_14855 + 164] = mem[_14855]
                            s = 0
                            while s < mem[_14855]:
                                mem[s + _14855 + 196] = mem[s + _14855 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14855] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14687, address(('cd', 4)[2]), 128, mem[_14855 + 164 len mem[_14855] + 32]
                            else:
                                mem[floor32(mem[_14855]) + _14855 + 196] = mem[floor32(mem[_14855]) + _14855 + -(mem[_14855] % 32) + 228 len mem[_14855] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14687, address(('cd', 4)[2]), 128, mem[_14855], mem[_14855 + 196 len floor32(mem[_14855]) + 32]
                        else:
                            _14859 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14859 + 36] = 0
                            mem[_14859 + 68] = _14687
                            mem[_14859 + 100] = address(cd[68])
                            mem[_14859 + 132] = 128
                            mem[_14859 + 164] = mem[_14859]
                            s = 0
                            while s < mem[_14859]:
                                mem[s + _14859 + 196] = mem[s + _14859 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14859] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14687, address(cd[68]), 128, mem[_14859 + 164 len mem[_14859] + 32]
                            else:
                                mem[floor32(mem[_14859]) + _14859 + 196] = mem[floor32(mem[_14859]) + _14859 + -(mem[_14859] % 32) + 228 len mem[_14859] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14687, address(cd[68]), 128, mem[_14859], mem[_14859 + 196 len floor32(mem[_14859]) + 32]
                    else:
                        if idx < mem[_10833] - 2:
                            _14863 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14863 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14863 + 36] = _14687
                            mem[_14863 + 68] = 0
                            mem[_14863 + 100] = address(('cd', 4)[2])
                            mem[_14863 + 132] = 128
                            mem[_14863 + 164] = mem[_14863]
                            s = 0
                            while s < mem[_14863]:
                                mem[s + _14863 + 196] = mem[s + _14863 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14863] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14687, 0, address(('cd', 4)[2]), 128, mem[_14863 + 164 len mem[_14863] + 32]
                            else:
                                mem[floor32(mem[_14863]) + _14863 + 196] = mem[floor32(mem[_14863]) + _14863 + -(mem[_14863] % 32) + 228 len mem[_14863] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14687, 0, address(('cd', 4)[2]), 128, mem[_14863], mem[_14863 + 196 len floor32(mem[_14863]) + 32]
                        else:
                            _14867 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14867 + 36] = _14687
                            mem[_14867 + 68] = 0
                            mem[_14867 + 100] = address(cd[68])
                            mem[_14867 + 132] = 128
                            mem[_14867 + 164] = mem[_14867]
                            s = 0
                            while s < mem[_14867]:
                                mem[s + _14867 + 196] = mem[s + _14867 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14867] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14687, 0, address(cd[68]), 128, mem[_14867 + 164 len mem[_14867] + 32]
                            else:
                                mem[floor32(mem[_14867]) + _14867 + 196] = mem[floor32(mem[_14867]) + _14867 + -(mem[_14867] % 32) + 228 len mem[_14867] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14687, 0, address(cd[68]), 128, mem[_14867], mem[_14867 + 196 len floor32(mem[_14867]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10833 + 96]
                    _14688 = mem[(32 * idx + 1) + _10833 + 128]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        if idx < mem[_10833] - 2:
                            _14871 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14871 + 36] = 0
                            mem[_14871 + 68] = _14688
                            mem[_14871 + 100] = address(('cd', 4)[2])
                            mem[_14871 + 132] = 128
                            mem[_14871 + 164] = mem[_14871]
                            s = 0
                            while s < mem[_14871]:
                                mem[s + _14871 + 196] = mem[s + _14871 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14871] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14688, address(('cd', 4)[2]), 128, mem[_14871 + 164 len mem[_14871] + 32]
                            else:
                                mem[floor32(mem[_14871]) + _14871 + 196] = mem[floor32(mem[_14871]) + _14871 + -(mem[_14871] % 32) + 228 len mem[_14871] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14688, address(('cd', 4)[2]), 128, mem[_14871], mem[_14871 + 196 len floor32(mem[_14871]) + 32]
                        else:
                            _14875 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14875 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14875 + 36] = 0
                            mem[_14875 + 68] = _14688
                            mem[_14875 + 100] = address(cd[68])
                            mem[_14875 + 132] = 128
                            mem[_14875 + 164] = mem[_14875]
                            s = 0
                            while s < mem[_14875]:
                                mem[s + _14875 + 196] = mem[s + _14875 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14875] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14688, address(cd[68]), 128, mem[_14875 + 164 len mem[_14875] + 32]
                            else:
                                mem[floor32(mem[_14875]) + _14875 + 196] = mem[floor32(mem[_14875]) + _14875 + -(mem[_14875] % 32) + 228 len mem[_14875] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14688, address(cd[68]), 128, mem[_14875], mem[_14875 + 196 len floor32(mem[_14875]) + 32]
                    else:
                        if idx < mem[_10833] - 2:
                            _14879 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14879 + 36] = _14688
                            mem[_14879 + 68] = 0
                            mem[_14879 + 100] = address(('cd', 4)[2])
                            mem[_14879 + 132] = 128
                            mem[_14879 + 164] = mem[_14879]
                            s = 0
                            while s < mem[_14879]:
                                mem[s + _14879 + 196] = mem[s + _14879 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14879] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14688, 0, address(('cd', 4)[2]), 128, mem[_14879 + 164 len mem[_14879] + 32]
                            else:
                                mem[floor32(mem[_14879]) + _14879 + 196] = mem[floor32(mem[_14879]) + _14879 + -(mem[_14879] % 32) + 228 len mem[_14879] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14688, 0, address(('cd', 4)[2]), 128, mem[_14879], mem[_14879 + 196 len floor32(mem[_14879]) + 32]
                        else:
                            _14883 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14883 + 36] = _14688
                            mem[_14883 + 68] = 0
                            mem[_14883 + 100] = address(cd[68])
                            mem[_14883 + 132] = 128
                            mem[_14883 + 164] = mem[_14883]
                            s = 0
                            while s < mem[_14883]:
                                mem[s + _14883 + 196] = mem[s + _14883 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14883] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14688, 0, address(cd[68]), 128, mem[_14883 + 164 len mem[_14883] + 32]
                            else:
                                mem[floor32(mem[_14883]) + _14883 + 196] = mem[floor32(mem[_14883]) + _14883 + -(mem[_14883] % 32) + 228 len mem[_14883] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14688, 0, address(cd[68]), 128, mem[_14883], mem[_14883 + 196 len floor32(mem[_14883]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[_10833 + 128 len 32 * _10901] = call.data[calldata.size len 32 * _10901]
            require 0 < mem[_10833 + 96]
            mem[_10833 + 128] = _10827
            _12788 = mem[_10833]
            idx = 0
            while idx < _12788 - 1:
                require idx < mem[_10833]
                _12873 = mem[(32 * idx) + _10833 + 32]
                require idx + 1 < mem[_10833]
                _12932 = mem[(32 * idx + 1) + _10833 + 32]
                if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10833 + 44 len 20] < mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    if not mem[(32 * idx) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10833 + 96]
                    if mem[(32 * idx) + _10833 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12873) == address(_12873):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                else:
                    if not mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10833 + 96]
                    if mem[(32 * idx) + _10833 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12932) == address(_12873):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10833 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10833 + 128] / 9975 != mem[(32 * idx) + _10833 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10833 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                            require idx + 1 < mem[_10833 + 96]
                            mem[(32 * idx + 1) + _10833 + 128] = 9975 * mem[(32 * idx) + _10833 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10833 + 128])
                idx = idx + 1
                continue 
            _14516 = mem[_10833]
            idx = 0
            while idx < _14516 - 1:
                require idx < mem[_10833]
                require idx + 1 < mem[_10833]
                if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10833 + 44 len 20] < mem[(32 * idx + 1) + _10833 + 44 len 20]:
                    if not mem[(32 * idx) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10833 + 96]
                    _14689 = mem[(32 * idx + 1) + _10833 + 128]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx) + _10833 + 44 len 20]:
                        if idx < mem[_10833] - 2:
                            _14887 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14887 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14887 + 36] = 0
                            mem[_14887 + 68] = _14689
                            mem[_14887 + 100] = address(('cd', 4)[2])
                            mem[_14887 + 132] = 128
                            mem[_14887 + 164] = mem[_14887]
                            s = 0
                            while s < mem[_14887]:
                                mem[s + _14887 + 196] = mem[s + _14887 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14887] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14689, address(('cd', 4)[2]), 128, mem[_14887 + 164 len mem[_14887] + 32]
                            else:
                                mem[floor32(mem[_14887]) + _14887 + 196] = mem[floor32(mem[_14887]) + _14887 + -(mem[_14887] % 32) + 228 len mem[_14887] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14689, address(('cd', 4)[2]), 128, mem[_14887], mem[_14887 + 196 len floor32(mem[_14887]) + 32]
                        else:
                            _14891 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14891 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14891 + 36] = 0
                            mem[_14891 + 68] = _14689
                            mem[_14891 + 100] = address(cd[68])
                            mem[_14891 + 132] = 128
                            mem[_14891 + 164] = mem[_14891]
                            s = 0
                            while s < mem[_14891]:
                                mem[s + _14891 + 196] = mem[s + _14891 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14891] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14689, address(cd[68]), 128, mem[_14891 + 164 len mem[_14891] + 32]
                            else:
                                mem[floor32(mem[_14891]) + _14891 + 196] = mem[floor32(mem[_14891]) + _14891 + -(mem[_14891] % 32) + 228 len mem[_14891] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14689, address(cd[68]), 128, mem[_14891], mem[_14891 + 196 len floor32(mem[_14891]) + 32]
                    else:
                        if idx < mem[_10833] - 2:
                            _14895 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14895 + 36] = _14689
                            mem[_14895 + 68] = 0
                            mem[_14895 + 100] = address(('cd', 4)[2])
                            mem[_14895 + 132] = 128
                            mem[_14895 + 164] = mem[_14895]
                            s = 0
                            while s < mem[_14895]:
                                mem[s + _14895 + 196] = mem[s + _14895 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14895] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14689, 0, address(('cd', 4)[2]), 128, mem[_14895 + 164 len mem[_14895] + 32]
                            else:
                                mem[floor32(mem[_14895]) + _14895 + 196] = mem[floor32(mem[_14895]) + _14895 + -(mem[_14895] % 32) + 228 len mem[_14895] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14689, 0, address(('cd', 4)[2]), 128, mem[_14895], mem[_14895 + 196 len floor32(mem[_14895]) + 32]
                        else:
                            _14899 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14899 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14899 + 36] = _14689
                            mem[_14899 + 68] = 0
                            mem[_14899 + 100] = address(cd[68])
                            mem[_14899 + 132] = 128
                            mem[_14899 + 164] = mem[_14899]
                            s = 0
                            while s < mem[_14899]:
                                mem[s + _14899 + 196] = mem[s + _14899 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14899] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14689, 0, address(cd[68]), 128, mem[_14899 + 164 len mem[_14899] + 32]
                            else:
                                mem[floor32(mem[_14899]) + _14899 + 196] = mem[floor32(mem[_14899]) + _14899 + -(mem[_14899] % 32) + 228 len mem[_14899] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14689, 0, address(cd[68]), 128, mem[_14899], mem[_14899 + 196 len floor32(mem[_14899]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10833 + 96]
                    _14690 = mem[(32 * idx + 1) + _10833 + 128]
                    if mem[(32 * idx) + _10833 + 44 len 20] == mem[(32 * idx + 1) + _10833 + 44 len 20]:
                        if idx < mem[_10833] - 2:
                            _14903 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14903 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14903 + 36] = 0
                            mem[_14903 + 68] = _14690
                            mem[_14903 + 100] = address(('cd', 4)[2])
                            mem[_14903 + 132] = 128
                            mem[_14903 + 164] = mem[_14903]
                            s = 0
                            while s < mem[_14903]:
                                mem[s + _14903 + 196] = mem[s + _14903 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14903] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14690, address(('cd', 4)[2]), 128, mem[_14903 + 164 len mem[_14903] + 32]
                            else:
                                mem[floor32(mem[_14903]) + _14903 + 196] = mem[floor32(mem[_14903]) + _14903 + -(mem[_14903] % 32) + 228 len mem[_14903] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14690, address(('cd', 4)[2]), 128, mem[_14903], mem[_14903 + 196 len floor32(mem[_14903]) + 32]
                        else:
                            _14907 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14907 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14907 + 36] = 0
                            mem[_14907 + 68] = _14690
                            mem[_14907 + 100] = address(cd[68])
                            mem[_14907 + 132] = 128
                            mem[_14907 + 164] = mem[_14907]
                            s = 0
                            while s < mem[_14907]:
                                mem[s + _14907 + 196] = mem[s + _14907 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14907] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14690, address(cd[68]), 128, mem[_14907 + 164 len mem[_14907] + 32]
                            else:
                                mem[floor32(mem[_14907]) + _14907 + 196] = mem[floor32(mem[_14907]) + _14907 + -(mem[_14907] % 32) + 228 len mem[_14907] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14690, address(cd[68]), 128, mem[_14907], mem[_14907 + 196 len floor32(mem[_14907]) + 32]
                    else:
                        if idx < mem[_10833] - 2:
                            _14911 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14911 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14911 + 36] = _14690
                            mem[_14911 + 68] = 0
                            mem[_14911 + 100] = address(('cd', 4)[2])
                            mem[_14911 + 132] = 128
                            mem[_14911 + 164] = mem[_14911]
                            s = 0
                            while s < mem[_14911]:
                                mem[s + _14911 + 196] = mem[s + _14911 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14911] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14690, 0, address(('cd', 4)[2]), 128, mem[_14911 + 164 len mem[_14911] + 32]
                            else:
                                mem[floor32(mem[_14911]) + _14911 + 196] = mem[floor32(mem[_14911]) + _14911 + -(mem[_14911] % 32) + 228 len mem[_14911] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14690, 0, address(('cd', 4)[2]), 128, mem[_14911], mem[_14911 + 196 len floor32(mem[_14911]) + 32]
                        else:
                            _14915 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14915 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14915 + 36] = _14690
                            mem[_14915 + 68] = 0
                            mem[_14915 + 100] = address(cd[68])
                            mem[_14915 + 132] = 128
                            mem[_14915 + 164] = mem[_14915]
                            s = 0
                            while s < mem[_14915]:
                                mem[s + _14915 + 196] = mem[s + _14915 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14915] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14690, 0, address(cd[68]), 128, mem[_14915 + 164 len mem[_14915] + 32]
                            else:
                                mem[floor32(mem[_14915]) + _14915 + 196] = mem[floor32(mem[_14915]) + _14915 + -(mem[_14915] % 32) + 228 len mem[_14915] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14690, 0, address(cd[68]), 128, mem[_14915], mem[_14915 + 196 len floor32(mem[_14915]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 1 < mem[_10833 + 96]
        require 0 < mem[192]
        if mem[_10833 + 160] <= mem[224]:
            revert with 0, '-,-'
        mem[mem[64]] = mem[_10833 + 160]
    else:
        mem[_5732 + 128 len 32 * _5770] = call.data[calldata.size len 32 * _5770]
        require 0 < mem[_5732 + 96]
        mem[_5732 + 128] = _5729
        _8326 = mem[_5732]
        idx = 0
        while idx < _8326 - 1:
            require idx < mem[_5732]
            _8369 = mem[(32 * idx) + _5732 + 32]
            require idx + 1 < mem[_5732]
            _8398 = mem[(32 * idx + 1) + _5732 + 32]
            if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5732 + 44 len 20] < mem[(32 * idx + 1) + _5732 + 44 len 20]:
                if not mem[(32 * idx) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_5732 + 96]
                if mem[(32 * idx) + _5732 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8369) == address(_8369):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
            else:
                if not mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require ext_code.size(address(('cd', 4)[1]))
                staticcall address(('cd', 4)[1]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[_5732 + 96]
                if mem[(32 * idx) + _5732 + 128] <= 0:
                    revert with 0, 
                                32,
                                41,
                                0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[mem[64] + 109 len 23]
                if address(_8398) == address(_8369):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _5732 + 128])
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                    if 9975 * mem[(32 * idx) + _5732 + 128] / 9975 != mem[(32 * idx) + _5732 + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _5732 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
                        require idx + 1 < mem[_5732 + 96]
                        mem[(32 * idx + 1) + _5732 + 128] = 9975 * mem[(32 * idx) + _5732 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _5732 + 128])
            idx = idx + 1
            continue 
        _10806 = mem[_5732]
        idx = 0
        while idx < _10806 - 1:
            require idx < mem[_5732]
            require idx + 1 < mem[_5732]
            if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + _5732 + 44 len 20] < mem[(32 * idx + 1) + _5732 + 44 len 20]:
                if not mem[(32 * idx) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_5732 + 96]
                _10881 = mem[(32 * idx + 1) + _5732 + 128]
                if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx) + _5732 + 44 len 20]:
                    if idx < mem[_5732] - 2:
                        _11019 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11019 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11019 + 36] = 0
                        mem[_11019 + 68] = _10881
                        mem[_11019 + 100] = address(('cd', 4)[1])
                        mem[_11019 + 132] = 128
                        mem[_11019 + 164] = mem[_11019]
                        s = 0
                        while s < mem[_11019]:
                            mem[s + _11019 + 196] = mem[s + _11019 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11019] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10881, address(('cd', 4)[1]), 128, mem[_11019 + 164 len mem[_11019] + 32]
                        else:
                            mem[floor32(mem[_11019]) + _11019 + 196] = mem[floor32(mem[_11019]) + _11019 + -(mem[_11019] % 32) + 228 len mem[_11019] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10881, address(('cd', 4)[1]), 128, mem[_11019], mem[_11019 + 196 len floor32(mem[_11019]) + 32]
                    else:
                        _11023 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11023 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11023 + 36] = 0
                        mem[_11023 + 68] = _10881
                        mem[_11023 + 100] = address(('cd', 4)[2])
                        mem[_11023 + 132] = 128
                        mem[_11023 + 164] = mem[_11023]
                        s = 0
                        while s < mem[_11023]:
                            mem[s + _11023 + 196] = mem[s + _11023 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11023] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10881, address(('cd', 4)[2]), 128, mem[_11023 + 164 len mem[_11023] + 32]
                        else:
                            mem[floor32(mem[_11023]) + _11023 + 196] = mem[floor32(mem[_11023]) + _11023 + -(mem[_11023] % 32) + 228 len mem[_11023] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10881, address(('cd', 4)[2]), 128, mem[_11023], mem[_11023 + 196 len floor32(mem[_11023]) + 32]
                else:
                    if idx < mem[_5732] - 2:
                        _11027 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11027 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11027 + 36] = _10881
                        mem[_11027 + 68] = 0
                        mem[_11027 + 100] = address(('cd', 4)[1])
                        mem[_11027 + 132] = 128
                        mem[_11027 + 164] = mem[_11027]
                        s = 0
                        while s < mem[_11027]:
                            mem[s + _11027 + 196] = mem[s + _11027 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11027] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10881, 0, address(('cd', 4)[1]), 128, mem[_11027 + 164 len mem[_11027] + 32]
                        else:
                            mem[floor32(mem[_11027]) + _11027 + 196] = mem[floor32(mem[_11027]) + _11027 + -(mem[_11027] % 32) + 228 len mem[_11027] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10881, 0, address(('cd', 4)[1]), 128, mem[_11027], mem[_11027 + 196 len floor32(mem[_11027]) + 32]
                    else:
                        _11031 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11031 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11031 + 36] = _10881
                        mem[_11031 + 68] = 0
                        mem[_11031 + 100] = address(('cd', 4)[2])
                        mem[_11031 + 132] = 128
                        mem[_11031 + 164] = mem[_11031]
                        s = 0
                        while s < mem[_11031]:
                            mem[s + _11031 + 196] = mem[s + _11031 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11031] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10881, 0, address(('cd', 4)[2]), 128, mem[_11031 + 164 len mem[_11031] + 32]
                        else:
                            mem[floor32(mem[_11031]) + _11031 + 196] = mem[floor32(mem[_11031]) + _11031 + -(mem[_11031] % 32) + 228 len mem[_11031] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10881, 0, address(('cd', 4)[2]), 128, mem[_11031], mem[_11031 + 196 len floor32(mem[_11031]) + 32]
            else:
                if not mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[_5732 + 96]
                _10882 = mem[(32 * idx + 1) + _5732 + 128]
                if mem[(32 * idx) + _5732 + 44 len 20] == mem[(32 * idx + 1) + _5732 + 44 len 20]:
                    if idx < mem[_5732] - 2:
                        _11035 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11035 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11035 + 36] = 0
                        mem[_11035 + 68] = _10882
                        mem[_11035 + 100] = address(('cd', 4)[1])
                        mem[_11035 + 132] = 128
                        mem[_11035 + 164] = mem[_11035]
                        s = 0
                        while s < mem[_11035]:
                            mem[s + _11035 + 196] = mem[s + _11035 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11035] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10882, address(('cd', 4)[1]), 128, mem[_11035 + 164 len mem[_11035] + 32]
                        else:
                            mem[floor32(mem[_11035]) + _11035 + 196] = mem[floor32(mem[_11035]) + _11035 + -(mem[_11035] % 32) + 228 len mem[_11035] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10882, address(('cd', 4)[1]), 128, mem[_11035], mem[_11035 + 196 len floor32(mem[_11035]) + 32]
                    else:
                        _11039 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11039 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11039 + 36] = 0
                        mem[_11039 + 68] = _10882
                        mem[_11039 + 100] = address(('cd', 4)[2])
                        mem[_11039 + 132] = 128
                        mem[_11039 + 164] = mem[_11039]
                        s = 0
                        while s < mem[_11039]:
                            mem[s + _11039 + 196] = mem[s + _11039 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11039] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10882, address(('cd', 4)[2]), 128, mem[_11039 + 164 len mem[_11039] + 32]
                        else:
                            mem[floor32(mem[_11039]) + _11039 + 196] = mem[floor32(mem[_11039]) + _11039 + -(mem[_11039] % 32) + 228 len mem[_11039] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _10882, address(('cd', 4)[2]), 128, mem[_11039], mem[_11039 + 196 len floor32(mem[_11039]) + 32]
                else:
                    if idx < mem[_5732] - 2:
                        _11043 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11043 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11043 + 36] = _10882
                        mem[_11043 + 68] = 0
                        mem[_11043 + 100] = address(('cd', 4)[1])
                        mem[_11043 + 132] = 128
                        mem[_11043 + 164] = mem[_11043]
                        s = 0
                        while s < mem[_11043]:
                            mem[s + _11043 + 196] = mem[s + _11043 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11043] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10882, 0, address(('cd', 4)[1]), 128, mem[_11043 + 164 len mem[_11043] + 32]
                        else:
                            mem[floor32(mem[_11043]) + _11043 + 196] = mem[floor32(mem[_11043]) + _11043 + -(mem[_11043] % 32) + 228 len mem[_11043] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10882, 0, address(('cd', 4)[1]), 128, mem[_11043], mem[_11043 + 196 len floor32(mem[_11043]) + 32]
                    else:
                        _11047 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_11047 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_11047 + 36] = _10882
                        mem[_11047 + 68] = 0
                        mem[_11047 + 100] = address(('cd', 4)[2])
                        mem[_11047 + 132] = 128
                        mem[_11047 + 164] = mem[_11047]
                        s = 0
                        while s < mem[_11047]:
                            mem[s + _11047 + 196] = mem[s + _11047 + 32]
                            s = s + 32
                            continue 
                        if not mem[_11047] % 32:
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10882, 0, address(('cd', 4)[2]), 128, mem[_11047 + 164 len mem[_11047] + 32]
                        else:
                            mem[floor32(mem[_11047]) + _11047 + 196] = mem[floor32(mem[_11047]) + _11047 + -(mem[_11047] % 32) + 228 len mem[_11047] % 32]
                            require ext_code.size(address(('cd', 4)[1]))
                            call address(('cd', 4)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _10882, 0, address(('cd', 4)[2]), 128, mem[_11047], mem[_11047 + 196 len floor32(mem[_11047]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[_5732 + 96]
        _10829 = mem[_5732 + 160]
        _10834 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 4 < ('cd', 36).length
        require 0 < mem[_10834]
        mem[_10834 + 32] = address(('cd', 36)[4])
        require 5 < ('cd', 36).length
        require 1 < mem[_10834]
        mem[_10834 + 64] = address(('cd', 36)[5])
        require 2 < ('cd', 4).length
        if mem[_10834] < 2:
            revert with 0, 'PancakeLibrary: INVALID_PATH'
        _10908 = mem[_10834]
        require mem[_10834] <= test266151307()
        mem[_10834 + 96] = mem[_10834]
        mem[64] = _10834 + (32 * mem[_10834]) + 128
        if not _10908:
            require 0 < mem[_10834 + 96]
            mem[_10834 + 128] = _10829
            _12789 = mem[_10834]
            idx = 0
            while idx < _12789 - 1:
                require idx < mem[_10834]
                _12891 = mem[(32 * idx) + _10834 + 32]
                require idx + 1 < mem[_10834]
                _12941 = mem[(32 * idx + 1) + _10834 + 32]
                if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10834 + 44 len 20] < mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    if not mem[(32 * idx) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10834 + 96]
                    if mem[(32 * idx) + _10834 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12891) == address(_12891):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                else:
                    if not mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10834 + 96]
                    if mem[(32 * idx) + _10834 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12941) == address(_12891):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                idx = idx + 1
                continue 
            _14517 = mem[_10834]
            idx = 0
            while idx < _14517 - 1:
                require idx < mem[_10834]
                require idx + 1 < mem[_10834]
                if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10834 + 44 len 20] < mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    if not mem[(32 * idx) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10834 + 96]
                    _14691 = mem[(32 * idx + 1) + _10834 + 128]
                    if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx) + _10834 + 44 len 20]:
                        if idx < mem[_10834] - 2:
                            _14919 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14919 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14919 + 36] = 0
                            mem[_14919 + 68] = _14691
                            mem[_14919 + 100] = address(('cd', 4)[2])
                            mem[_14919 + 132] = 128
                            mem[_14919 + 164] = mem[_14919]
                            s = 0
                            while s < mem[_14919]:
                                mem[s + _14919 + 196] = mem[s + _14919 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14919] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14691, address(('cd', 4)[2]), 128, mem[_14919 + 164 len mem[_14919] + 32]
                            else:
                                mem[floor32(mem[_14919]) + _14919 + 196] = mem[floor32(mem[_14919]) + _14919 + -(mem[_14919] % 32) + 228 len mem[_14919] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14691, address(('cd', 4)[2]), 128, mem[_14919], mem[_14919 + 196 len floor32(mem[_14919]) + 32]
                        else:
                            _14923 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14923 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14923 + 36] = 0
                            mem[_14923 + 68] = _14691
                            mem[_14923 + 100] = address(cd[68])
                            mem[_14923 + 132] = 128
                            mem[_14923 + 164] = mem[_14923]
                            s = 0
                            while s < mem[_14923]:
                                mem[s + _14923 + 196] = mem[s + _14923 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14923] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14691, address(cd[68]), 128, mem[_14923 + 164 len mem[_14923] + 32]
                            else:
                                mem[floor32(mem[_14923]) + _14923 + 196] = mem[floor32(mem[_14923]) + _14923 + -(mem[_14923] % 32) + 228 len mem[_14923] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14691, address(cd[68]), 128, mem[_14923], mem[_14923 + 196 len floor32(mem[_14923]) + 32]
                    else:
                        if idx < mem[_10834] - 2:
                            _14927 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14927 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14927 + 36] = _14691
                            mem[_14927 + 68] = 0
                            mem[_14927 + 100] = address(('cd', 4)[2])
                            mem[_14927 + 132] = 128
                            mem[_14927 + 164] = mem[_14927]
                            s = 0
                            while s < mem[_14927]:
                                mem[s + _14927 + 196] = mem[s + _14927 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14927] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14691, 0, address(('cd', 4)[2]), 128, mem[_14927 + 164 len mem[_14927] + 32]
                            else:
                                mem[floor32(mem[_14927]) + _14927 + 196] = mem[floor32(mem[_14927]) + _14927 + -(mem[_14927] % 32) + 228 len mem[_14927] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14691, 0, address(('cd', 4)[2]), 128, mem[_14927], mem[_14927 + 196 len floor32(mem[_14927]) + 32]
                        else:
                            _14931 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14931 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14931 + 36] = _14691
                            mem[_14931 + 68] = 0
                            mem[_14931 + 100] = address(cd[68])
                            mem[_14931 + 132] = 128
                            mem[_14931 + 164] = mem[_14931]
                            s = 0
                            while s < mem[_14931]:
                                mem[s + _14931 + 196] = mem[s + _14931 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14931] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14691, 0, address(cd[68]), 128, mem[_14931 + 164 len mem[_14931] + 32]
                            else:
                                mem[floor32(mem[_14931]) + _14931 + 196] = mem[floor32(mem[_14931]) + _14931 + -(mem[_14931] % 32) + 228 len mem[_14931] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14691, 0, address(cd[68]), 128, mem[_14931], mem[_14931 + 196 len floor32(mem[_14931]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10834 + 96]
                    _14692 = mem[(32 * idx + 1) + _10834 + 128]
                    if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        if idx < mem[_10834] - 2:
                            _14935 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14935 + 36] = 0
                            mem[_14935 + 68] = _14692
                            mem[_14935 + 100] = address(('cd', 4)[2])
                            mem[_14935 + 132] = 128
                            mem[_14935 + 164] = mem[_14935]
                            s = 0
                            while s < mem[_14935]:
                                mem[s + _14935 + 196] = mem[s + _14935 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14935] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14692, address(('cd', 4)[2]), 128, mem[_14935 + 164 len mem[_14935] + 32]
                            else:
                                mem[floor32(mem[_14935]) + _14935 + 196] = mem[floor32(mem[_14935]) + _14935 + -(mem[_14935] % 32) + 228 len mem[_14935] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14692, address(('cd', 4)[2]), 128, mem[_14935], mem[_14935 + 196 len floor32(mem[_14935]) + 32]
                        else:
                            _14939 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14939 + 36] = 0
                            mem[_14939 + 68] = _14692
                            mem[_14939 + 100] = address(cd[68])
                            mem[_14939 + 132] = 128
                            mem[_14939 + 164] = mem[_14939]
                            s = 0
                            while s < mem[_14939]:
                                mem[s + _14939 + 196] = mem[s + _14939 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14939] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14692, address(cd[68]), 128, mem[_14939 + 164 len mem[_14939] + 32]
                            else:
                                mem[floor32(mem[_14939]) + _14939 + 196] = mem[floor32(mem[_14939]) + _14939 + -(mem[_14939] % 32) + 228 len mem[_14939] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14692, address(cd[68]), 128, mem[_14939], mem[_14939 + 196 len floor32(mem[_14939]) + 32]
                    else:
                        if idx < mem[_10834] - 2:
                            _14943 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14943 + 36] = _14692
                            mem[_14943 + 68] = 0
                            mem[_14943 + 100] = address(('cd', 4)[2])
                            mem[_14943 + 132] = 128
                            mem[_14943 + 164] = mem[_14943]
                            s = 0
                            while s < mem[_14943]:
                                mem[s + _14943 + 196] = mem[s + _14943 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14943] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14692, 0, address(('cd', 4)[2]), 128, mem[_14943 + 164 len mem[_14943] + 32]
                            else:
                                mem[floor32(mem[_14943]) + _14943 + 196] = mem[floor32(mem[_14943]) + _14943 + -(mem[_14943] % 32) + 228 len mem[_14943] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14692, 0, address(('cd', 4)[2]), 128, mem[_14943], mem[_14943 + 196 len floor32(mem[_14943]) + 32]
                        else:
                            _14947 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14947 + 36] = _14692
                            mem[_14947 + 68] = 0
                            mem[_14947 + 100] = address(cd[68])
                            mem[_14947 + 132] = 128
                            mem[_14947 + 164] = mem[_14947]
                            s = 0
                            while s < mem[_14947]:
                                mem[s + _14947 + 196] = mem[s + _14947 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14947] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14692, 0, address(cd[68]), 128, mem[_14947 + 164 len mem[_14947] + 32]
                            else:
                                mem[floor32(mem[_14947]) + _14947 + 196] = mem[floor32(mem[_14947]) + _14947 + -(mem[_14947] % 32) + 228 len mem[_14947] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14692, 0, address(cd[68]), 128, mem[_14947], mem[_14947 + 196 len floor32(mem[_14947]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[_10834 + 128 len 32 * _10908] = call.data[calldata.size len 32 * _10908]
            require 0 < mem[_10834 + 96]
            mem[_10834 + 128] = _10829
            _12790 = mem[_10834]
            idx = 0
            while idx < _12790 - 1:
                require idx < mem[_10834]
                _12893 = mem[(32 * idx) + _10834 + 32]
                require idx + 1 < mem[_10834]
                _12942 = mem[(32 * idx + 1) + _10834 + 32]
                if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10834 + 44 len 20] < mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    if not mem[(32 * idx) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10834 + 96]
                    if mem[(32 * idx) + _10834 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12893) == address(_12893):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                else:
                    if not mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require ext_code.size(address(('cd', 4)[2]))
                    staticcall address(('cd', 4)[2]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[_10834 + 96]
                    if mem[(32 * idx) + _10834 + 128] <= 0:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[mem[64] + 109 len 23]
                    if address(_12942) == address(_12893):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * idx) + _10834 + 128])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if 9975 * mem[(32 * idx) + _10834 + 128] / 9975 != mem[(32 * idx) + _10834 + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * idx) + _10834 + 128]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                            require idx + 1 < mem[_10834 + 96]
                            mem[(32 * idx + 1) + _10834 + 128] = 9975 * mem[(32 * idx) + _10834 + 128] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * idx) + _10834 + 128])
                idx = idx + 1
                continue 
            _14518 = mem[_10834]
            idx = 0
            while idx < _14518 - 1:
                require idx < mem[_10834]
                require idx + 1 < mem[_10834]
                if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + _10834 + 44 len 20] < mem[(32 * idx + 1) + _10834 + 44 len 20]:
                    if not mem[(32 * idx) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10834 + 96]
                    _14693 = mem[(32 * idx + 1) + _10834 + 128]
                    if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx) + _10834 + 44 len 20]:
                        if idx < mem[_10834] - 2:
                            _14951 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14951 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14951 + 36] = 0
                            mem[_14951 + 68] = _14693
                            mem[_14951 + 100] = address(('cd', 4)[2])
                            mem[_14951 + 132] = 128
                            mem[_14951 + 164] = mem[_14951]
                            s = 0
                            while s < mem[_14951]:
                                mem[s + _14951 + 196] = mem[s + _14951 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14951] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14693, address(('cd', 4)[2]), 128, mem[_14951 + 164 len mem[_14951] + 32]
                            else:
                                mem[floor32(mem[_14951]) + _14951 + 196] = mem[floor32(mem[_14951]) + _14951 + -(mem[_14951] % 32) + 228 len mem[_14951] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14693, address(('cd', 4)[2]), 128, mem[_14951], mem[_14951 + 196 len floor32(mem[_14951]) + 32]
                        else:
                            _14955 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14955 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14955 + 36] = 0
                            mem[_14955 + 68] = _14693
                            mem[_14955 + 100] = address(cd[68])
                            mem[_14955 + 132] = 128
                            mem[_14955 + 164] = mem[_14955]
                            s = 0
                            while s < mem[_14955]:
                                mem[s + _14955 + 196] = mem[s + _14955 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14955] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14693, address(cd[68]), 128, mem[_14955 + 164 len mem[_14955] + 32]
                            else:
                                mem[floor32(mem[_14955]) + _14955 + 196] = mem[floor32(mem[_14955]) + _14955 + -(mem[_14955] % 32) + 228 len mem[_14955] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14693, address(cd[68]), 128, mem[_14955], mem[_14955 + 196 len floor32(mem[_14955]) + 32]
                    else:
                        if idx < mem[_10834] - 2:
                            _14959 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14959 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14959 + 36] = _14693
                            mem[_14959 + 68] = 0
                            mem[_14959 + 100] = address(('cd', 4)[2])
                            mem[_14959 + 132] = 128
                            mem[_14959 + 164] = mem[_14959]
                            s = 0
                            while s < mem[_14959]:
                                mem[s + _14959 + 196] = mem[s + _14959 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14959] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14693, 0, address(('cd', 4)[2]), 128, mem[_14959 + 164 len mem[_14959] + 32]
                            else:
                                mem[floor32(mem[_14959]) + _14959 + 196] = mem[floor32(mem[_14959]) + _14959 + -(mem[_14959] % 32) + 228 len mem[_14959] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14693, 0, address(('cd', 4)[2]), 128, mem[_14959], mem[_14959 + 196 len floor32(mem[_14959]) + 32]
                        else:
                            _14963 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14963 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14963 + 36] = _14693
                            mem[_14963 + 68] = 0
                            mem[_14963 + 100] = address(cd[68])
                            mem[_14963 + 132] = 128
                            mem[_14963 + 164] = mem[_14963]
                            s = 0
                            while s < mem[_14963]:
                                mem[s + _14963 + 196] = mem[s + _14963 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14963] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14693, 0, address(cd[68]), 128, mem[_14963 + 164 len mem[_14963] + 32]
                            else:
                                mem[floor32(mem[_14963]) + _14963 + 196] = mem[floor32(mem[_14963]) + _14963 + -(mem[_14963] % 32) + 228 len mem[_14963] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14693, 0, address(cd[68]), 128, mem[_14963], mem[_14963 + 196 len floor32(mem[_14963]) + 32]
                else:
                    if not mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[_10834 + 96]
                    _14694 = mem[(32 * idx + 1) + _10834 + 128]
                    if mem[(32 * idx) + _10834 + 44 len 20] == mem[(32 * idx + 1) + _10834 + 44 len 20]:
                        if idx < mem[_10834] - 2:
                            _14967 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14967 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14967 + 36] = 0
                            mem[_14967 + 68] = _14694
                            mem[_14967 + 100] = address(('cd', 4)[2])
                            mem[_14967 + 132] = 128
                            mem[_14967 + 164] = mem[_14967]
                            s = 0
                            while s < mem[_14967]:
                                mem[s + _14967 + 196] = mem[s + _14967 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14967] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14694, address(('cd', 4)[2]), 128, mem[_14967 + 164 len mem[_14967] + 32]
                            else:
                                mem[floor32(mem[_14967]) + _14967 + 196] = mem[floor32(mem[_14967]) + _14967 + -(mem[_14967] % 32) + 228 len mem[_14967] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14694, address(('cd', 4)[2]), 128, mem[_14967], mem[_14967 + 196 len floor32(mem[_14967]) + 32]
                        else:
                            _14971 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14971 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14971 + 36] = 0
                            mem[_14971 + 68] = _14694
                            mem[_14971 + 100] = address(cd[68])
                            mem[_14971 + 132] = 128
                            mem[_14971 + 164] = mem[_14971]
                            s = 0
                            while s < mem[_14971]:
                                mem[s + _14971 + 196] = mem[s + _14971 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14971] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14694, address(cd[68]), 128, mem[_14971 + 164 len mem[_14971] + 32]
                            else:
                                mem[floor32(mem[_14971]) + _14971 + 196] = mem[floor32(mem[_14971]) + _14971 + -(mem[_14971] % 32) + 228 len mem[_14971] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14694, address(cd[68]), 128, mem[_14971], mem[_14971 + 196 len floor32(mem[_14971]) + 32]
                    else:
                        if idx < mem[_10834] - 2:
                            _14975 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14975 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14975 + 36] = _14694
                            mem[_14975 + 68] = 0
                            mem[_14975 + 100] = address(('cd', 4)[2])
                            mem[_14975 + 132] = 128
                            mem[_14975 + 164] = mem[_14975]
                            s = 0
                            while s < mem[_14975]:
                                mem[s + _14975 + 196] = mem[s + _14975 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14975] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14694, 0, address(('cd', 4)[2]), 128, mem[_14975 + 164 len mem[_14975] + 32]
                            else:
                                mem[floor32(mem[_14975]) + _14975 + 196] = mem[floor32(mem[_14975]) + _14975 + -(mem[_14975] % 32) + 228 len mem[_14975] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14694, 0, address(('cd', 4)[2]), 128, mem[_14975], mem[_14975 + 196 len floor32(mem[_14975]) + 32]
                        else:
                            _14979 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14979 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_14979 + 36] = _14694
                            mem[_14979 + 68] = 0
                            mem[_14979 + 100] = address(cd[68])
                            mem[_14979 + 132] = 128
                            mem[_14979 + 164] = mem[_14979]
                            s = 0
                            while s < mem[_14979]:
                                mem[s + _14979 + 196] = mem[s + _14979 + 32]
                                s = s + 32
                                continue 
                            if not mem[_14979] % 32:
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14694, 0, address(cd[68]), 128, mem[_14979 + 164 len mem[_14979] + 32]
                            else:
                                mem[floor32(mem[_14979]) + _14979 + 196] = mem[floor32(mem[_14979]) + _14979 + -(mem[_14979] % 32) + 228 len mem[_14979] % 32]
                                require ext_code.size(address(('cd', 4)[2]))
                                call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14694, 0, address(cd[68]), 128, mem[_14979], mem[_14979 + 196 len floor32(mem[_14979]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        require 1 < mem[_10834 + 96]
        require 0 < mem[192]
        if mem[_10834 + 160] <= mem[224]:
            revert with 0, '-,-'
        mem[mem[64]] = mem[_10834 + 160]
    return memory
      from mem[64]
       len 32
}



}
