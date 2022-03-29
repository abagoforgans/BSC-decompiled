contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_b60e6856(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[100] < block.timestamp:
        revert with 0, 'UniswapV2Router: EXPIRED'
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if ('cd', 36).length < 2:
        revert with 0, 'XRoute: INVALID_PAIRs'
    require ('cd', 36).length + 1 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length + 1
    if not ('cd', 36).length + 1:
        require 0 < ('cd', 36).length + 1
        mem[(32 * ('cd', 36).length) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token1() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length + 1
            require idx < ('cd', 36).length
            mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192] = ('cd', 68).length
        mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        if ('cd', 36).length < 1:
            revert with 0, 'UniswapV2Library: INVALID_PAIR'
        if ('cd', 36).length + 1 < 2:
            revert with 0, 'UniswapV2Library: INVALID_PATH'
        if ('cd', 36).length + 1 != ('cd', 36).length + 1:
            revert with 0, 
                        32,
                        35,
                        0x54556e697377617056324c6962726172793a20494e56414c49445f504154485f504149,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 327 len 29]
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 
                        32,
                        45,
                        0x52556e69737761705632526f757465723a20494e53554646494349454e545f504149525f4645455f4c454e4754,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 337 len 19]
        require ('cd', 36).length + 1 <= test266151307()
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length + 1
        mem[64] = (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256
        if not ('cd', 36).length + 1:
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = cd[4]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                _5370 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _5383 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 
                                32,
                                37,
                                0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 361 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                    if address(_5370) == address(_5370):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                        revert with 0, 
                                    32,
                                    43,
                                    0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                    if address(_5383) == address(_5370):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        40,
                                        0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                        if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 1000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            if mem[(32 * mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] < cd[4]:
                revert with 0, 
                            32,
                            43,
                            0x59556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
            require 0 < ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 292] = msg.sender
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 324] = address(('cd', 36)[0])
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 356] = cd[4]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256] = 100
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 288 len 4] = unknown_0x23b872dd(?????)
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388 len 96] = 0, msg.sender, address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 512 len 4] = uint32(cd[4])
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
                 gas gas_remaining wei
                args cd[4], address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32 >> 224, mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 484 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                                uint32(cd[4]),
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
                if not ('cd', 36).length:
                    mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                    mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
                    idx = 0
                    while idx < ('cd', 36).length:
                        require idx < mem[(32 * ('cd', 36).length) + 128]
                        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            _10109 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10397 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10525 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10525 + 36] = 0
                                    mem[_10525 + 68] = _10109
                                    mem[_10525 + 100] = msg.sender
                                    mem[_10525 + 132] = 128
                                    mem[_10525 + 164] = mem[_10525]
                                    s = 0
                                    while s < mem[_10525]:
                                        mem[s + _10525 + 196] = mem[s + _10525 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10525] % 32:
                                        require ext_code.size(address(_10397))
                                        call address(_10397).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10109, msg.sender, 128, mem[_10525 + 164 len mem[_10525] + 32]
                                    else:
                                        mem[floor32(mem[_10525]) + _10525 + 196] = mem[floor32(mem[_10525]) + _10525 + -(mem[_10525] % 32) + 228 len mem[_10525] % 32]
                                        require ext_code.size(address(_10397))
                                        call address(_10397).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10109, msg.sender, 128, mem[_10525], mem[_10525 + 196 len floor32(mem[_10525]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10270 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10526 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10656 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10656 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10656 + 36] = 0
                                    mem[_10656 + 68] = _10109
                                    mem[_10656 + 100] = address(_10270)
                                    mem[_10656 + 132] = 128
                                    mem[_10656 + 164] = mem[_10656]
                                    s = 0
                                    while s < mem[_10656]:
                                        mem[s + _10656 + 196] = mem[s + _10656 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10656] % 32:
                                        require ext_code.size(address(_10526))
                                        call address(_10526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10109, address(_10270), 128, mem[_10656 + 164 len mem[_10656] + 32]
                                    else:
                                        mem[floor32(mem[_10656]) + _10656 + 196] = mem[floor32(mem[_10656]) + _10656 + -(mem[_10656] % 32) + 228 len mem[_10656] % 32]
                                        require ext_code.size(address(_10526))
                                        call address(_10526).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10109, address(_10270), 128, mem[_10656], mem[_10656 + 196 len floor32(mem[_10656]) + 32]
                            else:
                                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10399 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10527 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10527 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10527 + 36] = _10109
                                    mem[_10527 + 68] = 0
                                    mem[_10527 + 100] = msg.sender
                                    mem[_10527 + 132] = 128
                                    mem[_10527 + 164] = mem[_10527]
                                    s = 0
                                    while s < mem[_10527]:
                                        mem[s + _10527 + 196] = mem[s + _10527 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10527] % 32:
                                        require ext_code.size(address(_10399))
                                        call address(_10399).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10109, 0, msg.sender, 128, mem[_10527 + 164 len mem[_10527] + 32]
                                    else:
                                        mem[floor32(mem[_10527]) + _10527 + 196] = mem[floor32(mem[_10527]) + _10527 + -(mem[_10527] % 32) + 228 len mem[_10527] % 32]
                                        require ext_code.size(address(_10399))
                                        call address(_10399).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10109, 0, msg.sender, 128, mem[_10527], mem[_10527 + 196 len floor32(mem[_10527]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10272 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10528 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10660 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10660 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10660 + 36] = _10109
                                    mem[_10660 + 68] = 0
                                    mem[_10660 + 100] = address(_10272)
                                    mem[_10660 + 132] = 128
                                    mem[_10660 + 164] = mem[_10660]
                                    s = 0
                                    while s < mem[_10660]:
                                        mem[s + _10660 + 196] = mem[s + _10660 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10660] % 32:
                                        require ext_code.size(address(_10528))
                                        call address(_10528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10109, 0, address(_10272), 128, mem[_10660 + 164 len mem[_10660] + 32]
                                    else:
                                        mem[floor32(mem[_10660]) + _10660 + 196] = mem[floor32(mem[_10660]) + _10660 + -(mem[_10660] % 32) + 228 len mem[_10660] % 32]
                                        require ext_code.size(address(_10528))
                                        call address(_10528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10109, 0, address(_10272), 128, mem[_10660], mem[_10660 + 196 len floor32(mem[_10660]) + 32]
                        else:
                            if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            _10110 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10401 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10529 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10529 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10529 + 36] = 0
                                    mem[_10529 + 68] = _10110
                                    mem[_10529 + 100] = msg.sender
                                    mem[_10529 + 132] = 128
                                    mem[_10529 + 164] = mem[_10529]
                                    s = 0
                                    while s < mem[_10529]:
                                        mem[s + _10529 + 196] = mem[s + _10529 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10529] % 32:
                                        require ext_code.size(address(_10401))
                                        call address(_10401).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10110, msg.sender, 128, mem[_10529 + 164 len mem[_10529] + 32]
                                    else:
                                        mem[floor32(mem[_10529]) + _10529 + 196] = mem[floor32(mem[_10529]) + _10529 + -(mem[_10529] % 32) + 228 len mem[_10529] % 32]
                                        require ext_code.size(address(_10401))
                                        call address(_10401).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10110, msg.sender, 128, mem[_10529], mem[_10529 + 196 len floor32(mem[_10529]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10274 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10530 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10664 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10664 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10664 + 36] = 0
                                    mem[_10664 + 68] = _10110
                                    mem[_10664 + 100] = address(_10274)
                                    mem[_10664 + 132] = 128
                                    mem[_10664 + 164] = mem[_10664]
                                    s = 0
                                    while s < mem[_10664]:
                                        mem[s + _10664 + 196] = mem[s + _10664 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10664] % 32:
                                        require ext_code.size(address(_10530))
                                        call address(_10530).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10110, address(_10274), 128, mem[_10664 + 164 len mem[_10664] + 32]
                                    else:
                                        mem[floor32(mem[_10664]) + _10664 + 196] = mem[floor32(mem[_10664]) + _10664 + -(mem[_10664] % 32) + 228 len mem[_10664] % 32]
                                        require ext_code.size(address(_10530))
                                        call address(_10530).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _10110, address(_10274), 128, mem[_10664], mem[_10664 + 196 len floor32(mem[_10664]) + 32]
                            else:
                                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10403 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10531 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10531 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10531 + 36] = _10110
                                    mem[_10531 + 68] = 0
                                    mem[_10531 + 100] = msg.sender
                                    mem[_10531 + 132] = 128
                                    mem[_10531 + 164] = mem[_10531]
                                    s = 0
                                    while s < mem[_10531]:
                                        mem[s + _10531 + 196] = mem[s + _10531 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10531] % 32:
                                        require ext_code.size(address(_10403))
                                        call address(_10403).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10110, 0, msg.sender, 128, mem[_10531 + 164 len mem[_10531] + 32]
                                    else:
                                        mem[floor32(mem[_10531]) + _10531 + 196] = mem[floor32(mem[_10531]) + _10531 + -(mem[_10531] % 32) + 228 len mem[_10531] % 32]
                                        require ext_code.size(address(_10403))
                                        call address(_10403).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10110, 0, msg.sender, 128, mem[_10531], mem[_10531 + 196 len floor32(mem[_10531]) + 32]
                                else:
                                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10276 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                    _10532 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                    _10668 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_10668 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_10668 + 36] = _10110
                                    mem[_10668 + 68] = 0
                                    mem[_10668 + 100] = address(_10276)
                                    mem[_10668 + 132] = 128
                                    mem[_10668 + 164] = mem[_10668]
                                    s = 0
                                    while s < mem[_10668]:
                                        mem[s + _10668 + 196] = mem[s + _10668 + 32]
                                        s = s + 32
                                        continue 
                                    if not mem[_10668] % 32:
                                        require ext_code.size(address(_10532))
                                        call address(_10532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10110, 0, address(_10276), 128, mem[_10668 + 164 len mem[_10668] + 32]
                                    else:
                                        mem[floor32(mem[_10668]) + _10668 + 196] = mem[floor32(mem[_10668]) + _10668 + -(mem[_10668] % 32) + 228 len mem[_10668] % 32]
                                        require ext_code.size(address(_10532))
                                        call address(_10532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _10110, 0, address(_10276), 128, mem[_10668], mem[_10668 + 196 len floor32(mem[_10668]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _9887 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
                    return 32, mem[mem[64] + 32 len (32 * _9887) + 32]
                require ('cd', 36).length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                                uint32(cd[4]),
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
                mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10111 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10405 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10533 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10533 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10533 + 36] = 0
                                mem[_10533 + 68] = _10111
                                mem[_10533 + 100] = msg.sender
                                mem[_10533 + 132] = 128
                                mem[_10533 + 164] = mem[_10533]
                                s = 0
                                while s < mem[_10533]:
                                    mem[s + _10533 + 196] = mem[s + _10533 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10533] % 32:
                                    require ext_code.size(address(_10405))
                                    call address(_10405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10111, msg.sender, 128, mem[_10533 + 164 len mem[_10533] + 32]
                                else:
                                    mem[floor32(mem[_10533]) + _10533 + 196] = mem[floor32(mem[_10533]) + _10533 + -(mem[_10533] % 32) + 228 len mem[_10533] % 32]
                                    require ext_code.size(address(_10405))
                                    call address(_10405).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10111, msg.sender, 128, mem[_10533], mem[_10533 + 196 len floor32(mem[_10533]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10278 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10534 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10672 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10672 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10672 + 36] = 0
                                mem[_10672 + 68] = _10111
                                mem[_10672 + 100] = address(_10278)
                                mem[_10672 + 132] = 128
                                mem[_10672 + 164] = mem[_10672]
                                s = 0
                                while s < mem[_10672]:
                                    mem[s + _10672 + 196] = mem[s + _10672 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10672] % 32:
                                    require ext_code.size(address(_10534))
                                    call address(_10534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10111, address(_10278), 128, mem[_10672 + 164 len mem[_10672] + 32]
                                else:
                                    mem[floor32(mem[_10672]) + _10672 + 196] = mem[floor32(mem[_10672]) + _10672 + -(mem[_10672] % 32) + 228 len mem[_10672] % 32]
                                    require ext_code.size(address(_10534))
                                    call address(_10534).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10111, address(_10278), 128, mem[_10672], mem[_10672 + 196 len floor32(mem[_10672]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10407 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10535 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10535 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10535 + 36] = _10111
                                mem[_10535 + 68] = 0
                                mem[_10535 + 100] = msg.sender
                                mem[_10535 + 132] = 128
                                mem[_10535 + 164] = mem[_10535]
                                s = 0
                                while s < mem[_10535]:
                                    mem[s + _10535 + 196] = mem[s + _10535 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10535] % 32:
                                    require ext_code.size(address(_10407))
                                    call address(_10407).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10111, 0, msg.sender, 128, mem[_10535 + 164 len mem[_10535] + 32]
                                else:
                                    mem[floor32(mem[_10535]) + _10535 + 196] = mem[floor32(mem[_10535]) + _10535 + -(mem[_10535] % 32) + 228 len mem[_10535] % 32]
                                    require ext_code.size(address(_10407))
                                    call address(_10407).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10111, 0, msg.sender, 128, mem[_10535], mem[_10535 + 196 len floor32(mem[_10535]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10280 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10536 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10676 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10676 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10676 + 36] = _10111
                                mem[_10676 + 68] = 0
                                mem[_10676 + 100] = address(_10280)
                                mem[_10676 + 132] = 128
                                mem[_10676 + 164] = mem[_10676]
                                s = 0
                                while s < mem[_10676]:
                                    mem[s + _10676 + 196] = mem[s + _10676 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10676] % 32:
                                    require ext_code.size(address(_10536))
                                    call address(_10536).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10111, 0, address(_10280), 128, mem[_10676 + 164 len mem[_10676] + 32]
                                else:
                                    mem[floor32(mem[_10676]) + _10676 + 196] = mem[floor32(mem[_10676]) + _10676 + -(mem[_10676] % 32) + 228 len mem[_10676] % 32]
                                    require ext_code.size(address(_10536))
                                    call address(_10536).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10111, 0, address(_10280), 128, mem[_10676], mem[_10676 + 196 len floor32(mem[_10676]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10112 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10409 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10537 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10537 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10537 + 36] = 0
                                mem[_10537 + 68] = _10112
                                mem[_10537 + 100] = msg.sender
                                mem[_10537 + 132] = 128
                                mem[_10537 + 164] = mem[_10537]
                                s = 0
                                while s < mem[_10537]:
                                    mem[s + _10537 + 196] = mem[s + _10537 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10537] % 32:
                                    require ext_code.size(address(_10409))
                                    call address(_10409).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10112, msg.sender, 128, mem[_10537 + 164 len mem[_10537] + 32]
                                else:
                                    mem[floor32(mem[_10537]) + _10537 + 196] = mem[floor32(mem[_10537]) + _10537 + -(mem[_10537] % 32) + 228 len mem[_10537] % 32]
                                    require ext_code.size(address(_10409))
                                    call address(_10409).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10112, msg.sender, 128, mem[_10537], mem[_10537 + 196 len floor32(mem[_10537]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10282 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10538 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10680 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10680 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10680 + 36] = 0
                                mem[_10680 + 68] = _10112
                                mem[_10680 + 100] = address(_10282)
                                mem[_10680 + 132] = 128
                                mem[_10680 + 164] = mem[_10680]
                                s = 0
                                while s < mem[_10680]:
                                    mem[s + _10680 + 196] = mem[s + _10680 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10680] % 32:
                                    require ext_code.size(address(_10538))
                                    call address(_10538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10112, address(_10282), 128, mem[_10680 + 164 len mem[_10680] + 32]
                                else:
                                    mem[floor32(mem[_10680]) + _10680 + 196] = mem[floor32(mem[_10680]) + _10680 + -(mem[_10680] % 32) + 228 len mem[_10680] % 32]
                                    require ext_code.size(address(_10538))
                                    call address(_10538).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10112, address(_10282), 128, mem[_10680], mem[_10680 + 196 len floor32(mem[_10680]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10411 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10539 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10539 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10539 + 36] = _10112
                                mem[_10539 + 68] = 0
                                mem[_10539 + 100] = msg.sender
                                mem[_10539 + 132] = 128
                                mem[_10539 + 164] = mem[_10539]
                                s = 0
                                while s < mem[_10539]:
                                    mem[s + _10539 + 196] = mem[s + _10539 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10539] % 32:
                                    require ext_code.size(address(_10411))
                                    call address(_10411).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10112, 0, msg.sender, 128, mem[_10539 + 164 len mem[_10539] + 32]
                                else:
                                    mem[floor32(mem[_10539]) + _10539 + 196] = mem[floor32(mem[_10539]) + _10539 + -(mem[_10539] % 32) + 228 len mem[_10539] % 32]
                                    require ext_code.size(address(_10411))
                                    call address(_10411).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10112, 0, msg.sender, 128, mem[_10539], mem[_10539 + 196 len floor32(mem[_10539]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10284 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10540 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10684 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10684 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10684 + 36] = _10112
                                mem[_10684 + 68] = 0
                                mem[_10684 + 100] = address(_10284)
                                mem[_10684 + 132] = 128
                                mem[_10684 + 164] = mem[_10684]
                                s = 0
                                while s < mem[_10684]:
                                    mem[s + _10684 + 196] = mem[s + _10684 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10684] % 32:
                                    require ext_code.size(address(_10540))
                                    call address(_10540).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10112, 0, address(_10284), 128, mem[_10684 + 164 len mem[_10684] + 32]
                                else:
                                    mem[floor32(mem[_10684]) + _10684 + 196] = mem[floor32(mem[_10684]) + _10684 + -(mem[_10684] % 32) + 228 len mem[_10684] % 32]
                                    require ext_code.size(address(_10540))
                                    call address(_10540).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10112, 0, address(_10284), 128, mem[_10684], mem[_10684 + 196 len floor32(mem[_10684]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _9891 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
                return 32, mem[mem[64] + 32 len (32 * _9891) + 32]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = return_data.size
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
            if not return_data.size:
                mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10113 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10413 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10541 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10541 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10541 + 36] = 0
                                mem[_10541 + 68] = _10113
                                mem[_10541 + 100] = msg.sender
                                mem[_10541 + 132] = 128
                                mem[_10541 + 164] = mem[_10541]
                                s = 0
                                while s < mem[_10541]:
                                    mem[s + _10541 + 196] = mem[s + _10541 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10541] % 32:
                                    require ext_code.size(address(_10413))
                                    call address(_10413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10113, msg.sender, 128, mem[_10541 + 164 len mem[_10541] + 32]
                                else:
                                    mem[floor32(mem[_10541]) + _10541 + 196] = mem[floor32(mem[_10541]) + _10541 + -(mem[_10541] % 32) + 228 len mem[_10541] % 32]
                                    require ext_code.size(address(_10413))
                                    call address(_10413).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10113, msg.sender, 128, mem[_10541], mem[_10541 + 196 len floor32(mem[_10541]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10286 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10542 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10688 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10688 + 36] = 0
                                mem[_10688 + 68] = _10113
                                mem[_10688 + 100] = address(_10286)
                                mem[_10688 + 132] = 128
                                mem[_10688 + 164] = mem[_10688]
                                s = 0
                                while s < mem[_10688]:
                                    mem[s + _10688 + 196] = mem[s + _10688 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10688] % 32:
                                    require ext_code.size(address(_10542))
                                    call address(_10542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10113, address(_10286), 128, mem[_10688 + 164 len mem[_10688] + 32]
                                else:
                                    mem[floor32(mem[_10688]) + _10688 + 196] = mem[floor32(mem[_10688]) + _10688 + -(mem[_10688] % 32) + 228 len mem[_10688] % 32]
                                    require ext_code.size(address(_10542))
                                    call address(_10542).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10113, address(_10286), 128, mem[_10688], mem[_10688 + 196 len floor32(mem[_10688]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10415 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10543 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10543 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10543 + 36] = _10113
                                mem[_10543 + 68] = 0
                                mem[_10543 + 100] = msg.sender
                                mem[_10543 + 132] = 128
                                mem[_10543 + 164] = mem[_10543]
                                s = 0
                                while s < mem[_10543]:
                                    mem[s + _10543 + 196] = mem[s + _10543 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10543] % 32:
                                    require ext_code.size(address(_10415))
                                    call address(_10415).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10113, 0, msg.sender, 128, mem[_10543 + 164 len mem[_10543] + 32]
                                else:
                                    mem[floor32(mem[_10543]) + _10543 + 196] = mem[floor32(mem[_10543]) + _10543 + -(mem[_10543] % 32) + 228 len mem[_10543] % 32]
                                    require ext_code.size(address(_10415))
                                    call address(_10415).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10113, 0, msg.sender, 128, mem[_10543], mem[_10543 + 196 len floor32(mem[_10543]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10288 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10544 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10692 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10692 + 36] = _10113
                                mem[_10692 + 68] = 0
                                mem[_10692 + 100] = address(_10288)
                                mem[_10692 + 132] = 128
                                mem[_10692 + 164] = mem[_10692]
                                s = 0
                                while s < mem[_10692]:
                                    mem[s + _10692 + 196] = mem[s + _10692 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10692] % 32:
                                    require ext_code.size(address(_10544))
                                    call address(_10544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10113, 0, address(_10288), 128, mem[_10692 + 164 len mem[_10692] + 32]
                                else:
                                    mem[floor32(mem[_10692]) + _10692 + 196] = mem[floor32(mem[_10692]) + _10692 + -(mem[_10692] % 32) + 228 len mem[_10692] % 32]
                                    require ext_code.size(address(_10544))
                                    call address(_10544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10113, 0, address(_10288), 128, mem[_10692], mem[_10692 + 196 len floor32(mem[_10692]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10114 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10417 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10545 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10545 + 36] = 0
                                mem[_10545 + 68] = _10114
                                mem[_10545 + 100] = msg.sender
                                mem[_10545 + 132] = 128
                                mem[_10545 + 164] = mem[_10545]
                                s = 0
                                while s < mem[_10545]:
                                    mem[s + _10545 + 196] = mem[s + _10545 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10545] % 32:
                                    require ext_code.size(address(_10417))
                                    call address(_10417).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10114, msg.sender, 128, mem[_10545 + 164 len mem[_10545] + 32]
                                else:
                                    mem[floor32(mem[_10545]) + _10545 + 196] = mem[floor32(mem[_10545]) + _10545 + -(mem[_10545] % 32) + 228 len mem[_10545] % 32]
                                    require ext_code.size(address(_10417))
                                    call address(_10417).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10114, msg.sender, 128, mem[_10545], mem[_10545 + 196 len floor32(mem[_10545]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10290 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10546 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10696 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10696 + 36] = 0
                                mem[_10696 + 68] = _10114
                                mem[_10696 + 100] = address(_10290)
                                mem[_10696 + 132] = 128
                                mem[_10696 + 164] = mem[_10696]
                                s = 0
                                while s < mem[_10696]:
                                    mem[s + _10696 + 196] = mem[s + _10696 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10696] % 32:
                                    require ext_code.size(address(_10546))
                                    call address(_10546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10114, address(_10290), 128, mem[_10696 + 164 len mem[_10696] + 32]
                                else:
                                    mem[floor32(mem[_10696]) + _10696 + 196] = mem[floor32(mem[_10696]) + _10696 + -(mem[_10696] % 32) + 228 len mem[_10696] % 32]
                                    require ext_code.size(address(_10546))
                                    call address(_10546).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10114, address(_10290), 128, mem[_10696], mem[_10696 + 196 len floor32(mem[_10696]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10419 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10547 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10547 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10547 + 36] = _10114
                                mem[_10547 + 68] = 0
                                mem[_10547 + 100] = msg.sender
                                mem[_10547 + 132] = 128
                                mem[_10547 + 164] = mem[_10547]
                                s = 0
                                while s < mem[_10547]:
                                    mem[s + _10547 + 196] = mem[s + _10547 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10547] % 32:
                                    require ext_code.size(address(_10419))
                                    call address(_10419).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10114, 0, msg.sender, 128, mem[_10547 + 164 len mem[_10547] + 32]
                                else:
                                    mem[floor32(mem[_10547]) + _10547 + 196] = mem[floor32(mem[_10547]) + _10547 + -(mem[_10547] % 32) + 228 len mem[_10547] % 32]
                                    require ext_code.size(address(_10419))
                                    call address(_10419).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10114, 0, msg.sender, 128, mem[_10547], mem[_10547 + 196 len floor32(mem[_10547]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10292 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                                _10548 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                                _10700 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10700 + 36] = _10114
                                mem[_10700 + 68] = 0
                                mem[_10700 + 100] = address(_10292)
                                mem[_10700 + 132] = 128
                                mem[_10700 + 164] = mem[_10700]
                                s = 0
                                while s < mem[_10700]:
                                    mem[s + _10700 + 196] = mem[s + _10700 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10700] % 32:
                                    require ext_code.size(address(_10548))
                                    call address(_10548).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10114, 0, address(_10292), 128, mem[_10700 + 164 len mem[_10700] + 32]
                                else:
                                    mem[floor32(mem[_10700]) + _10700 + 196] = mem[floor32(mem[_10700]) + _10700 + -(mem[_10700] % 32) + 228 len mem[_10700] % 32]
                                    require ext_code.size(address(_10548))
                                    call address(_10548).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10114, 0, address(_10292), 128, mem[_10700], mem[_10700 + 196 len floor32(mem[_10700]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _9895 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
                return 32, mem[mem[64] + 32 len (32 * _9895) + 32]
            require return_data.size >= 32
            if not mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10115 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10421 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10549 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10549 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10549 + 36] = 0
                            mem[_10549 + 68] = _10115
                            mem[_10549 + 100] = msg.sender
                            mem[_10549 + 132] = 128
                            mem[_10549 + 164] = mem[_10549]
                            s = 0
                            while s < mem[_10549]:
                                mem[s + _10549 + 196] = mem[s + _10549 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10549] % 32:
                                require ext_code.size(address(_10421))
                                call address(_10421).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10115, msg.sender, 128, mem[_10549 + 164 len mem[_10549] + 32]
                            else:
                                mem[floor32(mem[_10549]) + _10549 + 196] = mem[floor32(mem[_10549]) + _10549 + -(mem[_10549] % 32) + 228 len mem[_10549] % 32]
                                require ext_code.size(address(_10421))
                                call address(_10421).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10115, msg.sender, 128, mem[_10549], mem[_10549 + 196 len floor32(mem[_10549]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10294 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10550 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10704 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10704 + 36] = 0
                            mem[_10704 + 68] = _10115
                            mem[_10704 + 100] = address(_10294)
                            mem[_10704 + 132] = 128
                            mem[_10704 + 164] = mem[_10704]
                            s = 0
                            while s < mem[_10704]:
                                mem[s + _10704 + 196] = mem[s + _10704 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10704] % 32:
                                require ext_code.size(address(_10550))
                                call address(_10550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10115, address(_10294), 128, mem[_10704 + 164 len mem[_10704] + 32]
                            else:
                                mem[floor32(mem[_10704]) + _10704 + 196] = mem[floor32(mem[_10704]) + _10704 + -(mem[_10704] % 32) + 228 len mem[_10704] % 32]
                                require ext_code.size(address(_10550))
                                call address(_10550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10115, address(_10294), 128, mem[_10704], mem[_10704 + 196 len floor32(mem[_10704]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10423 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10551 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10551 + 36] = _10115
                            mem[_10551 + 68] = 0
                            mem[_10551 + 100] = msg.sender
                            mem[_10551 + 132] = 128
                            mem[_10551 + 164] = mem[_10551]
                            s = 0
                            while s < mem[_10551]:
                                mem[s + _10551 + 196] = mem[s + _10551 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10551] % 32:
                                require ext_code.size(address(_10423))
                                call address(_10423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10115, 0, msg.sender, 128, mem[_10551 + 164 len mem[_10551] + 32]
                            else:
                                mem[floor32(mem[_10551]) + _10551 + 196] = mem[floor32(mem[_10551]) + _10551 + -(mem[_10551] % 32) + 228 len mem[_10551] % 32]
                                require ext_code.size(address(_10423))
                                call address(_10423).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10115, 0, msg.sender, 128, mem[_10551], mem[_10551 + 196 len floor32(mem[_10551]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10296 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10552 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10708 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10708 + 36] = _10115
                            mem[_10708 + 68] = 0
                            mem[_10708 + 100] = address(_10296)
                            mem[_10708 + 132] = 128
                            mem[_10708 + 164] = mem[_10708]
                            s = 0
                            while s < mem[_10708]:
                                mem[s + _10708 + 196] = mem[s + _10708 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10708] % 32:
                                require ext_code.size(address(_10552))
                                call address(_10552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10115, 0, address(_10296), 128, mem[_10708 + 164 len mem[_10708] + 32]
                            else:
                                mem[floor32(mem[_10708]) + _10708 + 196] = mem[floor32(mem[_10708]) + _10708 + -(mem[_10708] % 32) + 228 len mem[_10708] % 32]
                                require ext_code.size(address(_10552))
                                call address(_10552).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10115, 0, address(_10296), 128, mem[_10708], mem[_10708 + 196 len floor32(mem[_10708]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10116 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10425 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10553 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10553 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10553 + 36] = 0
                            mem[_10553 + 68] = _10116
                            mem[_10553 + 100] = msg.sender
                            mem[_10553 + 132] = 128
                            mem[_10553 + 164] = mem[_10553]
                            s = 0
                            while s < mem[_10553]:
                                mem[s + _10553 + 196] = mem[s + _10553 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10553] % 32:
                                require ext_code.size(address(_10425))
                                call address(_10425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10116, msg.sender, 128, mem[_10553 + 164 len mem[_10553] + 32]
                            else:
                                mem[floor32(mem[_10553]) + _10553 + 196] = mem[floor32(mem[_10553]) + _10553 + -(mem[_10553] % 32) + 228 len mem[_10553] % 32]
                                require ext_code.size(address(_10425))
                                call address(_10425).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10116, msg.sender, 128, mem[_10553], mem[_10553 + 196 len floor32(mem[_10553]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10298 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10554 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10712 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10712 + 36] = 0
                            mem[_10712 + 68] = _10116
                            mem[_10712 + 100] = address(_10298)
                            mem[_10712 + 132] = 128
                            mem[_10712 + 164] = mem[_10712]
                            s = 0
                            while s < mem[_10712]:
                                mem[s + _10712 + 196] = mem[s + _10712 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10712] % 32:
                                require ext_code.size(address(_10554))
                                call address(_10554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10116, address(_10298), 128, mem[_10712 + 164 len mem[_10712] + 32]
                            else:
                                mem[floor32(mem[_10712]) + _10712 + 196] = mem[floor32(mem[_10712]) + _10712 + -(mem[_10712] % 32) + 228 len mem[_10712] % 32]
                                require ext_code.size(address(_10554))
                                call address(_10554).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10116, address(_10298), 128, mem[_10712], mem[_10712 + 196 len floor32(mem[_10712]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10427 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10555 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10555 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10555 + 36] = _10116
                            mem[_10555 + 68] = 0
                            mem[_10555 + 100] = msg.sender
                            mem[_10555 + 132] = 128
                            mem[_10555 + 164] = mem[_10555]
                            s = 0
                            while s < mem[_10555]:
                                mem[s + _10555 + 196] = mem[s + _10555 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10555] % 32:
                                require ext_code.size(address(_10427))
                                call address(_10427).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10116, 0, msg.sender, 128, mem[_10555 + 164 len mem[_10555] + 32]
                            else:
                                mem[floor32(mem[_10555]) + _10555 + 196] = mem[floor32(mem[_10555]) + _10555 + -(mem[_10555] % 32) + 228 len mem[_10555] % 32]
                                require ext_code.size(address(_10427))
                                call address(_10427).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10116, 0, msg.sender, 128, mem[_10555], mem[_10555 + 196 len floor32(mem[_10555]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10300 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10556 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10716 + 36] = _10116
                            mem[_10716 + 68] = 0
                            mem[_10716 + 100] = address(_10300)
                            mem[_10716 + 132] = 128
                            mem[_10716 + 164] = mem[_10716]
                            s = 0
                            while s < mem[_10716]:
                                mem[s + _10716 + 196] = mem[s + _10716 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10716] % 32:
                                require ext_code.size(address(_10556))
                                call address(_10556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10116, 0, address(_10300), 128, mem[_10716 + 164 len mem[_10716] + 32]
                            else:
                                mem[floor32(mem[_10716]) + _10716 + 196] = mem[floor32(mem[_10716]) + _10716 + -(mem[_10716] % 32) + 228 len mem[_10716] % 32]
                                require ext_code.size(address(_10556))
                                call address(_10556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10116, 0, address(_10300), 128, mem[_10716], mem[_10716 + 196 len floor32(mem[_10716]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9899 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9899) + 32]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        require 0 < ('cd', 36).length + 1
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = cd[4]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _5373 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            _5386 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 361 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                if address(_5373) == address(_5373):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                if address(_5386) == address(_5373):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        if mem[(32 * mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] < cd[4]:
            revert with 0, 
                        32,
                        43,
                        0x59556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 292] = msg.sender
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 324] = address(('cd', 36)[0])
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 356] = cd[4]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256] = 100
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 288 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388 len 96] = 0, msg.sender, address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 512 len 4] = uint32(cd[4])
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args cd[4], address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32 >> 224, mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 484 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                            uint32(cd[4]),
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
            if not ('cd', 36).length:
                mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10117 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10429 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10557 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10557 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10557 + 36] = 0
                                mem[_10557 + 68] = _10117
                                mem[_10557 + 100] = msg.sender
                                mem[_10557 + 132] = 128
                                mem[_10557 + 164] = mem[_10557]
                                s = 0
                                while s < mem[_10557]:
                                    mem[s + _10557 + 196] = mem[s + _10557 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10557] % 32:
                                    require ext_code.size(address(_10429))
                                    call address(_10429).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10117, msg.sender, 128, mem[_10557 + 164 len mem[_10557] + 32]
                                else:
                                    mem[floor32(mem[_10557]) + _10557 + 196] = mem[floor32(mem[_10557]) + _10557 + -(mem[_10557] % 32) + 228 len mem[_10557] % 32]
                                    require ext_code.size(address(_10429))
                                    call address(_10429).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10117, msg.sender, 128, mem[_10557], mem[_10557 + 196 len floor32(mem[_10557]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10302 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10558 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10720 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10720 + 36] = 0
                                mem[_10720 + 68] = _10117
                                mem[_10720 + 100] = address(_10302)
                                mem[_10720 + 132] = 128
                                mem[_10720 + 164] = mem[_10720]
                                s = 0
                                while s < mem[_10720]:
                                    mem[s + _10720 + 196] = mem[s + _10720 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10720] % 32:
                                    require ext_code.size(address(_10558))
                                    call address(_10558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10117, address(_10302), 128, mem[_10720 + 164 len mem[_10720] + 32]
                                else:
                                    mem[floor32(mem[_10720]) + _10720 + 196] = mem[floor32(mem[_10720]) + _10720 + -(mem[_10720] % 32) + 228 len mem[_10720] % 32]
                                    require ext_code.size(address(_10558))
                                    call address(_10558).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10117, address(_10302), 128, mem[_10720], mem[_10720 + 196 len floor32(mem[_10720]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10431 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10559 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10559 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10559 + 36] = _10117
                                mem[_10559 + 68] = 0
                                mem[_10559 + 100] = msg.sender
                                mem[_10559 + 132] = 128
                                mem[_10559 + 164] = mem[_10559]
                                s = 0
                                while s < mem[_10559]:
                                    mem[s + _10559 + 196] = mem[s + _10559 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10559] % 32:
                                    require ext_code.size(address(_10431))
                                    call address(_10431).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10117, 0, msg.sender, 128, mem[_10559 + 164 len mem[_10559] + 32]
                                else:
                                    mem[floor32(mem[_10559]) + _10559 + 196] = mem[floor32(mem[_10559]) + _10559 + -(mem[_10559] % 32) + 228 len mem[_10559] % 32]
                                    require ext_code.size(address(_10431))
                                    call address(_10431).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10117, 0, msg.sender, 128, mem[_10559], mem[_10559 + 196 len floor32(mem[_10559]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10304 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10560 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10724 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10724 + 36] = _10117
                                mem[_10724 + 68] = 0
                                mem[_10724 + 100] = address(_10304)
                                mem[_10724 + 132] = 128
                                mem[_10724 + 164] = mem[_10724]
                                s = 0
                                while s < mem[_10724]:
                                    mem[s + _10724 + 196] = mem[s + _10724 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10724] % 32:
                                    require ext_code.size(address(_10560))
                                    call address(_10560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10117, 0, address(_10304), 128, mem[_10724 + 164 len mem[_10724] + 32]
                                else:
                                    mem[floor32(mem[_10724]) + _10724 + 196] = mem[floor32(mem[_10724]) + _10724 + -(mem[_10724] % 32) + 228 len mem[_10724] % 32]
                                    require ext_code.size(address(_10560))
                                    call address(_10560).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10117, 0, address(_10304), 128, mem[_10724], mem[_10724 + 196 len floor32(mem[_10724]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10118 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10433 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10561 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10561 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10561 + 36] = 0
                                mem[_10561 + 68] = _10118
                                mem[_10561 + 100] = msg.sender
                                mem[_10561 + 132] = 128
                                mem[_10561 + 164] = mem[_10561]
                                s = 0
                                while s < mem[_10561]:
                                    mem[s + _10561 + 196] = mem[s + _10561 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10561] % 32:
                                    require ext_code.size(address(_10433))
                                    call address(_10433).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10118, msg.sender, 128, mem[_10561 + 164 len mem[_10561] + 32]
                                else:
                                    mem[floor32(mem[_10561]) + _10561 + 196] = mem[floor32(mem[_10561]) + _10561 + -(mem[_10561] % 32) + 228 len mem[_10561] % 32]
                                    require ext_code.size(address(_10433))
                                    call address(_10433).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10118, msg.sender, 128, mem[_10561], mem[_10561 + 196 len floor32(mem[_10561]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10306 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10562 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10728 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10728 + 36] = 0
                                mem[_10728 + 68] = _10118
                                mem[_10728 + 100] = address(_10306)
                                mem[_10728 + 132] = 128
                                mem[_10728 + 164] = mem[_10728]
                                s = 0
                                while s < mem[_10728]:
                                    mem[s + _10728 + 196] = mem[s + _10728 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10728] % 32:
                                    require ext_code.size(address(_10562))
                                    call address(_10562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10118, address(_10306), 128, mem[_10728 + 164 len mem[_10728] + 32]
                                else:
                                    mem[floor32(mem[_10728]) + _10728 + 196] = mem[floor32(mem[_10728]) + _10728 + -(mem[_10728] % 32) + 228 len mem[_10728] % 32]
                                    require ext_code.size(address(_10562))
                                    call address(_10562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10118, address(_10306), 128, mem[_10728], mem[_10728 + 196 len floor32(mem[_10728]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10435 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10563 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10563 + 36] = _10118
                                mem[_10563 + 68] = 0
                                mem[_10563 + 100] = msg.sender
                                mem[_10563 + 132] = 128
                                mem[_10563 + 164] = mem[_10563]
                                s = 0
                                while s < mem[_10563]:
                                    mem[s + _10563 + 196] = mem[s + _10563 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10563] % 32:
                                    require ext_code.size(address(_10435))
                                    call address(_10435).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10118, 0, msg.sender, 128, mem[_10563 + 164 len mem[_10563] + 32]
                                else:
                                    mem[floor32(mem[_10563]) + _10563 + 196] = mem[floor32(mem[_10563]) + _10563 + -(mem[_10563] % 32) + 228 len mem[_10563] % 32]
                                    require ext_code.size(address(_10435))
                                    call address(_10435).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10118, 0, msg.sender, 128, mem[_10563], mem[_10563 + 196 len floor32(mem[_10563]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10308 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10564 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10732 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10732 + 36] = _10118
                                mem[_10732 + 68] = 0
                                mem[_10732 + 100] = address(_10308)
                                mem[_10732 + 132] = 128
                                mem[_10732 + 164] = mem[_10732]
                                s = 0
                                while s < mem[_10732]:
                                    mem[s + _10732 + 196] = mem[s + _10732 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10732] % 32:
                                    require ext_code.size(address(_10564))
                                    call address(_10564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10118, 0, address(_10308), 128, mem[_10732 + 164 len mem[_10732] + 32]
                                else:
                                    mem[floor32(mem[_10732]) + _10732 + 196] = mem[floor32(mem[_10732]) + _10732 + -(mem[_10732] % 32) + 228 len mem[_10732] % 32]
                                    require ext_code.size(address(_10564))
                                    call address(_10564).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10118, 0, address(_10308), 128, mem[_10732], mem[_10732 + 196 len floor32(mem[_10732]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _9903 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
                return 32, mem[mem[64] + 32 len (32 * _9903) + 32]
            require ('cd', 36).length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                            uint32(cd[4]),
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10119 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10437 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10565 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10565 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10565 + 36] = 0
                            mem[_10565 + 68] = _10119
                            mem[_10565 + 100] = msg.sender
                            mem[_10565 + 132] = 128
                            mem[_10565 + 164] = mem[_10565]
                            s = 0
                            while s < mem[_10565]:
                                mem[s + _10565 + 196] = mem[s + _10565 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10565] % 32:
                                require ext_code.size(address(_10437))
                                call address(_10437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10119, msg.sender, 128, mem[_10565 + 164 len mem[_10565] + 32]
                            else:
                                mem[floor32(mem[_10565]) + _10565 + 196] = mem[floor32(mem[_10565]) + _10565 + -(mem[_10565] % 32) + 228 len mem[_10565] % 32]
                                require ext_code.size(address(_10437))
                                call address(_10437).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10119, msg.sender, 128, mem[_10565], mem[_10565 + 196 len floor32(mem[_10565]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10310 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10566 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10736 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10736 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10736 + 36] = 0
                            mem[_10736 + 68] = _10119
                            mem[_10736 + 100] = address(_10310)
                            mem[_10736 + 132] = 128
                            mem[_10736 + 164] = mem[_10736]
                            s = 0
                            while s < mem[_10736]:
                                mem[s + _10736 + 196] = mem[s + _10736 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10736] % 32:
                                require ext_code.size(address(_10566))
                                call address(_10566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10119, address(_10310), 128, mem[_10736 + 164 len mem[_10736] + 32]
                            else:
                                mem[floor32(mem[_10736]) + _10736 + 196] = mem[floor32(mem[_10736]) + _10736 + -(mem[_10736] % 32) + 228 len mem[_10736] % 32]
                                require ext_code.size(address(_10566))
                                call address(_10566).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10119, address(_10310), 128, mem[_10736], mem[_10736 + 196 len floor32(mem[_10736]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10439 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10567 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10567 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10567 + 36] = _10119
                            mem[_10567 + 68] = 0
                            mem[_10567 + 100] = msg.sender
                            mem[_10567 + 132] = 128
                            mem[_10567 + 164] = mem[_10567]
                            s = 0
                            while s < mem[_10567]:
                                mem[s + _10567 + 196] = mem[s + _10567 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10567] % 32:
                                require ext_code.size(address(_10439))
                                call address(_10439).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10119, 0, msg.sender, 128, mem[_10567 + 164 len mem[_10567] + 32]
                            else:
                                mem[floor32(mem[_10567]) + _10567 + 196] = mem[floor32(mem[_10567]) + _10567 + -(mem[_10567] % 32) + 228 len mem[_10567] % 32]
                                require ext_code.size(address(_10439))
                                call address(_10439).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10119, 0, msg.sender, 128, mem[_10567], mem[_10567 + 196 len floor32(mem[_10567]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10312 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10568 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10740 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10740 + 36] = _10119
                            mem[_10740 + 68] = 0
                            mem[_10740 + 100] = address(_10312)
                            mem[_10740 + 132] = 128
                            mem[_10740 + 164] = mem[_10740]
                            s = 0
                            while s < mem[_10740]:
                                mem[s + _10740 + 196] = mem[s + _10740 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10740] % 32:
                                require ext_code.size(address(_10568))
                                call address(_10568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10119, 0, address(_10312), 128, mem[_10740 + 164 len mem[_10740] + 32]
                            else:
                                mem[floor32(mem[_10740]) + _10740 + 196] = mem[floor32(mem[_10740]) + _10740 + -(mem[_10740] % 32) + 228 len mem[_10740] % 32]
                                require ext_code.size(address(_10568))
                                call address(_10568).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10119, 0, address(_10312), 128, mem[_10740], mem[_10740 + 196 len floor32(mem[_10740]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10120 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10441 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10569 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10569 + 36] = 0
                            mem[_10569 + 68] = _10120
                            mem[_10569 + 100] = msg.sender
                            mem[_10569 + 132] = 128
                            mem[_10569 + 164] = mem[_10569]
                            s = 0
                            while s < mem[_10569]:
                                mem[s + _10569 + 196] = mem[s + _10569 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10569] % 32:
                                require ext_code.size(address(_10441))
                                call address(_10441).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10120, msg.sender, 128, mem[_10569 + 164 len mem[_10569] + 32]
                            else:
                                mem[floor32(mem[_10569]) + _10569 + 196] = mem[floor32(mem[_10569]) + _10569 + -(mem[_10569] % 32) + 228 len mem[_10569] % 32]
                                require ext_code.size(address(_10441))
                                call address(_10441).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10120, msg.sender, 128, mem[_10569], mem[_10569 + 196 len floor32(mem[_10569]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10314 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10570 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10744 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10744 + 36] = 0
                            mem[_10744 + 68] = _10120
                            mem[_10744 + 100] = address(_10314)
                            mem[_10744 + 132] = 128
                            mem[_10744 + 164] = mem[_10744]
                            s = 0
                            while s < mem[_10744]:
                                mem[s + _10744 + 196] = mem[s + _10744 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10744] % 32:
                                require ext_code.size(address(_10570))
                                call address(_10570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10120, address(_10314), 128, mem[_10744 + 164 len mem[_10744] + 32]
                            else:
                                mem[floor32(mem[_10744]) + _10744 + 196] = mem[floor32(mem[_10744]) + _10744 + -(mem[_10744] % 32) + 228 len mem[_10744] % 32]
                                require ext_code.size(address(_10570))
                                call address(_10570).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10120, address(_10314), 128, mem[_10744], mem[_10744 + 196 len floor32(mem[_10744]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10443 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10571 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10571 + 36] = _10120
                            mem[_10571 + 68] = 0
                            mem[_10571 + 100] = msg.sender
                            mem[_10571 + 132] = 128
                            mem[_10571 + 164] = mem[_10571]
                            s = 0
                            while s < mem[_10571]:
                                mem[s + _10571 + 196] = mem[s + _10571 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10571] % 32:
                                require ext_code.size(address(_10443))
                                call address(_10443).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10120, 0, msg.sender, 128, mem[_10571 + 164 len mem[_10571] + 32]
                            else:
                                mem[floor32(mem[_10571]) + _10571 + 196] = mem[floor32(mem[_10571]) + _10571 + -(mem[_10571] % 32) + 228 len mem[_10571] % 32]
                                require ext_code.size(address(_10443))
                                call address(_10443).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10120, 0, msg.sender, 128, mem[_10571], mem[_10571 + 196 len floor32(mem[_10571]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10316 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10572 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10748 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10748 + 36] = _10120
                            mem[_10748 + 68] = 0
                            mem[_10748 + 100] = address(_10316)
                            mem[_10748 + 132] = 128
                            mem[_10748 + 164] = mem[_10748]
                            s = 0
                            while s < mem[_10748]:
                                mem[s + _10748 + 196] = mem[s + _10748 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10748] % 32:
                                require ext_code.size(address(_10572))
                                call address(_10572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10120, 0, address(_10316), 128, mem[_10748 + 164 len mem[_10748] + 32]
                            else:
                                mem[floor32(mem[_10748]) + _10748 + 196] = mem[floor32(mem[_10748]) + _10748 + -(mem[_10748] % 32) + 228 len mem[_10748] % 32]
                                require ext_code.size(address(_10572))
                                call address(_10572).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10120, 0, address(_10316), 128, mem[_10748], mem[_10748 + 196 len floor32(mem[_10748]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9907 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9907) + 32]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = return_data.size
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
        if not return_data.size:
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10121 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10445 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10573 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10573 + 36] = 0
                            mem[_10573 + 68] = _10121
                            mem[_10573 + 100] = msg.sender
                            mem[_10573 + 132] = 128
                            mem[_10573 + 164] = mem[_10573]
                            s = 0
                            while s < mem[_10573]:
                                mem[s + _10573 + 196] = mem[s + _10573 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10573] % 32:
                                require ext_code.size(address(_10445))
                                call address(_10445).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10121, msg.sender, 128, mem[_10573 + 164 len mem[_10573] + 32]
                            else:
                                mem[floor32(mem[_10573]) + _10573 + 196] = mem[floor32(mem[_10573]) + _10573 + -(mem[_10573] % 32) + 228 len mem[_10573] % 32]
                                require ext_code.size(address(_10445))
                                call address(_10445).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10121, msg.sender, 128, mem[_10573], mem[_10573 + 196 len floor32(mem[_10573]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10318 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10574 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10752 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10752 + 36] = 0
                            mem[_10752 + 68] = _10121
                            mem[_10752 + 100] = address(_10318)
                            mem[_10752 + 132] = 128
                            mem[_10752 + 164] = mem[_10752]
                            s = 0
                            while s < mem[_10752]:
                                mem[s + _10752 + 196] = mem[s + _10752 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10752] % 32:
                                require ext_code.size(address(_10574))
                                call address(_10574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10121, address(_10318), 128, mem[_10752 + 164 len mem[_10752] + 32]
                            else:
                                mem[floor32(mem[_10752]) + _10752 + 196] = mem[floor32(mem[_10752]) + _10752 + -(mem[_10752] % 32) + 228 len mem[_10752] % 32]
                                require ext_code.size(address(_10574))
                                call address(_10574).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10121, address(_10318), 128, mem[_10752], mem[_10752 + 196 len floor32(mem[_10752]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10447 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10575 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10575 + 36] = _10121
                            mem[_10575 + 68] = 0
                            mem[_10575 + 100] = msg.sender
                            mem[_10575 + 132] = 128
                            mem[_10575 + 164] = mem[_10575]
                            s = 0
                            while s < mem[_10575]:
                                mem[s + _10575 + 196] = mem[s + _10575 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10575] % 32:
                                require ext_code.size(address(_10447))
                                call address(_10447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10121, 0, msg.sender, 128, mem[_10575 + 164 len mem[_10575] + 32]
                            else:
                                mem[floor32(mem[_10575]) + _10575 + 196] = mem[floor32(mem[_10575]) + _10575 + -(mem[_10575] % 32) + 228 len mem[_10575] % 32]
                                require ext_code.size(address(_10447))
                                call address(_10447).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10121, 0, msg.sender, 128, mem[_10575], mem[_10575 + 196 len floor32(mem[_10575]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10320 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10576 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10756 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10756 + 36] = _10121
                            mem[_10756 + 68] = 0
                            mem[_10756 + 100] = address(_10320)
                            mem[_10756 + 132] = 128
                            mem[_10756 + 164] = mem[_10756]
                            s = 0
                            while s < mem[_10756]:
                                mem[s + _10756 + 196] = mem[s + _10756 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10756] % 32:
                                require ext_code.size(address(_10576))
                                call address(_10576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10121, 0, address(_10320), 128, mem[_10756 + 164 len mem[_10756] + 32]
                            else:
                                mem[floor32(mem[_10756]) + _10756 + 196] = mem[floor32(mem[_10756]) + _10756 + -(mem[_10756] % 32) + 228 len mem[_10756] % 32]
                                require ext_code.size(address(_10576))
                                call address(_10576).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10121, 0, address(_10320), 128, mem[_10756], mem[_10756 + 196 len floor32(mem[_10756]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10122 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10449 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10577 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10577 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10577 + 36] = 0
                            mem[_10577 + 68] = _10122
                            mem[_10577 + 100] = msg.sender
                            mem[_10577 + 132] = 128
                            mem[_10577 + 164] = mem[_10577]
                            s = 0
                            while s < mem[_10577]:
                                mem[s + _10577 + 196] = mem[s + _10577 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10577] % 32:
                                require ext_code.size(address(_10449))
                                call address(_10449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10122, msg.sender, 128, mem[_10577 + 164 len mem[_10577] + 32]
                            else:
                                mem[floor32(mem[_10577]) + _10577 + 196] = mem[floor32(mem[_10577]) + _10577 + -(mem[_10577] % 32) + 228 len mem[_10577] % 32]
                                require ext_code.size(address(_10449))
                                call address(_10449).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10122, msg.sender, 128, mem[_10577], mem[_10577 + 196 len floor32(mem[_10577]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10322 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10578 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10760 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10760 + 36] = 0
                            mem[_10760 + 68] = _10122
                            mem[_10760 + 100] = address(_10322)
                            mem[_10760 + 132] = 128
                            mem[_10760 + 164] = mem[_10760]
                            s = 0
                            while s < mem[_10760]:
                                mem[s + _10760 + 196] = mem[s + _10760 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10760] % 32:
                                require ext_code.size(address(_10578))
                                call address(_10578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10122, address(_10322), 128, mem[_10760 + 164 len mem[_10760] + 32]
                            else:
                                mem[floor32(mem[_10760]) + _10760 + 196] = mem[floor32(mem[_10760]) + _10760 + -(mem[_10760] % 32) + 228 len mem[_10760] % 32]
                                require ext_code.size(address(_10578))
                                call address(_10578).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10122, address(_10322), 128, mem[_10760], mem[_10760 + 196 len floor32(mem[_10760]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10451 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10579 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10579 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10579 + 36] = _10122
                            mem[_10579 + 68] = 0
                            mem[_10579 + 100] = msg.sender
                            mem[_10579 + 132] = 128
                            mem[_10579 + 164] = mem[_10579]
                            s = 0
                            while s < mem[_10579]:
                                mem[s + _10579 + 196] = mem[s + _10579 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10579] % 32:
                                require ext_code.size(address(_10451))
                                call address(_10451).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10122, 0, msg.sender, 128, mem[_10579 + 164 len mem[_10579] + 32]
                            else:
                                mem[floor32(mem[_10579]) + _10579 + 196] = mem[floor32(mem[_10579]) + _10579 + -(mem[_10579] % 32) + 228 len mem[_10579] % 32]
                                require ext_code.size(address(_10451))
                                call address(_10451).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10122, 0, msg.sender, 128, mem[_10579], mem[_10579 + 196 len floor32(mem[_10579]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10324 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10580 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10764 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10764 + 36] = _10122
                            mem[_10764 + 68] = 0
                            mem[_10764 + 100] = address(_10324)
                            mem[_10764 + 132] = 128
                            mem[_10764 + 164] = mem[_10764]
                            s = 0
                            while s < mem[_10764]:
                                mem[s + _10764 + 196] = mem[s + _10764 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10764] % 32:
                                require ext_code.size(address(_10580))
                                call address(_10580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10122, 0, address(_10324), 128, mem[_10764 + 164 len mem[_10764] + 32]
                            else:
                                mem[floor32(mem[_10764]) + _10764 + 196] = mem[floor32(mem[_10764]) + _10764 + -(mem[_10764] % 32) + 228 len mem[_10764] % 32]
                                require ext_code.size(address(_10580))
                                call address(_10580).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10122, 0, address(_10324), 128, mem[_10764], mem[_10764 + 196 len floor32(mem[_10764]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9911 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9911) + 32]
        require return_data.size >= 32
        if not mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
        mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10123 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10453 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10581 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10581 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10581 + 36] = 0
                        mem[_10581 + 68] = _10123
                        mem[_10581 + 100] = msg.sender
                        mem[_10581 + 132] = 128
                        mem[_10581 + 164] = mem[_10581]
                        s = 0
                        while s < mem[_10581]:
                            mem[s + _10581 + 196] = mem[s + _10581 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10581] % 32:
                            require ext_code.size(address(_10453))
                            call address(_10453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10123, msg.sender, 128, mem[_10581 + 164 len mem[_10581] + 32]
                        else:
                            mem[floor32(mem[_10581]) + _10581 + 196] = mem[floor32(mem[_10581]) + _10581 + -(mem[_10581] % 32) + 228 len mem[_10581] % 32]
                            require ext_code.size(address(_10453))
                            call address(_10453).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10123, msg.sender, 128, mem[_10581], mem[_10581 + 196 len floor32(mem[_10581]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10326 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10582 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10768 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10768 + 36] = 0
                        mem[_10768 + 68] = _10123
                        mem[_10768 + 100] = address(_10326)
                        mem[_10768 + 132] = 128
                        mem[_10768 + 164] = mem[_10768]
                        s = 0
                        while s < mem[_10768]:
                            mem[s + _10768 + 196] = mem[s + _10768 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10768] % 32:
                            require ext_code.size(address(_10582))
                            call address(_10582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10123, address(_10326), 128, mem[_10768 + 164 len mem[_10768] + 32]
                        else:
                            mem[floor32(mem[_10768]) + _10768 + 196] = mem[floor32(mem[_10768]) + _10768 + -(mem[_10768] % 32) + 228 len mem[_10768] % 32]
                            require ext_code.size(address(_10582))
                            call address(_10582).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10123, address(_10326), 128, mem[_10768], mem[_10768 + 196 len floor32(mem[_10768]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10455 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10583 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10583 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10583 + 36] = _10123
                        mem[_10583 + 68] = 0
                        mem[_10583 + 100] = msg.sender
                        mem[_10583 + 132] = 128
                        mem[_10583 + 164] = mem[_10583]
                        s = 0
                        while s < mem[_10583]:
                            mem[s + _10583 + 196] = mem[s + _10583 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10583] % 32:
                            require ext_code.size(address(_10455))
                            call address(_10455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10123, 0, msg.sender, 128, mem[_10583 + 164 len mem[_10583] + 32]
                        else:
                            mem[floor32(mem[_10583]) + _10583 + 196] = mem[floor32(mem[_10583]) + _10583 + -(mem[_10583] % 32) + 228 len mem[_10583] % 32]
                            require ext_code.size(address(_10455))
                            call address(_10455).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10123, 0, msg.sender, 128, mem[_10583], mem[_10583 + 196 len floor32(mem[_10583]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10328 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10584 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10772 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10772 + 36] = _10123
                        mem[_10772 + 68] = 0
                        mem[_10772 + 100] = address(_10328)
                        mem[_10772 + 132] = 128
                        mem[_10772 + 164] = mem[_10772]
                        s = 0
                        while s < mem[_10772]:
                            mem[s + _10772 + 196] = mem[s + _10772 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10772] % 32:
                            require ext_code.size(address(_10584))
                            call address(_10584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10123, 0, address(_10328), 128, mem[_10772 + 164 len mem[_10772] + 32]
                        else:
                            mem[floor32(mem[_10772]) + _10772 + 196] = mem[floor32(mem[_10772]) + _10772 + -(mem[_10772] % 32) + 228 len mem[_10772] % 32]
                            require ext_code.size(address(_10584))
                            call address(_10584).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10123, 0, address(_10328), 128, mem[_10772], mem[_10772 + 196 len floor32(mem[_10772]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10124 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10457 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10585 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10585 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10585 + 36] = 0
                        mem[_10585 + 68] = _10124
                        mem[_10585 + 100] = msg.sender
                        mem[_10585 + 132] = 128
                        mem[_10585 + 164] = mem[_10585]
                        s = 0
                        while s < mem[_10585]:
                            mem[s + _10585 + 196] = mem[s + _10585 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10585] % 32:
                            require ext_code.size(address(_10457))
                            call address(_10457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10124, msg.sender, 128, mem[_10585 + 164 len mem[_10585] + 32]
                        else:
                            mem[floor32(mem[_10585]) + _10585 + 196] = mem[floor32(mem[_10585]) + _10585 + -(mem[_10585] % 32) + 228 len mem[_10585] % 32]
                            require ext_code.size(address(_10457))
                            call address(_10457).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10124, msg.sender, 128, mem[_10585], mem[_10585 + 196 len floor32(mem[_10585]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10330 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10586 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10776 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10776 + 36] = 0
                        mem[_10776 + 68] = _10124
                        mem[_10776 + 100] = address(_10330)
                        mem[_10776 + 132] = 128
                        mem[_10776 + 164] = mem[_10776]
                        s = 0
                        while s < mem[_10776]:
                            mem[s + _10776 + 196] = mem[s + _10776 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10776] % 32:
                            require ext_code.size(address(_10586))
                            call address(_10586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10124, address(_10330), 128, mem[_10776 + 164 len mem[_10776] + 32]
                        else:
                            mem[floor32(mem[_10776]) + _10776 + 196] = mem[floor32(mem[_10776]) + _10776 + -(mem[_10776] % 32) + 228 len mem[_10776] % 32]
                            require ext_code.size(address(_10586))
                            call address(_10586).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10124, address(_10330), 128, mem[_10776], mem[_10776 + 196 len floor32(mem[_10776]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10459 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10587 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10587 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10587 + 36] = _10124
                        mem[_10587 + 68] = 0
                        mem[_10587 + 100] = msg.sender
                        mem[_10587 + 132] = 128
                        mem[_10587 + 164] = mem[_10587]
                        s = 0
                        while s < mem[_10587]:
                            mem[s + _10587 + 196] = mem[s + _10587 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10587] % 32:
                            require ext_code.size(address(_10459))
                            call address(_10459).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10124, 0, msg.sender, 128, mem[_10587 + 164 len mem[_10587] + 32]
                        else:
                            mem[floor32(mem[_10587]) + _10587 + 196] = mem[floor32(mem[_10587]) + _10587 + -(mem[_10587] % 32) + 228 len mem[_10587] % 32]
                            require ext_code.size(address(_10459))
                            call address(_10459).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10124, 0, msg.sender, 128, mem[_10587], mem[_10587 + 196 len floor32(mem[_10587]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10332 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10588 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10780 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10780 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10780 + 36] = _10124
                        mem[_10780 + 68] = 0
                        mem[_10780 + 100] = address(_10332)
                        mem[_10780 + 132] = 128
                        mem[_10780 + 164] = mem[_10780]
                        s = 0
                        while s < mem[_10780]:
                            mem[s + _10780 + 196] = mem[s + _10780 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10780] % 32:
                            require ext_code.size(address(_10588))
                            call address(_10588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10124, 0, address(_10332), 128, mem[_10780 + 164 len mem[_10780] + 32]
                        else:
                            mem[floor32(mem[_10780]) + _10780 + 196] = mem[floor32(mem[_10780]) + _10780 + -(mem[_10780] % 32) + 228 len mem[_10780] % 32]
                            require ext_code.size(address(_10588))
                            call address(_10588).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10124, 0, address(_10332), 128, mem[_10780], mem[_10780 + 196 len floor32(mem[_10780]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        _9915 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
        return 32, mem[mem[64] + 32 len (32 * _9915) + 32]
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
    require 0 < ('cd', 36).length + 1
    mem[(32 * ('cd', 36).length) + 160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                gas gas_remaining wei
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length + 1
        require idx < ('cd', 36).length
        mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160] = ('cd', 36).length
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192] = ('cd', 68).length
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if ('cd', 36).length < 1:
        revert with 0, 'UniswapV2Library: INVALID_PAIR'
    if ('cd', 36).length + 1 < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 36).length + 1 != ('cd', 36).length + 1:
        revert with 0, 
                    32,
                    35,
                    0x54556e697377617056324c6962726172793a20494e56414c49445f504154485f504149,
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 327 len 29]
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 
                    32,
                    45,
                    0x52556e69737761705632526f757465723a20494e53554646494349454e545f504149525f4645455f4c454e4754,
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 337 len 19]
    require ('cd', 36).length + 1 <= test266151307()
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] = ('cd', 36).length + 1
    mem[64] = (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256
    if not ('cd', 36).length + 1:
        require 0 < ('cd', 36).length + 1
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = cd[4]
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _5376 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            _5389 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 
                            32,
                            37,
                            0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 361 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                if address(_5376) == address(_5376):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
                staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
                if address(_5389) == address(_5376):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    40,
                                    0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                    if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                        if Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        if mem[(32 * mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] < cd[4]:
            revert with 0, 
                        32,
                        43,
                        0x59556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 292] = msg.sender
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 324] = address(('cd', 36)[0])
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 356] = cd[4]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256] = 100
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 288 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388 len 96] = 0, msg.sender, address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 512 len 4] = uint32(cd[4])
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
             gas gas_remaining wei
            args cd[4], address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32 >> 224, mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 484 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                            uint32(cd[4]),
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
            if not ('cd', 36).length:
                mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
                idx = 0
                while idx < ('cd', 36).length:
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10125 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10461 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10589 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10589 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10589 + 36] = 0
                                mem[_10589 + 68] = _10125
                                mem[_10589 + 100] = msg.sender
                                mem[_10589 + 132] = 128
                                mem[_10589 + 164] = mem[_10589]
                                s = 0
                                while s < mem[_10589]:
                                    mem[s + _10589 + 196] = mem[s + _10589 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10589] % 32:
                                    require ext_code.size(address(_10461))
                                    call address(_10461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10125, msg.sender, 128, mem[_10589 + 164 len mem[_10589] + 32]
                                else:
                                    mem[floor32(mem[_10589]) + _10589 + 196] = mem[floor32(mem[_10589]) + _10589 + -(mem[_10589] % 32) + 228 len mem[_10589] % 32]
                                    require ext_code.size(address(_10461))
                                    call address(_10461).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10125, msg.sender, 128, mem[_10589], mem[_10589 + 196 len floor32(mem[_10589]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10334 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10590 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10784 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10784 + 36] = 0
                                mem[_10784 + 68] = _10125
                                mem[_10784 + 100] = address(_10334)
                                mem[_10784 + 132] = 128
                                mem[_10784 + 164] = mem[_10784]
                                s = 0
                                while s < mem[_10784]:
                                    mem[s + _10784 + 196] = mem[s + _10784 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10784] % 32:
                                    require ext_code.size(address(_10590))
                                    call address(_10590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10125, address(_10334), 128, mem[_10784 + 164 len mem[_10784] + 32]
                                else:
                                    mem[floor32(mem[_10784]) + _10784 + 196] = mem[floor32(mem[_10784]) + _10784 + -(mem[_10784] % 32) + 228 len mem[_10784] % 32]
                                    require ext_code.size(address(_10590))
                                    call address(_10590).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10125, address(_10334), 128, mem[_10784], mem[_10784 + 196 len floor32(mem[_10784]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10463 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10591 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10591 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10591 + 36] = _10125
                                mem[_10591 + 68] = 0
                                mem[_10591 + 100] = msg.sender
                                mem[_10591 + 132] = 128
                                mem[_10591 + 164] = mem[_10591]
                                s = 0
                                while s < mem[_10591]:
                                    mem[s + _10591 + 196] = mem[s + _10591 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10591] % 32:
                                    require ext_code.size(address(_10463))
                                    call address(_10463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10125, 0, msg.sender, 128, mem[_10591 + 164 len mem[_10591] + 32]
                                else:
                                    mem[floor32(mem[_10591]) + _10591 + 196] = mem[floor32(mem[_10591]) + _10591 + -(mem[_10591] % 32) + 228 len mem[_10591] % 32]
                                    require ext_code.size(address(_10463))
                                    call address(_10463).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10125, 0, msg.sender, 128, mem[_10591], mem[_10591 + 196 len floor32(mem[_10591]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10336 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10592 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10788 + 36] = _10125
                                mem[_10788 + 68] = 0
                                mem[_10788 + 100] = address(_10336)
                                mem[_10788 + 132] = 128
                                mem[_10788 + 164] = mem[_10788]
                                s = 0
                                while s < mem[_10788]:
                                    mem[s + _10788 + 196] = mem[s + _10788 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10788] % 32:
                                    require ext_code.size(address(_10592))
                                    call address(_10592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10125, 0, address(_10336), 128, mem[_10788 + 164 len mem[_10788] + 32]
                                else:
                                    mem[floor32(mem[_10788]) + _10788 + 196] = mem[floor32(mem[_10788]) + _10788 + -(mem[_10788] % 32) + 228 len mem[_10788] % 32]
                                    require ext_code.size(address(_10592))
                                    call address(_10592).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10125, 0, address(_10336), 128, mem[_10788], mem[_10788 + 196 len floor32(mem[_10788]) + 32]
                    else:
                        if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        _10126 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10465 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10593 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10593 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10593 + 36] = 0
                                mem[_10593 + 68] = _10126
                                mem[_10593 + 100] = msg.sender
                                mem[_10593 + 132] = 128
                                mem[_10593 + 164] = mem[_10593]
                                s = 0
                                while s < mem[_10593]:
                                    mem[s + _10593 + 196] = mem[s + _10593 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10593] % 32:
                                    require ext_code.size(address(_10465))
                                    call address(_10465).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10126, msg.sender, 128, mem[_10593 + 164 len mem[_10593] + 32]
                                else:
                                    mem[floor32(mem[_10593]) + _10593 + 196] = mem[floor32(mem[_10593]) + _10593 + -(mem[_10593] % 32) + 228 len mem[_10593] % 32]
                                    require ext_code.size(address(_10465))
                                    call address(_10465).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10126, msg.sender, 128, mem[_10593], mem[_10593 + 196 len floor32(mem[_10593]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10338 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10594 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10792 + 36] = 0
                                mem[_10792 + 68] = _10126
                                mem[_10792 + 100] = address(_10338)
                                mem[_10792 + 132] = 128
                                mem[_10792 + 164] = mem[_10792]
                                s = 0
                                while s < mem[_10792]:
                                    mem[s + _10792 + 196] = mem[s + _10792 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10792] % 32:
                                    require ext_code.size(address(_10594))
                                    call address(_10594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10126, address(_10338), 128, mem[_10792 + 164 len mem[_10792] + 32]
                                else:
                                    mem[floor32(mem[_10792]) + _10792 + 196] = mem[floor32(mem[_10792]) + _10792 + -(mem[_10792] % 32) + 228 len mem[_10792] % 32]
                                    require ext_code.size(address(_10594))
                                    call address(_10594).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _10126, address(_10338), 128, mem[_10792], mem[_10792 + 196 len floor32(mem[_10792]) + 32]
                        else:
                            if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10467 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10595 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10595 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10595 + 36] = _10126
                                mem[_10595 + 68] = 0
                                mem[_10595 + 100] = msg.sender
                                mem[_10595 + 132] = 128
                                mem[_10595 + 164] = mem[_10595]
                                s = 0
                                while s < mem[_10595]:
                                    mem[s + _10595 + 196] = mem[s + _10595 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10595] % 32:
                                    require ext_code.size(address(_10467))
                                    call address(_10467).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10126, 0, msg.sender, 128, mem[_10595 + 164 len mem[_10595] + 32]
                                else:
                                    mem[floor32(mem[_10595]) + _10595 + 196] = mem[floor32(mem[_10595]) + _10595 + -(mem[_10595] % 32) + 228 len mem[_10595] % 32]
                                    require ext_code.size(address(_10467))
                                    call address(_10467).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10126, 0, msg.sender, 128, mem[_10595], mem[_10595 + 196 len floor32(mem[_10595]) + 32]
                            else:
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10340 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                                _10596 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                                _10796 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_10796 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_10796 + 36] = _10126
                                mem[_10796 + 68] = 0
                                mem[_10796 + 100] = address(_10340)
                                mem[_10796 + 132] = 128
                                mem[_10796 + 164] = mem[_10796]
                                s = 0
                                while s < mem[_10796]:
                                    mem[s + _10796 + 196] = mem[s + _10796 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_10796] % 32:
                                    require ext_code.size(address(_10596))
                                    call address(_10596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10126, 0, address(_10340), 128, mem[_10796 + 164 len mem[_10796] + 32]
                                else:
                                    mem[floor32(mem[_10796]) + _10796 + 196] = mem[floor32(mem[_10796]) + _10796 + -(mem[_10796] % 32) + 228 len mem[_10796] % 32]
                                    require ext_code.size(address(_10596))
                                    call address(_10596).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _10126, 0, address(_10340), 128, mem[_10796], mem[_10796 + 196 len floor32(mem[_10796]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _9919 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
                return 32, mem[mem[64] + 32 len (32 * _9919) + 32]
            require ('cd', 36).length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                            uint32(cd[4]),
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10127 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10469 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10597 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10597 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10597 + 36] = 0
                            mem[_10597 + 68] = _10127
                            mem[_10597 + 100] = msg.sender
                            mem[_10597 + 132] = 128
                            mem[_10597 + 164] = mem[_10597]
                            s = 0
                            while s < mem[_10597]:
                                mem[s + _10597 + 196] = mem[s + _10597 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10597] % 32:
                                require ext_code.size(address(_10469))
                                call address(_10469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10127, msg.sender, 128, mem[_10597 + 164 len mem[_10597] + 32]
                            else:
                                mem[floor32(mem[_10597]) + _10597 + 196] = mem[floor32(mem[_10597]) + _10597 + -(mem[_10597] % 32) + 228 len mem[_10597] % 32]
                                require ext_code.size(address(_10469))
                                call address(_10469).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10127, msg.sender, 128, mem[_10597], mem[_10597 + 196 len floor32(mem[_10597]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10342 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10598 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10800 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10800 + 36] = 0
                            mem[_10800 + 68] = _10127
                            mem[_10800 + 100] = address(_10342)
                            mem[_10800 + 132] = 128
                            mem[_10800 + 164] = mem[_10800]
                            s = 0
                            while s < mem[_10800]:
                                mem[s + _10800 + 196] = mem[s + _10800 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10800] % 32:
                                require ext_code.size(address(_10598))
                                call address(_10598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10127, address(_10342), 128, mem[_10800 + 164 len mem[_10800] + 32]
                            else:
                                mem[floor32(mem[_10800]) + _10800 + 196] = mem[floor32(mem[_10800]) + _10800 + -(mem[_10800] % 32) + 228 len mem[_10800] % 32]
                                require ext_code.size(address(_10598))
                                call address(_10598).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10127, address(_10342), 128, mem[_10800], mem[_10800 + 196 len floor32(mem[_10800]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10471 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10599 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10599 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10599 + 36] = _10127
                            mem[_10599 + 68] = 0
                            mem[_10599 + 100] = msg.sender
                            mem[_10599 + 132] = 128
                            mem[_10599 + 164] = mem[_10599]
                            s = 0
                            while s < mem[_10599]:
                                mem[s + _10599 + 196] = mem[s + _10599 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10599] % 32:
                                require ext_code.size(address(_10471))
                                call address(_10471).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10127, 0, msg.sender, 128, mem[_10599 + 164 len mem[_10599] + 32]
                            else:
                                mem[floor32(mem[_10599]) + _10599 + 196] = mem[floor32(mem[_10599]) + _10599 + -(mem[_10599] % 32) + 228 len mem[_10599] % 32]
                                require ext_code.size(address(_10471))
                                call address(_10471).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10127, 0, msg.sender, 128, mem[_10599], mem[_10599 + 196 len floor32(mem[_10599]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10344 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10600 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10804 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10804 + 36] = _10127
                            mem[_10804 + 68] = 0
                            mem[_10804 + 100] = address(_10344)
                            mem[_10804 + 132] = 128
                            mem[_10804 + 164] = mem[_10804]
                            s = 0
                            while s < mem[_10804]:
                                mem[s + _10804 + 196] = mem[s + _10804 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10804] % 32:
                                require ext_code.size(address(_10600))
                                call address(_10600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10127, 0, address(_10344), 128, mem[_10804 + 164 len mem[_10804] + 32]
                            else:
                                mem[floor32(mem[_10804]) + _10804 + 196] = mem[floor32(mem[_10804]) + _10804 + -(mem[_10804] % 32) + 228 len mem[_10804] % 32]
                                require ext_code.size(address(_10600))
                                call address(_10600).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10127, 0, address(_10344), 128, mem[_10804], mem[_10804 + 196 len floor32(mem[_10804]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10128 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10473 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10601 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10601 + 36] = 0
                            mem[_10601 + 68] = _10128
                            mem[_10601 + 100] = msg.sender
                            mem[_10601 + 132] = 128
                            mem[_10601 + 164] = mem[_10601]
                            s = 0
                            while s < mem[_10601]:
                                mem[s + _10601 + 196] = mem[s + _10601 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10601] % 32:
                                require ext_code.size(address(_10473))
                                call address(_10473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10128, msg.sender, 128, mem[_10601 + 164 len mem[_10601] + 32]
                            else:
                                mem[floor32(mem[_10601]) + _10601 + 196] = mem[floor32(mem[_10601]) + _10601 + -(mem[_10601] % 32) + 228 len mem[_10601] % 32]
                                require ext_code.size(address(_10473))
                                call address(_10473).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10128, msg.sender, 128, mem[_10601], mem[_10601 + 196 len floor32(mem[_10601]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10346 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10602 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10808 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10808 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10808 + 36] = 0
                            mem[_10808 + 68] = _10128
                            mem[_10808 + 100] = address(_10346)
                            mem[_10808 + 132] = 128
                            mem[_10808 + 164] = mem[_10808]
                            s = 0
                            while s < mem[_10808]:
                                mem[s + _10808 + 196] = mem[s + _10808 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10808] % 32:
                                require ext_code.size(address(_10602))
                                call address(_10602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10128, address(_10346), 128, mem[_10808 + 164 len mem[_10808] + 32]
                            else:
                                mem[floor32(mem[_10808]) + _10808 + 196] = mem[floor32(mem[_10808]) + _10808 + -(mem[_10808] % 32) + 228 len mem[_10808] % 32]
                                require ext_code.size(address(_10602))
                                call address(_10602).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10128, address(_10346), 128, mem[_10808], mem[_10808 + 196 len floor32(mem[_10808]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10475 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10603 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10603 + 36] = _10128
                            mem[_10603 + 68] = 0
                            mem[_10603 + 100] = msg.sender
                            mem[_10603 + 132] = 128
                            mem[_10603 + 164] = mem[_10603]
                            s = 0
                            while s < mem[_10603]:
                                mem[s + _10603 + 196] = mem[s + _10603 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10603] % 32:
                                require ext_code.size(address(_10475))
                                call address(_10475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10128, 0, msg.sender, 128, mem[_10603 + 164 len mem[_10603] + 32]
                            else:
                                mem[floor32(mem[_10603]) + _10603 + 196] = mem[floor32(mem[_10603]) + _10603 + -(mem[_10603] % 32) + 228 len mem[_10603] % 32]
                                require ext_code.size(address(_10475))
                                call address(_10475).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10128, 0, msg.sender, 128, mem[_10603], mem[_10603 + 196 len floor32(mem[_10603]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10348 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10604 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10812 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10812 + 36] = _10128
                            mem[_10812 + 68] = 0
                            mem[_10812 + 100] = address(_10348)
                            mem[_10812 + 132] = 128
                            mem[_10812 + 164] = mem[_10812]
                            s = 0
                            while s < mem[_10812]:
                                mem[s + _10812 + 196] = mem[s + _10812 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10812] % 32:
                                require ext_code.size(address(_10604))
                                call address(_10604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10128, 0, address(_10348), 128, mem[_10812 + 164 len mem[_10812] + 32]
                            else:
                                mem[floor32(mem[_10812]) + _10812 + 196] = mem[floor32(mem[_10812]) + _10812 + -(mem[_10812] % 32) + 228 len mem[_10812] % 32]
                                require ext_code.size(address(_10604))
                                call address(_10604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10128, 0, address(_10348), 128, mem[_10812], mem[_10812 + 196 len floor32(mem[_10812]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9923 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9923) + 32]
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = return_data.size
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
        if not return_data.size:
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10129 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10477 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10605 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10605 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10605 + 36] = 0
                            mem[_10605 + 68] = _10129
                            mem[_10605 + 100] = msg.sender
                            mem[_10605 + 132] = 128
                            mem[_10605 + 164] = mem[_10605]
                            s = 0
                            while s < mem[_10605]:
                                mem[s + _10605 + 196] = mem[s + _10605 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10605] % 32:
                                require ext_code.size(address(_10477))
                                call address(_10477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10129, msg.sender, 128, mem[_10605 + 164 len mem[_10605] + 32]
                            else:
                                mem[floor32(mem[_10605]) + _10605 + 196] = mem[floor32(mem[_10605]) + _10605 + -(mem[_10605] % 32) + 228 len mem[_10605] % 32]
                                require ext_code.size(address(_10477))
                                call address(_10477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10129, msg.sender, 128, mem[_10605], mem[_10605 + 196 len floor32(mem[_10605]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10350 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10606 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10816 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10816 + 36] = 0
                            mem[_10816 + 68] = _10129
                            mem[_10816 + 100] = address(_10350)
                            mem[_10816 + 132] = 128
                            mem[_10816 + 164] = mem[_10816]
                            s = 0
                            while s < mem[_10816]:
                                mem[s + _10816 + 196] = mem[s + _10816 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10816] % 32:
                                require ext_code.size(address(_10606))
                                call address(_10606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10129, address(_10350), 128, mem[_10816 + 164 len mem[_10816] + 32]
                            else:
                                mem[floor32(mem[_10816]) + _10816 + 196] = mem[floor32(mem[_10816]) + _10816 + -(mem[_10816] % 32) + 228 len mem[_10816] % 32]
                                require ext_code.size(address(_10606))
                                call address(_10606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10129, address(_10350), 128, mem[_10816], mem[_10816 + 196 len floor32(mem[_10816]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10479 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10607 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10607 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10607 + 36] = _10129
                            mem[_10607 + 68] = 0
                            mem[_10607 + 100] = msg.sender
                            mem[_10607 + 132] = 128
                            mem[_10607 + 164] = mem[_10607]
                            s = 0
                            while s < mem[_10607]:
                                mem[s + _10607 + 196] = mem[s + _10607 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10607] % 32:
                                require ext_code.size(address(_10479))
                                call address(_10479).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10129, 0, msg.sender, 128, mem[_10607 + 164 len mem[_10607] + 32]
                            else:
                                mem[floor32(mem[_10607]) + _10607 + 196] = mem[floor32(mem[_10607]) + _10607 + -(mem[_10607] % 32) + 228 len mem[_10607] % 32]
                                require ext_code.size(address(_10479))
                                call address(_10479).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10129, 0, msg.sender, 128, mem[_10607], mem[_10607 + 196 len floor32(mem[_10607]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10352 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10608 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10820 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10820 + 36] = _10129
                            mem[_10820 + 68] = 0
                            mem[_10820 + 100] = address(_10352)
                            mem[_10820 + 132] = 128
                            mem[_10820 + 164] = mem[_10820]
                            s = 0
                            while s < mem[_10820]:
                                mem[s + _10820 + 196] = mem[s + _10820 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10820] % 32:
                                require ext_code.size(address(_10608))
                                call address(_10608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10129, 0, address(_10352), 128, mem[_10820 + 164 len mem[_10820] + 32]
                            else:
                                mem[floor32(mem[_10820]) + _10820 + 196] = mem[floor32(mem[_10820]) + _10820 + -(mem[_10820] % 32) + 228 len mem[_10820] % 32]
                                require ext_code.size(address(_10608))
                                call address(_10608).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10129, 0, address(_10352), 128, mem[_10820], mem[_10820 + 196 len floor32(mem[_10820]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10130 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10481 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10609 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10609 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10609 + 36] = 0
                            mem[_10609 + 68] = _10130
                            mem[_10609 + 100] = msg.sender
                            mem[_10609 + 132] = 128
                            mem[_10609 + 164] = mem[_10609]
                            s = 0
                            while s < mem[_10609]:
                                mem[s + _10609 + 196] = mem[s + _10609 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10609] % 32:
                                require ext_code.size(address(_10481))
                                call address(_10481).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10130, msg.sender, 128, mem[_10609 + 164 len mem[_10609] + 32]
                            else:
                                mem[floor32(mem[_10609]) + _10609 + 196] = mem[floor32(mem[_10609]) + _10609 + -(mem[_10609] % 32) + 228 len mem[_10609] % 32]
                                require ext_code.size(address(_10481))
                                call address(_10481).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10130, msg.sender, 128, mem[_10609], mem[_10609 + 196 len floor32(mem[_10609]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10354 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10610 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10824 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10824 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10824 + 36] = 0
                            mem[_10824 + 68] = _10130
                            mem[_10824 + 100] = address(_10354)
                            mem[_10824 + 132] = 128
                            mem[_10824 + 164] = mem[_10824]
                            s = 0
                            while s < mem[_10824]:
                                mem[s + _10824 + 196] = mem[s + _10824 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10824] % 32:
                                require ext_code.size(address(_10610))
                                call address(_10610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10130, address(_10354), 128, mem[_10824 + 164 len mem[_10824] + 32]
                            else:
                                mem[floor32(mem[_10824]) + _10824 + 196] = mem[floor32(mem[_10824]) + _10824 + -(mem[_10824] % 32) + 228 len mem[_10824] % 32]
                                require ext_code.size(address(_10610))
                                call address(_10610).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10130, address(_10354), 128, mem[_10824], mem[_10824 + 196 len floor32(mem[_10824]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10483 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10611 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10611 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10611 + 36] = _10130
                            mem[_10611 + 68] = 0
                            mem[_10611 + 100] = msg.sender
                            mem[_10611 + 132] = 128
                            mem[_10611 + 164] = mem[_10611]
                            s = 0
                            while s < mem[_10611]:
                                mem[s + _10611 + 196] = mem[s + _10611 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10611] % 32:
                                require ext_code.size(address(_10483))
                                call address(_10483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10130, 0, msg.sender, 128, mem[_10611 + 164 len mem[_10611] + 32]
                            else:
                                mem[floor32(mem[_10611]) + _10611 + 196] = mem[floor32(mem[_10611]) + _10611 + -(mem[_10611] % 32) + 228 len mem[_10611] % 32]
                                require ext_code.size(address(_10483))
                                call address(_10483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10130, 0, msg.sender, 128, mem[_10611], mem[_10611 + 196 len floor32(mem[_10611]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10356 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                            _10612 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                            _10828 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10828 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10828 + 36] = _10130
                            mem[_10828 + 68] = 0
                            mem[_10828 + 100] = address(_10356)
                            mem[_10828 + 132] = 128
                            mem[_10828 + 164] = mem[_10828]
                            s = 0
                            while s < mem[_10828]:
                                mem[s + _10828 + 196] = mem[s + _10828 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10828] % 32:
                                require ext_code.size(address(_10612))
                                call address(_10612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10130, 0, address(_10356), 128, mem[_10828 + 164 len mem[_10828] + 32]
                            else:
                                mem[floor32(mem[_10828]) + _10828 + 196] = mem[floor32(mem[_10828]) + _10828 + -(mem[_10828] % 32) + 228 len mem[_10828] % 32]
                                require ext_code.size(address(_10612))
                                call address(_10612).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10130, 0, address(_10356), 128, mem[_10828], mem[_10828 + 196 len floor32(mem[_10828]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9927 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9927) + 32]
        require return_data.size >= 32
        if not mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
        mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10131 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10485 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10613 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10613 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10613 + 36] = 0
                        mem[_10613 + 68] = _10131
                        mem[_10613 + 100] = msg.sender
                        mem[_10613 + 132] = 128
                        mem[_10613 + 164] = mem[_10613]
                        s = 0
                        while s < mem[_10613]:
                            mem[s + _10613 + 196] = mem[s + _10613 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10613] % 32:
                            require ext_code.size(address(_10485))
                            call address(_10485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10131, msg.sender, 128, mem[_10613 + 164 len mem[_10613] + 32]
                        else:
                            mem[floor32(mem[_10613]) + _10613 + 196] = mem[floor32(mem[_10613]) + _10613 + -(mem[_10613] % 32) + 228 len mem[_10613] % 32]
                            require ext_code.size(address(_10485))
                            call address(_10485).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10131, msg.sender, 128, mem[_10613], mem[_10613 + 196 len floor32(mem[_10613]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10358 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10614 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10832 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10832 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10832 + 36] = 0
                        mem[_10832 + 68] = _10131
                        mem[_10832 + 100] = address(_10358)
                        mem[_10832 + 132] = 128
                        mem[_10832 + 164] = mem[_10832]
                        s = 0
                        while s < mem[_10832]:
                            mem[s + _10832 + 196] = mem[s + _10832 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10832] % 32:
                            require ext_code.size(address(_10614))
                            call address(_10614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10131, address(_10358), 128, mem[_10832 + 164 len mem[_10832] + 32]
                        else:
                            mem[floor32(mem[_10832]) + _10832 + 196] = mem[floor32(mem[_10832]) + _10832 + -(mem[_10832] % 32) + 228 len mem[_10832] % 32]
                            require ext_code.size(address(_10614))
                            call address(_10614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10131, address(_10358), 128, mem[_10832], mem[_10832 + 196 len floor32(mem[_10832]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10487 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10615 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10615 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10615 + 36] = _10131
                        mem[_10615 + 68] = 0
                        mem[_10615 + 100] = msg.sender
                        mem[_10615 + 132] = 128
                        mem[_10615 + 164] = mem[_10615]
                        s = 0
                        while s < mem[_10615]:
                            mem[s + _10615 + 196] = mem[s + _10615 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10615] % 32:
                            require ext_code.size(address(_10487))
                            call address(_10487).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10131, 0, msg.sender, 128, mem[_10615 + 164 len mem[_10615] + 32]
                        else:
                            mem[floor32(mem[_10615]) + _10615 + 196] = mem[floor32(mem[_10615]) + _10615 + -(mem[_10615] % 32) + 228 len mem[_10615] % 32]
                            require ext_code.size(address(_10487))
                            call address(_10487).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10131, 0, msg.sender, 128, mem[_10615], mem[_10615 + 196 len floor32(mem[_10615]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10360 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10616 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10836 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10836 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10836 + 36] = _10131
                        mem[_10836 + 68] = 0
                        mem[_10836 + 100] = address(_10360)
                        mem[_10836 + 132] = 128
                        mem[_10836 + 164] = mem[_10836]
                        s = 0
                        while s < mem[_10836]:
                            mem[s + _10836 + 196] = mem[s + _10836 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10836] % 32:
                            require ext_code.size(address(_10616))
                            call address(_10616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10131, 0, address(_10360), 128, mem[_10836 + 164 len mem[_10836] + 32]
                        else:
                            mem[floor32(mem[_10836]) + _10836 + 196] = mem[floor32(mem[_10836]) + _10836 + -(mem[_10836] % 32) + 228 len mem[_10836] % 32]
                            require ext_code.size(address(_10616))
                            call address(_10616).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10131, 0, address(_10360), 128, mem[_10836], mem[_10836 + 196 len floor32(mem[_10836]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10132 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10489 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10617 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10617 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10617 + 36] = 0
                        mem[_10617 + 68] = _10132
                        mem[_10617 + 100] = msg.sender
                        mem[_10617 + 132] = 128
                        mem[_10617 + 164] = mem[_10617]
                        s = 0
                        while s < mem[_10617]:
                            mem[s + _10617 + 196] = mem[s + _10617 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10617] % 32:
                            require ext_code.size(address(_10489))
                            call address(_10489).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10132, msg.sender, 128, mem[_10617 + 164 len mem[_10617] + 32]
                        else:
                            mem[floor32(mem[_10617]) + _10617 + 196] = mem[floor32(mem[_10617]) + _10617 + -(mem[_10617] % 32) + 228 len mem[_10617] % 32]
                            require ext_code.size(address(_10489))
                            call address(_10489).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10132, msg.sender, 128, mem[_10617], mem[_10617 + 196 len floor32(mem[_10617]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10362 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10618 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10840 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10840 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10840 + 36] = 0
                        mem[_10840 + 68] = _10132
                        mem[_10840 + 100] = address(_10362)
                        mem[_10840 + 132] = 128
                        mem[_10840 + 164] = mem[_10840]
                        s = 0
                        while s < mem[_10840]:
                            mem[s + _10840 + 196] = mem[s + _10840 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10840] % 32:
                            require ext_code.size(address(_10618))
                            call address(_10618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10132, address(_10362), 128, mem[_10840 + 164 len mem[_10840] + 32]
                        else:
                            mem[floor32(mem[_10840]) + _10840 + 196] = mem[floor32(mem[_10840]) + _10840 + -(mem[_10840] % 32) + 228 len mem[_10840] % 32]
                            require ext_code.size(address(_10618))
                            call address(_10618).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10132, address(_10362), 128, mem[_10840], mem[_10840 + 196 len floor32(mem[_10840]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10491 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10619 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10619 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10619 + 36] = _10132
                        mem[_10619 + 68] = 0
                        mem[_10619 + 100] = msg.sender
                        mem[_10619 + 132] = 128
                        mem[_10619 + 164] = mem[_10619]
                        s = 0
                        while s < mem[_10619]:
                            mem[s + _10619 + 196] = mem[s + _10619 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10619] % 32:
                            require ext_code.size(address(_10491))
                            call address(_10491).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10132, 0, msg.sender, 128, mem[_10619 + 164 len mem[_10619] + 32]
                        else:
                            mem[floor32(mem[_10619]) + _10619 + 196] = mem[floor32(mem[_10619]) + _10619 + -(mem[_10619] % 32) + 228 len mem[_10619] % 32]
                            require ext_code.size(address(_10491))
                            call address(_10491).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10132, 0, msg.sender, 128, mem[_10619], mem[_10619 + 196 len floor32(mem[_10619]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10364 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10620 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10844 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10844 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10844 + 36] = _10132
                        mem[_10844 + 68] = 0
                        mem[_10844 + 100] = address(_10364)
                        mem[_10844 + 132] = 128
                        mem[_10844 + 164] = mem[_10844]
                        s = 0
                        while s < mem[_10844]:
                            mem[s + _10844 + 196] = mem[s + _10844 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10844] % 32:
                            require ext_code.size(address(_10620))
                            call address(_10620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10132, 0, address(_10364), 128, mem[_10844 + 164 len mem[_10844] + 32]
                        else:
                            mem[floor32(mem[_10844]) + _10844 + 196] = mem[floor32(mem[_10844]) + _10844 + -(mem[_10844] % 32) + 228 len mem[_10844] % 32]
                            require ext_code.size(address(_10620))
                            call address(_10620).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10132, 0, address(_10364), 128, mem[_10844], mem[_10844 + 196 len floor32(mem[_10844]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        _9931 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
        return 32, mem[mem[64] + 32 len (32 * _9931) + 32]
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
    require 0 < ('cd', 36).length + 1
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = cd[4]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[(32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 160]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _5379 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        _5392 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 361 len 27]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                revert with 0, 
                            32,
                            43,
                            0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
            if address(_5379) == address(_5379):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
        else:
            if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20])
            staticcall mem[(32 * idx) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 204 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 192]
            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] <= 0:
                revert with 0, 
                            32,
                            43,
                            0x48556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
            if address(_5392) == address(_5379):
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                    if Mask(112, 0, ext_call.return_data[32]):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[0])
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                else:
                    require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
            else:
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x53556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 364 len 24]
                if not uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                    if Mask(112, 0, ext_call.return_data[0]):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'ds-math-add-overflow'
                    require 1000 * Mask(112, 0, ext_call.return_data[32])
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                else:
                    require uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) / uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000):
                            revert with 0, 'ds-math-mul-overflow'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000)) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                        mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] * uint16(-mem[(32 * idx) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 255 len 1] + 1000))
        idx = idx + 1
        continue 
    require mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
    if mem[(32 * mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224] - 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256] < cd[4]:
        revert with 0, 
                    32,
                    43,
                    0x59556e69737761705632526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 367 len 21]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 292] = msg.sender
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 324] = address(('cd', 36)[0])
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 356] = cd[4]
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 256] = 100
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 288 len 4] = unknown_0x23b872dd(?????)
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388 len 96] = 0, msg.sender, address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 512 len 4] = uint32(cd[4])
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
         gas gas_remaining wei
        args cd[4], address(('cd', 36)[0]), Mask(224, 32, cd[4]) >> 32 >> 224, mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 484 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                        uint32(cd[4]),
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
        if not ('cd', 36).length:
            mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10133 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10493 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10621 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10621 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10621 + 36] = 0
                            mem[_10621 + 68] = _10133
                            mem[_10621 + 100] = msg.sender
                            mem[_10621 + 132] = 128
                            mem[_10621 + 164] = mem[_10621]
                            s = 0
                            while s < mem[_10621]:
                                mem[s + _10621 + 196] = mem[s + _10621 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10621] % 32:
                                require ext_code.size(address(_10493))
                                call address(_10493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10133, msg.sender, 128, mem[_10621 + 164 len mem[_10621] + 32]
                            else:
                                mem[floor32(mem[_10621]) + _10621 + 196] = mem[floor32(mem[_10621]) + _10621 + -(mem[_10621] % 32) + 228 len mem[_10621] % 32]
                                require ext_code.size(address(_10493))
                                call address(_10493).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10133, msg.sender, 128, mem[_10621], mem[_10621 + 196 len floor32(mem[_10621]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10366 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10622 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10848 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10848 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10848 + 36] = 0
                            mem[_10848 + 68] = _10133
                            mem[_10848 + 100] = address(_10366)
                            mem[_10848 + 132] = 128
                            mem[_10848 + 164] = mem[_10848]
                            s = 0
                            while s < mem[_10848]:
                                mem[s + _10848 + 196] = mem[s + _10848 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10848] % 32:
                                require ext_code.size(address(_10622))
                                call address(_10622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10133, address(_10366), 128, mem[_10848 + 164 len mem[_10848] + 32]
                            else:
                                mem[floor32(mem[_10848]) + _10848 + 196] = mem[floor32(mem[_10848]) + _10848 + -(mem[_10848] % 32) + 228 len mem[_10848] % 32]
                                require ext_code.size(address(_10622))
                                call address(_10622).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10133, address(_10366), 128, mem[_10848], mem[_10848 + 196 len floor32(mem[_10848]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10495 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10623 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10623 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10623 + 36] = _10133
                            mem[_10623 + 68] = 0
                            mem[_10623 + 100] = msg.sender
                            mem[_10623 + 132] = 128
                            mem[_10623 + 164] = mem[_10623]
                            s = 0
                            while s < mem[_10623]:
                                mem[s + _10623 + 196] = mem[s + _10623 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10623] % 32:
                                require ext_code.size(address(_10495))
                                call address(_10495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10133, 0, msg.sender, 128, mem[_10623 + 164 len mem[_10623] + 32]
                            else:
                                mem[floor32(mem[_10623]) + _10623 + 196] = mem[floor32(mem[_10623]) + _10623 + -(mem[_10623] % 32) + 228 len mem[_10623] % 32]
                                require ext_code.size(address(_10495))
                                call address(_10495).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10133, 0, msg.sender, 128, mem[_10623], mem[_10623 + 196 len floor32(mem[_10623]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10368 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10624 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10852 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10852 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10852 + 36] = _10133
                            mem[_10852 + 68] = 0
                            mem[_10852 + 100] = address(_10368)
                            mem[_10852 + 132] = 128
                            mem[_10852 + 164] = mem[_10852]
                            s = 0
                            while s < mem[_10852]:
                                mem[s + _10852 + 196] = mem[s + _10852 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10852] % 32:
                                require ext_code.size(address(_10624))
                                call address(_10624).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10133, 0, address(_10368), 128, mem[_10852 + 164 len mem[_10852] + 32]
                            else:
                                mem[floor32(mem[_10852]) + _10852 + 196] = mem[floor32(mem[_10852]) + _10852 + -(mem[_10852] % 32) + 228 len mem[_10852] % 32]
                                require ext_code.size(address(_10624))
                                call address(_10624).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10133, 0, address(_10368), 128, mem[_10852], mem[_10852 + 196 len floor32(mem[_10852]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                    _10134 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                    if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10497 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10625 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10625 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10625 + 36] = 0
                            mem[_10625 + 68] = _10134
                            mem[_10625 + 100] = msg.sender
                            mem[_10625 + 132] = 128
                            mem[_10625 + 164] = mem[_10625]
                            s = 0
                            while s < mem[_10625]:
                                mem[s + _10625 + 196] = mem[s + _10625 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10625] % 32:
                                require ext_code.size(address(_10497))
                                call address(_10497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10134, msg.sender, 128, mem[_10625 + 164 len mem[_10625] + 32]
                            else:
                                mem[floor32(mem[_10625]) + _10625 + 196] = mem[floor32(mem[_10625]) + _10625 + -(mem[_10625] % 32) + 228 len mem[_10625] % 32]
                                require ext_code.size(address(_10497))
                                call address(_10497).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10134, msg.sender, 128, mem[_10625], mem[_10625 + 196 len floor32(mem[_10625]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10370 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10626 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10856 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10856 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10856 + 36] = 0
                            mem[_10856 + 68] = _10134
                            mem[_10856 + 100] = address(_10370)
                            mem[_10856 + 132] = 128
                            mem[_10856 + 164] = mem[_10856]
                            s = 0
                            while s < mem[_10856]:
                                mem[s + _10856 + 196] = mem[s + _10856 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10856] % 32:
                                require ext_code.size(address(_10626))
                                call address(_10626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10134, address(_10370), 128, mem[_10856 + 164 len mem[_10856] + 32]
                            else:
                                mem[floor32(mem[_10856]) + _10856 + 196] = mem[floor32(mem[_10856]) + _10856 + -(mem[_10856] % 32) + 228 len mem[_10856] % 32]
                                require ext_code.size(address(_10626))
                                call address(_10626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _10134, address(_10370), 128, mem[_10856], mem[_10856 + 196 len floor32(mem[_10856]) + 32]
                    else:
                        if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10499 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10627 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10627 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10627 + 36] = _10134
                            mem[_10627 + 68] = 0
                            mem[_10627 + 100] = msg.sender
                            mem[_10627 + 132] = 128
                            mem[_10627 + 164] = mem[_10627]
                            s = 0
                            while s < mem[_10627]:
                                mem[s + _10627 + 196] = mem[s + _10627 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10627] % 32:
                                require ext_code.size(address(_10499))
                                call address(_10499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10134, 0, msg.sender, 128, mem[_10627 + 164 len mem[_10627] + 32]
                            else:
                                mem[floor32(mem[_10627]) + _10627 + 196] = mem[floor32(mem[_10627]) + _10627 + -(mem[_10627] % 32) + 228 len mem[_10627] % 32]
                                require ext_code.size(address(_10499))
                                call address(_10499).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10134, 0, msg.sender, 128, mem[_10627], mem[_10627 + 196 len floor32(mem[_10627]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10372 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                            _10628 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                            _10860 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10860 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_10860 + 36] = _10134
                            mem[_10860 + 68] = 0
                            mem[_10860 + 100] = address(_10372)
                            mem[_10860 + 132] = 128
                            mem[_10860 + 164] = mem[_10860]
                            s = 0
                            while s < mem[_10860]:
                                mem[s + _10860 + 196] = mem[s + _10860 + 32]
                                s = s + 32
                                continue 
                            if not mem[_10860] % 32:
                                require ext_code.size(address(_10628))
                                call address(_10628).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10134, 0, address(_10372), 128, mem[_10860 + 164 len mem[_10860] + 32]
                            else:
                                mem[floor32(mem[_10860]) + _10860 + 196] = mem[floor32(mem[_10860]) + _10860 + -(mem[_10860] % 32) + 228 len mem[_10860] % 32]
                                require ext_code.size(address(_10628))
                                call address(_10628).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _10134, 0, address(_10372), 128, mem[_10860], mem[_10860 + 196 len floor32(mem[_10860]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _9935 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
            return 32, mem[mem[64] + 32 len (32 * _9935) + 32]
        require ('cd', 36).length >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 505 len 7],
                        uint32(cd[4]),
                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 516 len 4]
        mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420] = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10135 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10501 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10629 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10629 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10629 + 36] = 0
                        mem[_10629 + 68] = _10135
                        mem[_10629 + 100] = msg.sender
                        mem[_10629 + 132] = 128
                        mem[_10629 + 164] = mem[_10629]
                        s = 0
                        while s < mem[_10629]:
                            mem[s + _10629 + 196] = mem[s + _10629 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10629] % 32:
                            require ext_code.size(address(_10501))
                            call address(_10501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10135, msg.sender, 128, mem[_10629 + 164 len mem[_10629] + 32]
                        else:
                            mem[floor32(mem[_10629]) + _10629 + 196] = mem[floor32(mem[_10629]) + _10629 + -(mem[_10629] % 32) + 228 len mem[_10629] % 32]
                            require ext_code.size(address(_10501))
                            call address(_10501).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10135, msg.sender, 128, mem[_10629], mem[_10629 + 196 len floor32(mem[_10629]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10374 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10630 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10864 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10864 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10864 + 36] = 0
                        mem[_10864 + 68] = _10135
                        mem[_10864 + 100] = address(_10374)
                        mem[_10864 + 132] = 128
                        mem[_10864 + 164] = mem[_10864]
                        s = 0
                        while s < mem[_10864]:
                            mem[s + _10864 + 196] = mem[s + _10864 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10864] % 32:
                            require ext_code.size(address(_10630))
                            call address(_10630).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10135, address(_10374), 128, mem[_10864 + 164 len mem[_10864] + 32]
                        else:
                            mem[floor32(mem[_10864]) + _10864 + 196] = mem[floor32(mem[_10864]) + _10864 + -(mem[_10864] % 32) + 228 len mem[_10864] % 32]
                            require ext_code.size(address(_10630))
                            call address(_10630).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10135, address(_10374), 128, mem[_10864], mem[_10864 + 196 len floor32(mem[_10864]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10503 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10631 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10631 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10631 + 36] = _10135
                        mem[_10631 + 68] = 0
                        mem[_10631 + 100] = msg.sender
                        mem[_10631 + 132] = 128
                        mem[_10631 + 164] = mem[_10631]
                        s = 0
                        while s < mem[_10631]:
                            mem[s + _10631 + 196] = mem[s + _10631 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10631] % 32:
                            require ext_code.size(address(_10503))
                            call address(_10503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10135, 0, msg.sender, 128, mem[_10631 + 164 len mem[_10631] + 32]
                        else:
                            mem[floor32(mem[_10631]) + _10631 + 196] = mem[floor32(mem[_10631]) + _10631 + -(mem[_10631] % 32) + 228 len mem[_10631] % 32]
                            require ext_code.size(address(_10503))
                            call address(_10503).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10135, 0, msg.sender, 128, mem[_10631], mem[_10631 + 196 len floor32(mem[_10631]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10376 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10632 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10868 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10868 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10868 + 36] = _10135
                        mem[_10868 + 68] = 0
                        mem[_10868 + 100] = address(_10376)
                        mem[_10868 + 132] = 128
                        mem[_10868 + 164] = mem[_10868]
                        s = 0
                        while s < mem[_10868]:
                            mem[s + _10868 + 196] = mem[s + _10868 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10868] % 32:
                            require ext_code.size(address(_10632))
                            call address(_10632).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10135, 0, address(_10376), 128, mem[_10868 + 164 len mem[_10868] + 32]
                        else:
                            mem[floor32(mem[_10868]) + _10868 + 196] = mem[floor32(mem[_10868]) + _10868 + -(mem[_10868] % 32) + 228 len mem[_10868] % 32]
                            require ext_code.size(address(_10632))
                            call address(_10632).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10135, 0, address(_10376), 128, mem[_10868], mem[_10868 + 196 len floor32(mem[_10868]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10136 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10505 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10633 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10633 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10633 + 36] = 0
                        mem[_10633 + 68] = _10136
                        mem[_10633 + 100] = msg.sender
                        mem[_10633 + 132] = 128
                        mem[_10633 + 164] = mem[_10633]
                        s = 0
                        while s < mem[_10633]:
                            mem[s + _10633 + 196] = mem[s + _10633 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10633] % 32:
                            require ext_code.size(address(_10505))
                            call address(_10505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10136, msg.sender, 128, mem[_10633 + 164 len mem[_10633] + 32]
                        else:
                            mem[floor32(mem[_10633]) + _10633 + 196] = mem[floor32(mem[_10633]) + _10633 + -(mem[_10633] % 32) + 228 len mem[_10633] % 32]
                            require ext_code.size(address(_10505))
                            call address(_10505).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10136, msg.sender, 128, mem[_10633], mem[_10633 + 196 len floor32(mem[_10633]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10378 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10634 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10872 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10872 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10872 + 36] = 0
                        mem[_10872 + 68] = _10136
                        mem[_10872 + 100] = address(_10378)
                        mem[_10872 + 132] = 128
                        mem[_10872 + 164] = mem[_10872]
                        s = 0
                        while s < mem[_10872]:
                            mem[s + _10872 + 196] = mem[s + _10872 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10872] % 32:
                            require ext_code.size(address(_10634))
                            call address(_10634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10136, address(_10378), 128, mem[_10872 + 164 len mem[_10872] + 32]
                        else:
                            mem[floor32(mem[_10872]) + _10872 + 196] = mem[floor32(mem[_10872]) + _10872 + -(mem[_10872] % 32) + 228 len mem[_10872] % 32]
                            require ext_code.size(address(_10634))
                            call address(_10634).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10136, address(_10378), 128, mem[_10872], mem[_10872 + 196 len floor32(mem[_10872]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10507 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10635 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10635 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10635 + 36] = _10136
                        mem[_10635 + 68] = 0
                        mem[_10635 + 100] = msg.sender
                        mem[_10635 + 132] = 128
                        mem[_10635 + 164] = mem[_10635]
                        s = 0
                        while s < mem[_10635]:
                            mem[s + _10635 + 196] = mem[s + _10635 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10635] % 32:
                            require ext_code.size(address(_10507))
                            call address(_10507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10136, 0, msg.sender, 128, mem[_10635 + 164 len mem[_10635] + 32]
                        else:
                            mem[floor32(mem[_10635]) + _10635 + 196] = mem[floor32(mem[_10635]) + _10635 + -(mem[_10635] % 32) + 228 len mem[_10635] % 32]
                            require ext_code.size(address(_10507))
                            call address(_10507).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10136, 0, msg.sender, 128, mem[_10635], mem[_10635 + 196 len floor32(mem[_10635]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10380 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388]
                        _10636 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]
                        _10876 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10876 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10876 + 36] = _10136
                        mem[_10876 + 68] = 0
                        mem[_10876 + 100] = address(_10380)
                        mem[_10876 + 132] = 128
                        mem[_10876 + 164] = mem[_10876]
                        s = 0
                        while s < mem[_10876]:
                            mem[s + _10876 + 196] = mem[s + _10876 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10876] % 32:
                            require ext_code.size(address(_10636))
                            call address(_10636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10136, 0, address(_10380), 128, mem[_10876 + 164 len mem[_10876] + 32]
                        else:
                            mem[floor32(mem[_10876]) + _10876 + 196] = mem[floor32(mem[_10876]) + _10876 + -(mem[_10876] % 32) + 228 len mem[_10876] % 32]
                            require ext_code.size(address(_10636))
                            call address(_10636).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10136, 0, address(_10380), 128, mem[_10876], mem[_10876 + 196 len floor32(mem[_10876]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        _9939 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
        return 32, mem[mem[64] + 32 len (32 * _9939) + 32]
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 388] = return_data.size
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    49,
                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
    if not return_data.size:
        mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
        mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10137 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10509 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10637 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10637 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10637 + 36] = 0
                        mem[_10637 + 68] = _10137
                        mem[_10637 + 100] = msg.sender
                        mem[_10637 + 132] = 128
                        mem[_10637 + 164] = mem[_10637]
                        s = 0
                        while s < mem[_10637]:
                            mem[s + _10637 + 196] = mem[s + _10637 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10637] % 32:
                            require ext_code.size(address(_10509))
                            call address(_10509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10137, msg.sender, 128, mem[_10637 + 164 len mem[_10637] + 32]
                        else:
                            mem[floor32(mem[_10637]) + _10637 + 196] = mem[floor32(mem[_10637]) + _10637 + -(mem[_10637] % 32) + 228 len mem[_10637] % 32]
                            require ext_code.size(address(_10509))
                            call address(_10509).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10137, msg.sender, 128, mem[_10637], mem[_10637 + 196 len floor32(mem[_10637]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10382 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10638 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10880 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10880 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10880 + 36] = 0
                        mem[_10880 + 68] = _10137
                        mem[_10880 + 100] = address(_10382)
                        mem[_10880 + 132] = 128
                        mem[_10880 + 164] = mem[_10880]
                        s = 0
                        while s < mem[_10880]:
                            mem[s + _10880 + 196] = mem[s + _10880 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10880] % 32:
                            require ext_code.size(address(_10638))
                            call address(_10638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10137, address(_10382), 128, mem[_10880 + 164 len mem[_10880] + 32]
                        else:
                            mem[floor32(mem[_10880]) + _10880 + 196] = mem[floor32(mem[_10880]) + _10880 + -(mem[_10880] % 32) + 228 len mem[_10880] % 32]
                            require ext_code.size(address(_10638))
                            call address(_10638).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10137, address(_10382), 128, mem[_10880], mem[_10880 + 196 len floor32(mem[_10880]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10511 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10639 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10639 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10639 + 36] = _10137
                        mem[_10639 + 68] = 0
                        mem[_10639 + 100] = msg.sender
                        mem[_10639 + 132] = 128
                        mem[_10639 + 164] = mem[_10639]
                        s = 0
                        while s < mem[_10639]:
                            mem[s + _10639 + 196] = mem[s + _10639 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10639] % 32:
                            require ext_code.size(address(_10511))
                            call address(_10511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10137, 0, msg.sender, 128, mem[_10639 + 164 len mem[_10639] + 32]
                        else:
                            mem[floor32(mem[_10639]) + _10639 + 196] = mem[floor32(mem[_10639]) + _10639 + -(mem[_10639] % 32) + 228 len mem[_10639] % 32]
                            require ext_code.size(address(_10511))
                            call address(_10511).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10137, 0, msg.sender, 128, mem[_10639], mem[_10639 + 196 len floor32(mem[_10639]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10384 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10640 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10884 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10884 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10884 + 36] = _10137
                        mem[_10884 + 68] = 0
                        mem[_10884 + 100] = address(_10384)
                        mem[_10884 + 132] = 128
                        mem[_10884 + 164] = mem[_10884]
                        s = 0
                        while s < mem[_10884]:
                            mem[s + _10884 + 196] = mem[s + _10884 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10884] % 32:
                            require ext_code.size(address(_10640))
                            call address(_10640).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10137, 0, address(_10384), 128, mem[_10884 + 164 len mem[_10884] + 32]
                        else:
                            mem[floor32(mem[_10884]) + _10884 + 196] = mem[floor32(mem[_10884]) + _10884 + -(mem[_10884] % 32) + 228 len mem[_10884] % 32]
                            require ext_code.size(address(_10640))
                            call address(_10640).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10137, 0, address(_10384), 128, mem[_10884], mem[_10884 + 196 len floor32(mem[_10884]) + 32]
            else:
                if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
                _10138 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
                if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10513 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10641 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10641 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10641 + 36] = 0
                        mem[_10641 + 68] = _10138
                        mem[_10641 + 100] = msg.sender
                        mem[_10641 + 132] = 128
                        mem[_10641 + 164] = mem[_10641]
                        s = 0
                        while s < mem[_10641]:
                            mem[s + _10641 + 196] = mem[s + _10641 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10641] % 32:
                            require ext_code.size(address(_10513))
                            call address(_10513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10138, msg.sender, 128, mem[_10641 + 164 len mem[_10641] + 32]
                        else:
                            mem[floor32(mem[_10641]) + _10641 + 196] = mem[floor32(mem[_10641]) + _10641 + -(mem[_10641] % 32) + 228 len mem[_10641] % 32]
                            require ext_code.size(address(_10513))
                            call address(_10513).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10138, msg.sender, 128, mem[_10641], mem[_10641 + 196 len floor32(mem[_10641]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10386 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10642 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10888 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10888 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10888 + 36] = 0
                        mem[_10888 + 68] = _10138
                        mem[_10888 + 100] = address(_10386)
                        mem[_10888 + 132] = 128
                        mem[_10888 + 164] = mem[_10888]
                        s = 0
                        while s < mem[_10888]:
                            mem[s + _10888 + 196] = mem[s + _10888 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10888] % 32:
                            require ext_code.size(address(_10642))
                            call address(_10642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10138, address(_10386), 128, mem[_10888 + 164 len mem[_10888] + 32]
                        else:
                            mem[floor32(mem[_10888]) + _10888 + 196] = mem[floor32(mem[_10888]) + _10888 + -(mem[_10888] % 32) + 228 len mem[_10888] % 32]
                            require ext_code.size(address(_10642))
                            call address(_10642).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _10138, address(_10386), 128, mem[_10888], mem[_10888 + 196 len floor32(mem[_10888]) + 32]
                else:
                    if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10515 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10643 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10643 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10643 + 36] = _10138
                        mem[_10643 + 68] = 0
                        mem[_10643 + 100] = msg.sender
                        mem[_10643 + 132] = 128
                        mem[_10643 + 164] = mem[_10643]
                        s = 0
                        while s < mem[_10643]:
                            mem[s + _10643 + 196] = mem[s + _10643 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10643] % 32:
                            require ext_code.size(address(_10515))
                            call address(_10515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10138, 0, msg.sender, 128, mem[_10643 + 164 len mem[_10643] + 32]
                        else:
                            mem[floor32(mem[_10643]) + _10643 + 196] = mem[floor32(mem[_10643]) + _10643 + -(mem[_10643] % 32) + 228 len mem[_10643] % 32]
                            require ext_code.size(address(_10515))
                            call address(_10515).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10138, 0, msg.sender, 128, mem[_10643], mem[_10643 + 196 len floor32(mem[_10643]) + 32]
                    else:
                        require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10388 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                        _10644 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                        _10892 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_10892 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_10892 + 36] = _10138
                        mem[_10892 + 68] = 0
                        mem[_10892 + 100] = address(_10388)
                        mem[_10892 + 132] = 128
                        mem[_10892 + 164] = mem[_10892]
                        s = 0
                        while s < mem[_10892]:
                            mem[s + _10892 + 196] = mem[s + _10892 + 32]
                            s = s + 32
                            continue 
                        if not mem[_10892] % 32:
                            require ext_code.size(address(_10644))
                            call address(_10644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10138, 0, address(_10388), 128, mem[_10892 + 164 len mem[_10892] + 32]
                        else:
                            mem[floor32(mem[_10892]) + _10892 + 196] = mem[floor32(mem[_10892]) + _10892 + -(mem[_10892] % 32) + 228 len mem[_10892] % 32]
                            require ext_code.size(address(_10644))
                            call address(_10644).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _10138, 0, address(_10388), 128, mem[_10892], mem[_10892 + 196 len floor32(mem[_10892]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        _9943 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
        mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
        return 32, mem[mem[64] + 32 len (32 * _9943) + 32]
    require return_data.size >= 32
    if not mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + 420]:
        revert with 0, 
                    32,
                    49,
                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 506 len 15]
    mem[64] = (32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] = ('cd', 36).length
    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 68).length) + (98 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421] = 0
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            revert with 0, 32, 37, 0x64556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _10139 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10517 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10645 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10645 + 36] = 0
                    mem[_10645 + 68] = _10139
                    mem[_10645 + 100] = msg.sender
                    mem[_10645 + 132] = 128
                    mem[_10645 + 164] = mem[_10645]
                    s = 0
                    while s < mem[_10645]:
                        mem[s + _10645 + 196] = mem[s + _10645 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10645] % 32:
                        require ext_code.size(address(_10517))
                        call address(_10517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10139, msg.sender, 128, mem[_10645 + 164 len mem[_10645] + 32]
                    else:
                        mem[floor32(mem[_10645]) + _10645 + 196] = mem[floor32(mem[_10645]) + _10645 + -(mem[_10645] % 32) + 228 len mem[_10645] % 32]
                        require ext_code.size(address(_10517))
                        call address(_10517).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10139, msg.sender, 128, mem[_10645], mem[_10645 + 196 len floor32(mem[_10645]) + 32]
                else:
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10390 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10646 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10896 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10896 + 36] = 0
                    mem[_10896 + 68] = _10139
                    mem[_10896 + 100] = address(_10390)
                    mem[_10896 + 132] = 128
                    mem[_10896 + 164] = mem[_10896]
                    s = 0
                    while s < mem[_10896]:
                        mem[s + _10896 + 196] = mem[s + _10896 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10896] % 32:
                        require ext_code.size(address(_10646))
                        call address(_10646).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10139, address(_10390), 128, mem[_10896 + 164 len mem[_10896] + 32]
                    else:
                        mem[floor32(mem[_10896]) + _10896 + 196] = mem[floor32(mem[_10896]) + _10896 + -(mem[_10896] % 32) + 228 len mem[_10896] % 32]
                        require ext_code.size(address(_10646))
                        call address(_10646).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10139, address(_10390), 128, mem[_10896], mem[_10896 + 196 len floor32(mem[_10896]) + 32]
            else:
                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10519 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10647 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10647 + 36] = _10139
                    mem[_10647 + 68] = 0
                    mem[_10647 + 100] = msg.sender
                    mem[_10647 + 132] = 128
                    mem[_10647 + 164] = mem[_10647]
                    s = 0
                    while s < mem[_10647]:
                        mem[s + _10647 + 196] = mem[s + _10647 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10647] % 32:
                        require ext_code.size(address(_10519))
                        call address(_10519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10139, 0, msg.sender, 128, mem[_10647 + 164 len mem[_10647] + 32]
                    else:
                        mem[floor32(mem[_10647]) + _10647 + 196] = mem[floor32(mem[_10647]) + _10647 + -(mem[_10647] % 32) + 228 len mem[_10647] % 32]
                        require ext_code.size(address(_10519))
                        call address(_10519).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10139, 0, msg.sender, 128, mem[_10647], mem[_10647 + 196 len floor32(mem[_10647]) + 32]
                else:
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10392 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10648 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10900 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10900 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10900 + 36] = _10139
                    mem[_10900 + 68] = 0
                    mem[_10900 + 100] = address(_10392)
                    mem[_10900 + 132] = 128
                    mem[_10900 + 164] = mem[_10900]
                    s = 0
                    while s < mem[_10900]:
                        mem[s + _10900 + 196] = mem[s + _10900 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10900] % 32:
                        require ext_code.size(address(_10648))
                        call address(_10648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10139, 0, address(_10392), 128, mem[_10900 + 164 len mem[_10900] + 32]
                    else:
                        mem[floor32(mem[_10900]) + _10900 + 196] = mem[floor32(mem[_10900]) + _10900 + -(mem[_10900] % 32) + 228 len mem[_10900] % 32]
                        require ext_code.size(address(_10648))
                        call address(_10648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10139, 0, address(_10392), 128, mem[_10900], mem[_10900 + 196 len floor32(mem[_10900]) + 32]
        else:
            if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
            _10140 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10521 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10649 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10649 + 36] = 0
                    mem[_10649 + 68] = _10140
                    mem[_10649 + 100] = msg.sender
                    mem[_10649 + 132] = 128
                    mem[_10649 + 164] = mem[_10649]
                    s = 0
                    while s < mem[_10649]:
                        mem[s + _10649 + 196] = mem[s + _10649 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10649] % 32:
                        require ext_code.size(address(_10521))
                        call address(_10521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10140, msg.sender, 128, mem[_10649 + 164 len mem[_10649] + 32]
                    else:
                        mem[floor32(mem[_10649]) + _10649 + 196] = mem[floor32(mem[_10649]) + _10649 + -(mem[_10649] % 32) + 228 len mem[_10649] % 32]
                        require ext_code.size(address(_10521))
                        call address(_10521).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10140, msg.sender, 128, mem[_10649], mem[_10649 + 196 len floor32(mem[_10649]) + 32]
                else:
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10394 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10650 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10904 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10904 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10904 + 36] = 0
                    mem[_10904 + 68] = _10140
                    mem[_10904 + 100] = address(_10394)
                    mem[_10904 + 132] = 128
                    mem[_10904 + 164] = mem[_10904]
                    s = 0
                    while s < mem[_10904]:
                        mem[s + _10904 + 196] = mem[s + _10904 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10904] % 32:
                        require ext_code.size(address(_10650))
                        call address(_10650).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10140, address(_10394), 128, mem[_10904 + 164 len mem[_10904] + 32]
                    else:
                        mem[floor32(mem[_10904]) + _10904 + 196] = mem[floor32(mem[_10904]) + _10904 + -(mem[_10904] % 32) + 228 len mem[_10904] % 32]
                        require ext_code.size(address(_10650))
                        call address(_10650).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _10140, address(_10394), 128, mem[_10904], mem[_10904 + 196 len floor32(mem[_10904]) + 32]
            else:
                if idx == mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389] - 1:
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10523 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10651 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10651 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10651 + 36] = _10140
                    mem[_10651 + 68] = 0
                    mem[_10651 + 100] = msg.sender
                    mem[_10651 + 132] = 128
                    mem[_10651 + 164] = mem[_10651]
                    s = 0
                    while s < mem[_10651]:
                        mem[s + _10651 + 196] = mem[s + _10651 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10651] % 32:
                        require ext_code.size(address(_10523))
                        call address(_10523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10140, 0, msg.sender, 128, mem[_10651 + 164 len mem[_10651] + 32]
                    else:
                        mem[floor32(mem[_10651]) + _10651 + 196] = mem[floor32(mem[_10651]) + _10651 + -(mem[_10651] % 32) + 228 len mem[_10651] % 32]
                        require ext_code.size(address(_10523))
                        call address(_10523).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10140, 0, msg.sender, 128, mem[_10651], mem[_10651 + 196 len floor32(mem[_10651]) + 32]
                else:
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10396 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 389]
                    _10652 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (64 * ('cd', 36).length + 1) + ceil32(return_data.size) + 421]
                    _10908 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10908 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_10908 + 36] = _10140
                    mem[_10908 + 68] = 0
                    mem[_10908 + 100] = address(_10396)
                    mem[_10908 + 132] = 128
                    mem[_10908 + 164] = mem[_10908]
                    s = 0
                    while s < mem[_10908]:
                        mem[s + _10908 + 196] = mem[s + _10908 + 32]
                        s = s + 32
                        continue 
                    if not mem[_10908] % 32:
                        require ext_code.size(address(_10652))
                        call address(_10652).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10140, 0, address(_10396), 128, mem[_10908 + 164 len mem[_10908] + 32]
                    else:
                        mem[floor32(mem[_10908]) + _10908 + 196] = mem[floor32(mem[_10908]) + _10908 + -(mem[_10908] % 32) + 228 len mem[_10908] % 32]
                        require ext_code.size(address(_10652))
                        call address(_10652).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _10140, 0, address(_10396), 128, mem[_10908], mem[_10908 + 196 len floor32(mem[_10908]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
    _9947 = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224]
    mem[mem[64] + 64 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])] = mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 256 len floor32(mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length) + (32 * ('cd', 36).length + 1) + 224])]
    return 32, mem[mem[64] + 32 len (32 * _9947) + 32]
}



}
