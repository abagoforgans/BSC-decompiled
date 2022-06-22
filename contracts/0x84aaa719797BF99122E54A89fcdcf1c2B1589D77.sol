contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function execute(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                    mem[198 len 30]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg1:
            if arg2 == arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg2 < arg3:
                if not arg2:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg2:
                    if arg3 == arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                                    mem[198 len 30]
                    if arg3 < arg1:
                        if not arg3:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg3:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not arg1:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg1:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[0])
            else:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg3:
                    if arg3 == arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                                    mem[198 len 30]
                    if arg3 < arg1:
                        if not arg3:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg3:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not arg1:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg1:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[0])
            if arg3 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg3 < arg1:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[0] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            else:
                if not arg1:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg1:
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[0] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            return Mask(112, 0, ext_call.return_data[0]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg2:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg1 == arg2:
            if arg2 == arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg2 < arg3:
                if not arg2:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg2:
                    if arg3 == arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                                    mem[198 len 30]
                    if arg3 < arg1:
                        if not arg3:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg3:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not arg1:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg1:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[0])
            else:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg2 == arg3:
                    if arg3 == arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                                    mem[198 len 30]
                    if arg3 < arg1:
                        if not arg3:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg3:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    else:
                        if not arg1:
                            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                        require ext_code.size(stor0)
                        staticcall stor0.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(arg3), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if arg3 == arg1:
                            return Mask(112, 0, ext_call.return_data[0]), 
                                   ext_call.return_data[32 len 64],
                                   ext_call.return_data[32] << 144,
                                   ext_call.return_data[0] << 144,
                                   Mask(112, 0, ext_call.return_data[32])
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[32] << 144,
                           Mask(112, 0, ext_call.return_data[0])
            if arg3 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg3 < arg1:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[0] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            else:
                if not arg1:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg1:
                    return Mask(112, 0, ext_call.return_data[0]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[0] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            return Mask(112, 0, ext_call.return_data[0]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0])
    if arg2 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                    mem[198 len 30]
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            if arg3 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg3 < arg1:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    return Mask(112, 0, ext_call.return_data[32]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            else:
                if not arg1:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg1:
                    return Mask(112, 0, ext_call.return_data[32]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            return Mask(112, 0, ext_call.return_data[32]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[32] << 144,
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg3:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg3:
            if arg3 == arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                            mem[198 len 30]
            if arg3 < arg1:
                if not arg3:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg3:
                    return Mask(112, 0, ext_call.return_data[32]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            else:
                if not arg1:
                    revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
                require ext_code.size(stor0)
                staticcall stor0.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if arg3 == arg1:
                    return Mask(112, 0, ext_call.return_data[32]), 
                           ext_call.return_data[32 len 64],
                           ext_call.return_data[32] << 144,
                           ext_call.return_data[0] << 144,
                           Mask(112, 0, ext_call.return_data[32])
            return Mask(112, 0, ext_call.return_data[32]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[32] << 144,
                   ext_call.return_data[32] << 144,
                   Mask(112, 0, ext_call.return_data[0])
    if arg3 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe457468657269636579657330353a204944454e544943414c5f4144445245535345,
                    mem[198 len 30]
    if arg3 < arg1:
        if not arg3:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg3:
            return Mask(112, 0, ext_call.return_data[32]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[32])
    else:
        if not arg1:
            revert with 0, 'Ethericeyes05: ZERO_ADDRESS'
        require ext_code.size(stor0)
        staticcall stor0.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg1:
            return Mask(112, 0, ext_call.return_data[32]), 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[32])
    return Mask(112, 0, ext_call.return_data[32]), 
           ext_call.return_data[32 len 64],
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(112, 0, ext_call.return_data[0])
}



}
