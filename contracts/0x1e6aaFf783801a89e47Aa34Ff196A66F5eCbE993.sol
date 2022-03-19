contract main {




// =====================  Runtime code  =====================


address OWNER;

function OWNER() payable {
    return OWNER
}

function _fallback() payable {
    revert
}

function sub_5c00fc6c(?) payable {
    require calldata.size - 4 >= 128
    if arg3 == arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg3 < arg4:
        if not arg3:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if arg3 == arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg3 < arg4:
            if not arg3:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(arg2)
            staticcall arg2.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg2, sha3(arg3, arg4), ext_call.return_data[0])))
            staticcall address(sha3(0, arg2, sha3(arg3, arg4), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg4:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(arg2)
            staticcall arg2.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg2, sha3(arg4, arg3), ext_call.return_data[0])))
            staticcall address(sha3(0, arg2, sha3(arg4, arg3), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 <= 0:
            revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if arg3 == arg3:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg1:
                if ext_call.return_data[18 len 14]:
                    return (0 / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14] * arg1 / arg1 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[18 len 14]:
                    return (ext_call.return_data[50 len 14] * arg1 / ext_call.return_data[18 len 14])
            ('iszero', ('ext_call.return_data', 18, 14))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg1:
                if ext_call.return_data[50 len 14]:
                    return (0 / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[18 len 14] * arg1 / arg1 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[50 len 14]:
                    return (ext_call.return_data[18 len 14] * arg1 / ext_call.return_data[50 len 14])
            ('iszero', ('ext_call.return_data', 50, 14))
    else:
        if not arg4:
            revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
        if arg3 == arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7744656d6178537761704c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[201 len 27]
        if arg3 < arg4:
            if not arg3:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(arg2)
            staticcall arg2.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg2, sha3(arg3, arg4), ext_call.return_data[0])))
            staticcall address(sha3(0, arg2, sha3(arg3, arg4), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        else:
            if not arg4:
                revert with 0, 'DemaxSwapLibrary: ZERO_ADDRESS'
            require ext_code.size(arg2)
            staticcall arg2.contractCodeHash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sha3(0, arg2, sha3(arg4, arg3), ext_call.return_data[0])))
            staticcall address(sha3(0, arg2, sha3(arg4, arg3), ext_call.return_data[0])).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 <= 0:
            revert with 0, 32, 37, 0xfe44656d6178537761704c6962726172793a20494e53554646494349454e545f414d4f554e, mem[390 len 27]
        if arg4 == arg3:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg1:
                if ext_call.return_data[18 len 14]:
                    return (0 / ext_call.return_data[18 len 14])
            else:
                if ext_call.return_data[50 len 14] * arg1 / arg1 != ext_call.return_data[50 len 14]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[18 len 14]:
                    return (ext_call.return_data[50 len 14] * arg1 / ext_call.return_data[18 len 14])
            ('iszero', ('ext_call.return_data', 18, 14))
        else:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 40, 0x5344656d6178537761704c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[393 len 24]
            if not arg1:
                if ext_call.return_data[50 len 14]:
                    return (0 / ext_call.return_data[50 len 14])
            else:
                if ext_call.return_data[18 len 14] * arg1 / arg1 != ext_call.return_data[18 len 14]:
                    revert with 0, 32, 33, 0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                if ext_call.return_data[50 len 14]:
                    return (ext_call.return_data[18 len 14] * arg1 / ext_call.return_data[50 len 14])
            ('iszero', ('ext_call.return_data', 50, 14))
    revert
}



}
