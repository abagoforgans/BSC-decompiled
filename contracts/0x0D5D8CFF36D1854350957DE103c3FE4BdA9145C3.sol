contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_84ac3008(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(64 * arg2.length) + (32 * arg3.length) + 192] = arg2.length
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + 128]
                _131 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(98 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(98 * arg2.length) + (32 * arg3.length) + 260] = address(_131)
                require ext_code.size(arg1)
                staticcall arg1.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(98 * arg2.length) + (32 * arg3.length) + 228], address(_131)
                mem[(98 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg2.length) + (32 * arg3.length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + 128]
                _134 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(98 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(98 * arg2.length) + (32 * arg3.length) + 260] = address(_134)
                require ext_code.size(arg1)
                staticcall arg1.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(98 * arg2.length) + (32 * arg3.length) + 228], address(_134)
                mem[(98 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg2.length) + (32 * arg3.length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
    else:
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(64 * arg2.length) + (32 * arg3.length) + 192] = arg2.length
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + 128]
                _137 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(98 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(98 * arg2.length) + (32 * arg3.length) + 260] = address(_137)
                require ext_code.size(arg1)
                staticcall arg1.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(98 * arg2.length) + (32 * arg3.length) + 228], address(_137)
                mem[(98 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg2.length) + (32 * arg3.length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
        else:
            mem[(64 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                require idx < arg2.length
                require idx < mem[(32 * arg2.length) + 128]
                _140 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[(98 * arg2.length) + (32 * arg3.length) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(98 * arg2.length) + (32 * arg3.length) + 260] = address(_140)
                require ext_code.size(arg1)
                staticcall arg1.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[(98 * arg2.length) + (32 * arg3.length) + 228], address(_140)
                mem[(98 * arg2.length) + (32 * arg3.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[(98 * arg2.length) + (32 * arg3.length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
                    require idx < mem[(64 * arg2.length) + (32 * arg3.length) + 192]
                    mem[(32 * idx) + (64 * arg2.length) + (32 * arg3.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                    mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                idx = idx + 1
                continue 
    mem[(98 * arg2.length) + (32 * arg3.length) + 288] = block.number
    mem[(98 * arg2.length) + (32 * arg3.length) + 224] = 96
    mem[(98 * arg2.length) + (32 * arg3.length) + 320] = mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(98 * arg2.length) + (32 * arg3.length) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg2.length) + (32 * arg3.length) + 160])]
    mem[(98 * arg2.length) + (32 * arg3.length) + 256] = (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128
    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (98 * arg2.length) + (32 * arg3.length) + 352] = mem[(64 * arg2.length) + (32 * arg3.length) + 192]
    mem[(32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + (98 * arg2.length) + (32 * arg3.length) + 384 len floor32(mem[(64 * arg2.length) + (32 * arg3.length) + 192])] = mem[(64 * arg2.length) + (32 * arg3.length) + 224 len floor32(mem[(64 * arg2.length) + (32 * arg3.length) + 192])]
    return Array(len=mem[(32 * arg2.length) + (32 * arg3.length) + 160], data=mem[(98 * arg2.length) + (32 * arg3.length) + 352 len (32 * mem[(64 * arg2.length) + (32 * arg3.length) + 192]) + (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 32]), 
           (32 * mem[(32 * arg2.length) + (32 * arg3.length) + 160]) + 128,
           block.number
}



}
