contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function tras_er5as_3434(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function drainEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function drainToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function addTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeTrader__(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function swapTokens(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, uint8[] arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg3.length <= test266151307()
    mem[96] = arg3.length
    if not arg3.length:
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg3.length
            require idx + 1 < arg3.length
            require idx < arg4.length
            require ext_code.size(address(cd[((32 * idx) + arg4 + 36)]))
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < arg3.length
            require idx < arg5.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                if address(cd[((32 * idx) + arg3 + 36)]) == address(cd[((32 * idx) + arg3 + 36)]):
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                else:
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
            else:
                if address(cd[((32 * idx + 1) + arg3 + 36)]) == address(cd[((32 * idx) + arg3 + 36)]):
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                else:
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (64 * arg3.length) + 224
        mem[(32 * arg4.length) + (64 * arg3.length) + 192] = arg5.length
        mem[(32 * arg4.length) + (64 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(32 * arg4.length) + (64 * arg3.length) + 192]
            _1106 = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 224]
            require idx < mem[(32 * arg3.length) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                _1128 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] == mem[(32 * idx) + (32 * arg3.length) + 172 len 20]:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1190 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1128
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1190))
                            call address(_1190).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1128, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1166 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1193 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1193 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1193 + 36] = 0
                            mem[_1193 + 68] = _1128
                            mem[_1193 + 100] = this.address
                            mem[_1193 + 132] = 128
                            mem[_1193 + 164] = mem[_1193]
                            s = 0
                            while s < mem[_1193]:
                                mem[s + _1193 + 196] = mem[s + _1193 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1193] % 32:
                                require ext_code.size(address(_1166))
                                call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1128, address(this.address), 128, mem[_1193 + 164 len mem[_1193] + 32]
                            else:
                                mem[floor32(mem[_1193]) + _1193 + 196] = mem[floor32(mem[_1193]) + _1193 + -(mem[_1193] % 32) + 228 len mem[_1193] % 32]
                                require ext_code.size(address(_1166))
                                call address(_1166).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1128, address(this.address), 128, mem[_1193], mem[_1193 + 196 len floor32(mem[_1193]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1148 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1236 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1128
                            mem[mem[64] + 68] = address(_1148)
                            require ext_code.size(address(_1236))
                            call address(_1236).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1128, address(_1148)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1189 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1239 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1239 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1239 + 36] = 0
                            mem[_1239 + 68] = _1128
                            mem[_1239 + 100] = address(_1148)
                            mem[_1239 + 132] = 128
                            mem[_1239 + 164] = mem[_1239]
                            s = 0
                            while s < mem[_1239]:
                                mem[s + _1239 + 196] = mem[s + _1239 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1239] % 32:
                                require ext_code.size(address(_1189))
                                call address(_1189).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1128, address(_1148), 128, mem[_1239 + 164 len mem[_1239] + 32]
                            else:
                                mem[floor32(mem[_1239]) + _1239 + 196] = mem[floor32(mem[_1239]) + _1239 + -(mem[_1239] % 32) + 228 len mem[_1239] % 32]
                                require ext_code.size(address(_1189))
                                call address(_1189).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1128, address(_1148), 128, mem[_1239], mem[_1239 + 196 len floor32(mem[_1239]) + 32]
                else:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1196 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1128
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1196))
                            call address(_1196).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1128, 0, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1169 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1199 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1199 + 36] = _1128
                            mem[_1199 + 68] = 0
                            mem[_1199 + 100] = this.address
                            mem[_1199 + 132] = 128
                            mem[_1199 + 164] = mem[_1199]
                            s = 0
                            while s < mem[_1199]:
                                mem[s + _1199 + 196] = mem[s + _1199 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1199] % 32:
                                require ext_code.size(address(_1169))
                                call address(_1169).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1128, 0, address(this.address), 128, mem[_1199 + 164 len mem[_1199] + 32]
                            else:
                                mem[floor32(mem[_1199]) + _1199 + 196] = mem[floor32(mem[_1199]) + _1199 + -(mem[_1199] % 32) + 228 len mem[_1199] % 32]
                                require ext_code.size(address(_1169))
                                call address(_1169).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1128, 0, address(this.address), 128, mem[_1199], mem[_1199 + 196 len floor32(mem[_1199]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1149 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1243 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1128
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1149)
                            require ext_code.size(address(_1243))
                            call address(_1243).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1128, 0, address(_1149)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1195 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1246 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1246 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1246 + 36] = _1128
                            mem[_1246 + 68] = 0
                            mem[_1246 + 100] = address(_1149)
                            mem[_1246 + 132] = 128
                            mem[_1246 + 164] = mem[_1246]
                            s = 0
                            while s < mem[_1246]:
                                mem[s + _1246 + 196] = mem[s + _1246 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1246] % 32:
                                require ext_code.size(address(_1195))
                                call address(_1195).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1128, 0, address(_1149), 128, mem[_1246 + 164 len mem[_1246] + 32]
                            else:
                                mem[floor32(mem[_1246]) + _1246 + 196] = mem[floor32(mem[_1246]) + _1246 + -(mem[_1246] % 32) + 228 len mem[_1246] % 32]
                                require ext_code.size(address(_1195))
                                call address(_1195).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1128, 0, address(_1149), 128, mem[_1246], mem[_1246 + 196 len floor32(mem[_1246]) + 32]
            else:
                _1129 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1202 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1129
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1202))
                            call address(_1202).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1129, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1172 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1205 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1205 + 36] = 0
                            mem[_1205 + 68] = _1129
                            mem[_1205 + 100] = this.address
                            mem[_1205 + 132] = 128
                            mem[_1205 + 164] = mem[_1205]
                            s = 0
                            while s < mem[_1205]:
                                mem[s + _1205 + 196] = mem[s + _1205 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1205] % 32:
                                require ext_code.size(address(_1172))
                                call address(_1172).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1129, address(this.address), 128, mem[_1205 + 164 len mem[_1205] + 32]
                            else:
                                mem[floor32(mem[_1205]) + _1205 + 196] = mem[floor32(mem[_1205]) + _1205 + -(mem[_1205] % 32) + 228 len mem[_1205] % 32]
                                require ext_code.size(address(_1172))
                                call address(_1172).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1129, address(this.address), 128, mem[_1205], mem[_1205 + 196 len floor32(mem[_1205]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1150 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1250 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1129
                            mem[mem[64] + 68] = address(_1150)
                            require ext_code.size(address(_1250))
                            call address(_1250).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1129, address(_1150)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1201 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1253 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1253 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1253 + 36] = 0
                            mem[_1253 + 68] = _1129
                            mem[_1253 + 100] = address(_1150)
                            mem[_1253 + 132] = 128
                            mem[_1253 + 164] = mem[_1253]
                            s = 0
                            while s < mem[_1253]:
                                mem[s + _1253 + 196] = mem[s + _1253 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1253] % 32:
                                require ext_code.size(address(_1201))
                                call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1129, address(_1150), 128, mem[_1253 + 164 len mem[_1253] + 32]
                            else:
                                mem[floor32(mem[_1253]) + _1253 + 196] = mem[floor32(mem[_1253]) + _1253 + -(mem[_1253] % 32) + 228 len mem[_1253] % 32]
                                require ext_code.size(address(_1201))
                                call address(_1201).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1129, address(_1150), 128, mem[_1253], mem[_1253 + 196 len floor32(mem[_1253]) + 32]
                else:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1208 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1129
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1208))
                            call address(_1208).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1129, 0, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1175 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1211 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1211 + 36] = _1129
                            mem[_1211 + 68] = 0
                            mem[_1211 + 100] = this.address
                            mem[_1211 + 132] = 128
                            mem[_1211 + 164] = mem[_1211]
                            s = 0
                            while s < mem[_1211]:
                                mem[s + _1211 + 196] = mem[s + _1211 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1211] % 32:
                                require ext_code.size(address(_1175))
                                call address(_1175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1129, 0, address(this.address), 128, mem[_1211 + 164 len mem[_1211] + 32]
                            else:
                                mem[floor32(mem[_1211]) + _1211 + 196] = mem[floor32(mem[_1211]) + _1211 + -(mem[_1211] % 32) + 228 len mem[_1211] % 32]
                                require ext_code.size(address(_1175))
                                call address(_1175).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1129, 0, address(this.address), 128, mem[_1211], mem[_1211 + 196 len floor32(mem[_1211]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1151 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1257 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1129
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1151)
                            require ext_code.size(address(_1257))
                            call address(_1257).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1129, 0, address(_1151)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1207 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1260 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1260 + 36] = _1129
                            mem[_1260 + 68] = 0
                            mem[_1260 + 100] = address(_1151)
                            mem[_1260 + 132] = 128
                            mem[_1260 + 164] = mem[_1260]
                            s = 0
                            while s < mem[_1260]:
                                mem[s + _1260 + 196] = mem[s + _1260 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1260] % 32:
                                require ext_code.size(address(_1207))
                                call address(_1207).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1129, 0, address(_1151), 128, mem[_1260 + 164 len mem[_1260] + 32]
                            else:
                                mem[floor32(mem[_1260]) + _1260 + 196] = mem[floor32(mem[_1260]) + _1260 + -(mem[_1260] % 32) + 228 len mem[_1260] % 32]
                                require ext_code.size(address(_1207))
                                call address(_1207).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1129, 0, address(_1151), 128, mem[_1260], mem[_1260 + 196 len floor32(mem[_1260]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_1106) / 10
            continue 
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        require 0 < arg3.length
        mem[128] = arg1
        idx = 0
        while idx < arg4.length:
            require idx < arg3.length
            require idx + 1 < arg3.length
            require idx < arg4.length
            require ext_code.size(address(cd[((32 * idx) + arg4 + 36)]))
            staticcall address(cd[((32 * idx) + arg4 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * arg3.length) + 128 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < arg3.length
            require idx < arg5.length
            if address(cd[((32 * idx) + arg3 + 36)]) < address(cd[((32 * idx + 1) + arg3 + 36)]):
                if address(cd[((32 * idx) + arg3 + 36)]) == address(cd[((32 * idx) + arg3 + 36)]):
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                else:
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
            else:
                if address(cd[((32 * idx + 1) + arg3 + 36)]) == address(cd[((32 * idx) + arg3 + 36)]):
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                else:
                    if not uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < arg3.length
                        mem[(32 * idx + 1) + 128] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)
                        if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) / uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) != mem[(32 * idx) + 128]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
                            require idx + 1 < arg3.length
                            mem[(32 * idx + 1) + 128] = mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + 128] * uint16(-uint8(uint8(cd[((32 * idx) + arg5 + 36)]) % 10) + 1000))
            idx = idx + 1
            continue 
        require arg3.length - 1 < arg3.length
        if arg2 > mem[(32 * arg3.length - 1) + 128]:
            return 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        require 0 < arg3.length
        require 0 < arg4.length
        mem[(32 * arg3.length) + 132] = address(cd[(arg4 + 36)])
        mem[(32 * arg3.length) + 164] = arg1
        require ext_code.size(address(cd[(arg3 + 36)]))
        call address(cd[(arg3 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(64 * arg3.length) + 160] = arg4.length
        mem[(64 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (64 * arg3.length) + 224
        mem[(32 * arg4.length) + (64 * arg3.length) + 192] = arg5.length
        mem[(32 * arg4.length) + (64 * arg3.length) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg4.length) + (64 * arg3.length) + (32 * arg5.length) + 224] = 0
        idx = 0
        s = 0
        while idx < arg4.length:
            require idx < mem[(32 * arg4.length) + (64 * arg3.length) + 192]
            _1109 = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 224]
            require idx < mem[(32 * arg3.length) + 128]
            require idx + 1 < mem[(32 * arg3.length) + 128]
            require idx + 1 < mem[96]
            if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                _1130 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] == mem[(32 * idx) + (32 * arg3.length) + 172 len 20]:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1214 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1130
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1214))
                            call address(_1214).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1130, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1178 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1217 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1217 + 36] = 0
                            mem[_1217 + 68] = _1130
                            mem[_1217 + 100] = this.address
                            mem[_1217 + 132] = 128
                            mem[_1217 + 164] = mem[_1217]
                            s = 0
                            while s < mem[_1217]:
                                mem[s + _1217 + 196] = mem[s + _1217 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1217] % 32:
                                require ext_code.size(address(_1178))
                                call address(_1178).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1130, address(this.address), 128, mem[_1217 + 164 len mem[_1217] + 32]
                            else:
                                mem[floor32(mem[_1217]) + _1217 + 196] = mem[floor32(mem[_1217]) + _1217 + -(mem[_1217] % 32) + 228 len mem[_1217] % 32]
                                require ext_code.size(address(_1178))
                                call address(_1178).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1130, address(this.address), 128, mem[_1217], mem[_1217 + 196 len floor32(mem[_1217]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1152 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1264 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1130
                            mem[mem[64] + 68] = address(_1152)
                            require ext_code.size(address(_1264))
                            call address(_1264).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1130, address(_1152)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1213 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1267 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1267 + 36] = 0
                            mem[_1267 + 68] = _1130
                            mem[_1267 + 100] = address(_1152)
                            mem[_1267 + 132] = 128
                            mem[_1267 + 164] = mem[_1267]
                            s = 0
                            while s < mem[_1267]:
                                mem[s + _1267 + 196] = mem[s + _1267 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1267] % 32:
                                require ext_code.size(address(_1213))
                                call address(_1213).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1130, address(_1152), 128, mem[_1267 + 164 len mem[_1267] + 32]
                            else:
                                mem[floor32(mem[_1267]) + _1267 + 196] = mem[floor32(mem[_1267]) + _1267 + -(mem[_1267] % 32) + 228 len mem[_1267] % 32]
                                require ext_code.size(address(_1213))
                                call address(_1213).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1130, address(_1152), 128, mem[_1267], mem[_1267 + 196 len floor32(mem[_1267]) + 32]
                else:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1220 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1130
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1220))
                            call address(_1220).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1130, 0, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1181 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1223 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1223 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1223 + 36] = _1130
                            mem[_1223 + 68] = 0
                            mem[_1223 + 100] = this.address
                            mem[_1223 + 132] = 128
                            mem[_1223 + 164] = mem[_1223]
                            s = 0
                            while s < mem[_1223]:
                                mem[s + _1223 + 196] = mem[s + _1223 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1223] % 32:
                                require ext_code.size(address(_1181))
                                call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1130, 0, address(this.address), 128, mem[_1223 + 164 len mem[_1223] + 32]
                            else:
                                mem[floor32(mem[_1223]) + _1223 + 196] = mem[floor32(mem[_1223]) + _1223 + -(mem[_1223] % 32) + 228 len mem[_1223] % 32]
                                require ext_code.size(address(_1181))
                                call address(_1181).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1130, 0, address(this.address), 128, mem[_1223], mem[_1223 + 196 len floor32(mem[_1223]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1153 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1271 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1130
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1153)
                            require ext_code.size(address(_1271))
                            call address(_1271).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1130, 0, address(_1153)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1219 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1274 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1274 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1274 + 36] = _1130
                            mem[_1274 + 68] = 0
                            mem[_1274 + 100] = address(_1153)
                            mem[_1274 + 132] = 128
                            mem[_1274 + 164] = mem[_1274]
                            s = 0
                            while s < mem[_1274]:
                                mem[s + _1274 + 196] = mem[s + _1274 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1274] % 32:
                                require ext_code.size(address(_1219))
                                call address(_1219).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1130, 0, address(_1153), 128, mem[_1274 + 164 len mem[_1274] + 32]
                            else:
                                mem[floor32(mem[_1274]) + _1274 + 196] = mem[floor32(mem[_1274]) + _1274 + -(mem[_1274] % 32) + 228 len mem[_1274] % 32]
                                require ext_code.size(address(_1219))
                                call address(_1219).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1130, 0, address(_1153), 128, mem[_1274], mem[_1274 + 196 len floor32(mem[_1274]) + 32]
            else:
                _1131 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + (32 * arg3.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg3.length) + 172 len 20]:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1226 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1131
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1226))
                            call address(_1226).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1131, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1184 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1229 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1229 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1229 + 36] = 0
                            mem[_1229 + 68] = _1131
                            mem[_1229 + 100] = this.address
                            mem[_1229 + 132] = 128
                            mem[_1229 + 164] = mem[_1229]
                            s = 0
                            while s < mem[_1229]:
                                mem[s + _1229 + 196] = mem[s + _1229 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1229] % 32:
                                require ext_code.size(address(_1184))
                                call address(_1184).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1131, address(this.address), 128, mem[_1229 + 164 len mem[_1229] + 32]
                            else:
                                mem[floor32(mem[_1229]) + _1229 + 196] = mem[floor32(mem[_1229]) + _1229 + -(mem[_1229] % 32) + 228 len mem[_1229] % 32]
                                require ext_code.size(address(_1184))
                                call address(_1184).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1131, address(this.address), 128, mem[_1229], mem[_1229 + 196 len floor32(mem[_1229]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1154 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1278 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _1131
                            mem[mem[64] + 68] = address(_1154)
                            require ext_code.size(address(_1278))
                            call address(_1278).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, _1131, address(_1154)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1225 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1281 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1281 + 36] = 0
                            mem[_1281 + 68] = _1131
                            mem[_1281 + 100] = address(_1154)
                            mem[_1281 + 132] = 128
                            mem[_1281 + 164] = mem[_1281]
                            s = 0
                            while s < mem[_1281]:
                                mem[s + _1281 + 196] = mem[s + _1281 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1281] % 32:
                                require ext_code.size(address(_1225))
                                call address(_1225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1131, address(_1154), 128, mem[_1281 + 164 len mem[_1281] + 32]
                            else:
                                mem[floor32(mem[_1281]) + _1281 + 196] = mem[floor32(mem[_1281]) + _1281 + -(mem[_1281] % 32) + 228 len mem[_1281] % 32]
                                require ext_code.size(address(_1225))
                                call address(_1225).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _1131, address(_1154), 128, mem[_1281], mem[_1281 + 196 len floor32(mem[_1281]) + 32]
                else:
                    if idx >= mem[(64 * arg3.length) + 160] - 1:
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1232 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1131
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            require ext_code.size(address(_1232))
                            call address(_1232).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1131, 0, this.address
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1187 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1235 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1235 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1235 + 36] = _1131
                            mem[_1235 + 68] = 0
                            mem[_1235 + 100] = this.address
                            mem[_1235 + 132] = 128
                            mem[_1235 + 164] = mem[_1235]
                            s = 0
                            while s < mem[_1235]:
                                mem[s + _1235 + 196] = mem[s + _1235 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1235] % 32:
                                require ext_code.size(address(_1187))
                                call address(_1187).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1131, 0, address(this.address), 128, mem[_1235 + 164 len mem[_1235] + 32]
                            else:
                                mem[floor32(mem[_1235]) + _1235 + 196] = mem[floor32(mem[_1235]) + _1235 + -(mem[_1235] % 32) + 228 len mem[_1235] % 32]
                                require ext_code.size(address(_1187))
                                call address(_1187).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1131, 0, address(this.address), 128, mem[_1235], mem[_1235 + 196 len floor32(mem[_1235]) + 32]
                    else:
                        require idx + 1 < mem[(64 * arg3.length) + 160]
                        _1155 = mem[(32 * idx + 1) + (64 * arg3.length) + 192]
                        if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10):
                            if uint8(mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10) != 1:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg4.length) + (64 * arg3.length) + 255 len 1] / 10
                                continue 
                            require idx < mem[(64 * arg3.length) + 160]
                            _1285 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1131
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_1155)
                            require ext_code.size(address(_1285))
                            call address(_1285).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args _1131, 0, address(_1155)
                        else:
                            require idx < mem[(64 * arg3.length) + 160]
                            _1231 = mem[(32 * idx) + (64 * arg3.length) + 192]
                            _1288 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1288 + 36] = _1131
                            mem[_1288 + 68] = 0
                            mem[_1288 + 100] = address(_1155)
                            mem[_1288 + 132] = 128
                            mem[_1288 + 164] = mem[_1288]
                            s = 0
                            while s < mem[_1288]:
                                mem[s + _1288 + 196] = mem[s + _1288 + 32]
                                s = s + 32
                                continue 
                            if not mem[_1288] % 32:
                                require ext_code.size(address(_1231))
                                call address(_1231).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1131, 0, address(_1155), 128, mem[_1288 + 164 len mem[_1288] + 32]
                            else:
                                mem[floor32(mem[_1288]) + _1288 + 196] = mem[floor32(mem[_1288]) + _1288 + -(mem[_1288] % 32) + 228 len mem[_1288] % 32]
                                require ext_code.size(address(_1231))
                                call address(_1231).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _1131, 0, address(_1155), 128, mem[_1288], mem[_1288 + 196 len floor32(mem[_1288]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = uint8(_1109) / 10
            continue 
    require mem[96] - 1 < mem[96]
    mem[mem[64]] = mem[(32 * mem[96] - 1) + 128]
    return memory
      from mem[64]
       len 32
}



}
