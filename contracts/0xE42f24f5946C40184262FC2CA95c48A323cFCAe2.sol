contract main {




// =====================  Runtime code  =====================


#
#  - sub_dd9a05be(?)
#
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



}
