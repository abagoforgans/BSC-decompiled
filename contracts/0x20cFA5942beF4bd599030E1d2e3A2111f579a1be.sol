contract main {




// =====================  Runtime code  =====================


const pancakePair = ext_call.return_data[12 len 20]


function _fallback() payable {
    revert
}

function sub_af171703(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 132] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[(32 * arg4.length) + 164] = msg.sender
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, msg.sender
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 4 < arg4.length
    if 1 == mem[256]:
        require 1 < arg4.length
        require 2 < arg4.length
    else:
        if arg2 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
            require 2 < arg4.length
            require 2 < arg4.length
            if 0 == mem[192]:
            else:
                if arg1 + 1 == mem[192] + 1:
                    require 2 < arg4.length
        else:
            if arg2 == ext_call.return_data[12 len 20]:
                if arg2 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                    require 2 < arg4.length
                    require 2 < arg4.length
                    if 0 == mem[192]:
                    else:
                        if arg1 + 1 == mem[192] + 1:
                            require 2 < arg4.length
                else:
                    if arg2 != ext_call.return_data[12 len 20]:
                        require 1 < arg4.length
                        if arg1 <= mem[160]:
                            require 1 < arg4.length
                            if arg1 + 1 == mem[160] + 1:
                                require 1 < arg4.length
                        else:
                            require 3 < arg4.length
                            require 0 < arg4.length
                            require 1 < arg4.length
                    else:
                        require 2 < arg4.length
                        require 2 < arg4.length
                        if 0 == mem[192]:
                        else:
                            if arg1 + 1 == mem[192] + 1:
                                require 2 < arg4.length
            else:
                if arg3 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                    if arg2 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                        require 2 < arg4.length
                        require 2 < arg4.length
                        if 0 == mem[192]:
                        else:
                            if arg1 + 1 == mem[192] + 1:
                                require 2 < arg4.length
                    else:
                        if arg2 != ext_call.return_data[12 len 20]:
                            require 1 < arg4.length
                            if arg1 <= mem[160]:
                                require 1 < arg4.length
                                if arg1 + 1 == mem[160] + 1:
                                    require 1 < arg4.length
                            else:
                                require 3 < arg4.length
                                require 0 < arg4.length
                                require 1 < arg4.length
                        else:
                            require 2 < arg4.length
                            require 2 < arg4.length
                            if 0 == mem[192]:
                            else:
                                if arg1 + 1 == mem[192] + 1:
                                    require 2 < arg4.length
                else:
                    if arg3 != ext_call.return_data[12 len 20]:
                        require 1 < arg4.length
                        if arg1 + 1 == mem[160] + 1:
                            require 1 < arg4.length
                            require 1 < arg4.length
                            require 1 < arg4.length
                            require 2 < arg4.length
                    else:
                        if arg2 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                            require 2 < arg4.length
                            require 2 < arg4.length
                            if 0 == mem[192]:
                            else:
                                if arg1 + 1 == mem[192] + 1:
                                    require 2 < arg4.length
                        else:
                            if arg2 != ext_call.return_data[12 len 20]:
                                require 1 < arg4.length
                                if arg1 <= mem[160]:
                                    require 1 < arg4.length
                                    if arg1 + 1 == mem[160] + 1:
                                        require 1 < arg4.length
                                else:
                                    require 3 < arg4.length
                                    require 0 < arg4.length
                                    require 1 < arg4.length
                            else:
                                require 2 < arg4.length
                                require 2 < arg4.length
                                if 0 == mem[192]:
                                else:
                                    if arg1 + 1 == mem[192] + 1:
                                        require 2 < arg4.length
    require 0 < arg4.length
    require 1 < arg4.length
    require 2 < arg4.length
    mem[(32 * arg4.length) + 416 len 0] = None
    return Array(len=6, data=mem[(32 * arg4.length) + 416 len 192])
}



}
