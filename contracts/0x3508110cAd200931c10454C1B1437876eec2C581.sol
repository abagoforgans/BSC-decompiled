contract main {




// =====================  Runtime code  =====================


#
#  - sub_21d318b5(?)
#  - sub_e501d36e(?)
#
array of address stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_89b27b0b(?) payable {
    if not stor0.length:
        mem[256 len 4096] = mem[128 len 96], 128, mem[256 len 3968]
        return 128, 
               4256,
               8384,
               12512,
               128,
               mem[256 len 4096],
               128,
               4256,
               mem[160 len 64],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               mem[192],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               12512,
               128,
               mem[256 len 3968]
    mem[96] = stor0.length
    mem[128 len 32 * stor0.length] = code.data[12304 len 32 * stor0.length]
    mem[(32 * stor0.length) + 128] = stor0.length
    mem[(32 * stor0.length) + 160 len 32 * stor0.length] = code.data[12304 len 32 * stor0.length]
    mem[(64 * stor0.length) + 160] = stor0.length
    mem[(64 * stor0.length) + 192 len 32 * stor0.length] = code.data[12304 len 32 * stor0.length]
    mem[(98 * stor0.length) + 192] = stor0.length
    mem[64] = (131 * stor0.length) + 224
    mem[(98 * stor0.length) + 224 len 32 * stor0.length] = code.data[12304 len 32 * stor0.length]
    idx = 0
    while idx < stor0.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor0[idx]
        require idx < stor0.length
        require idx < mem[(32 * stor0.length) + 128]
        mem[(32 * idx) + (32 * stor0.length) + 160] = stor1[stor0[idx]]
        require idx < stor0.length
        require idx < mem[(64 * stor0.length) + 160]
        mem[(32 * idx) + (64 * stor0.length) + 192] = stor2[stor0[idx]]
        require idx < stor0.length
        mem[0] = stor0[idx]
        mem[32] = 3
        require idx < mem[(98 * stor0.length) + 192]
        mem[(32 * idx) + (98 * stor0.length) + 224] = stor3[stor0[idx]]
        idx = idx + 1
        continue 
    _52 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _54 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor0.length) + 128]
    _84 = mem[(32 * stor0.length) + 128]
    s = 0
    while stor0.length < 32 * _84:
        mem[stor0.length + (32 * _54) + mem[64] + 192] = mem[(34 * stor0.length) + 160]
        s = stor0.length + 32
        continue 
    mem[_52 + 64] = (32 * _84) + (32 * _54) + 192
    mem[(32 * _84) + (32 * _54) + _52 + 192] = mem[(64 * stor0.length) + 160]
    _103 = mem[(64 * stor0.length) + 160]
    mem[(32 * _84) + (32 * _54) + _52 + 224 len floor32(mem[(64 * stor0.length) + 160])] = mem[(64 * stor0.length) + 192 len floor32(mem[(64 * stor0.length) + 160])]
    mem[_52 + 96] = (32 * _103) + (32 * _84) + (32 * _54) + 224
    mem[(32 * _103) + (32 * _84) + (32 * _54) + _52 + 224] = mem[(98 * stor0.length) + 192]
    _115 = mem[(98 * stor0.length) + 192]
    mem[(32 * _103) + (32 * _84) + (32 * _54) + _52 + 256 len floor32(mem[(98 * stor0.length) + 192])] = mem[(98 * stor0.length) + 224 len floor32(mem[(98 * stor0.length) + 192])]
    return memory
      from mem[64]
       len (32 * _115) + (32 * _103) + (32 * _84) + (32 * _54) + _52 + -mem[64] + 256
}

function sub_3247d940(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg1.length <= 0:
        revert with 0, 'PARAMS_FAILED'
    if arg2.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if arg3.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if arg4.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if stor5 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg1.length] = code.data[12304 len 32 * arg1.length]
    stor0.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
        while (64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < stor0.length
        stor0[idx] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg3.length
        require idx < arg1.length
        stor2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        idx = idx + 1
        continue 
}

function sub_57f9a635(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 384
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 96
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    if arg5 > arg6:
        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 384
           len (64 * arg1.length) + 288
    else:
        if not arg1.length:
            if not arg1.length:
                if 0 == arg1.length:
                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    return memory
                      from (32 * arg1.length) + (32 * arg2.length) + 384
                       len (64 * arg1.length) + 288
                else:
                    if not arg1.length:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        return memory
                          from (32 * arg1.length) + (32 * arg2.length) + 384
                           len (64 * arg1.length) + 288
                    else:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        return memory
                          from (32 * arg1.length) + (32 * arg2.length) + 384
                           len (64 * arg1.length) + 288
            else:
                if arg2.length != arg1.length:
                    if 0 == arg1.length:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        return memory
                          from (32 * arg1.length) + (32 * arg2.length) + 384
                           len (64 * arg1.length) + 288
                    else:
                        if not arg1.length:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                        else:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                else:
                    if not arg4:
                        if 0 == arg1.length:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                        else:
                            if not arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                    else:
                        if not arg3:
                            if 0 == arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                if not arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                        else:
                            if 0 == arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                if not arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
        else:
            if arg2.length != arg1.length:
                if not arg1.length:
                    if 0 == arg1.length:
                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                        return memory
                          from (32 * arg1.length) + (32 * arg2.length) + 384
                           len (64 * arg1.length) + 288
                    else:
                        if not arg1.length:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                        else:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                else:
                    if arg2.length != arg1.length:
                        if 0 == arg1.length:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                        else:
                            if not arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                    else:
                        if not arg4:
                            if 0 == arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                if not arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                        else:
                            if not arg3:
                                if 0 == arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    if not arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                            else:
                                if 0 == arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    if not arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
            else:
                if not arg3:
                    if not arg1.length:
                        if 0 == arg1.length:
                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                            return memory
                              from (32 * arg1.length) + (32 * arg2.length) + 384
                               len (64 * arg1.length) + 288
                        else:
                            if not arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                    else:
                        if arg2.length != arg1.length:
                            if 0 == arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                if not arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                        else:
                            if not arg4:
                                if 0 == arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    if not arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                            else:
                                if not arg3:
                                    if 0 == arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        if not arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                else:
                                    if 0 == arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        if not arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                else:
                    if not arg4:
                        if not arg1.length:
                            if 0 == arg1.length:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                return memory
                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                   len (64 * arg1.length) + 288
                            else:
                                if not arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                        else:
                            if arg2.length != arg1.length:
                                if 0 == arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    if not arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                            else:
                                if not arg4:
                                    if 0 == arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        if not arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                else:
                                    if not arg3:
                                        if 0 == arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            if not arg1.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                            else:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                    else:
                                        if 0 == arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            if not arg1.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                            else:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                    else:
                        if arg5 <= 0:
                            if not arg1.length:
                                if 0 == arg1.length:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                    return memory
                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                       len (64 * arg1.length) + 288
                                else:
                                    if not arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                            else:
                                if arg2.length != arg1.length:
                                    if 0 == arg1.length:
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                        mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                        return memory
                                          from (32 * arg1.length) + (32 * arg2.length) + 384
                                           len (64 * arg1.length) + 288
                                    else:
                                        if not arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                else:
                                    if not arg4:
                                        if 0 == arg1.length:
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                            mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                            return memory
                                              from (32 * arg1.length) + (32 * arg2.length) + 384
                                               len (64 * arg1.length) + 288
                                        else:
                                            if not arg1.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                            else:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                    else:
                                        if not arg3:
                                            if 0 == arg1.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                            else:
                                                if not arg1.length:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    return memory
                                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                                       len (64 * arg1.length) + 288
                                                else:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    return memory
                                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                                       len (64 * arg1.length) + 288
                                        else:
                                            if 0 == arg1.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                return memory
                                                  from (32 * arg1.length) + (32 * arg2.length) + 384
                                                   len (64 * arg1.length) + 288
                                            else:
                                                if not arg1.length:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    return memory
                                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                                       len (64 * arg1.length) + 288
                                                else:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 512] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 544] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 576] = 0
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 224
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 608] = arg1.length
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 640 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 480] = (32 * arg1.length) + 256
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 640] = arg1.length
                                                    mem[(64 * arg1.length) + (32 * arg2.length) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                                                    return memory
                                                      from (32 * arg1.length) + (32 * arg2.length) + 384
                                                       len (64 * arg1.length) + 288
                        else:
                            idx = 0
                            while idx < arg1.length:
                                require idx < arg2.length
                                require idx < arg1.length
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = 4
                                stor4[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx <= arg1.length:
                                s = 0
                                while s < stor0.length:
                                    if idx >= mem[96]:
                                        require s < stor0.length
                                        mem[0] = 0
                                        if arg3 < arg4:
                                            _11845 = mem[64]
                                            mem[mem[64] + 32] = address(arg3)
                                            mem[mem[64] + 52] = address(arg4)
                                            _11846 = mem[64]
                                            mem[mem[64]] = 40
                                            mem[64] = mem[64] + 72
                                            _11848 = sha3(mem[_11846 + 32 len mem[_11846]])
                                            mem[0] = stor0[s]
                                            mem[32] = 2
                                            mem[_11845 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_11845 + 105] = Mask(160, 96, stor0[s])
                                            mem[_11845 + 125] = _11848
                                            mem[_11845 + 157] = stor2[stor0[s]]
                                            mem[_11845 + 72] = 85
                                            mem[64] = _11845 + 189
                                            if not uint32(ext_code.size(sha3(0, stor0[s], _11848, stor2[stor0[s]]))):
                                                s = s + 1
                                                continue 
                                            else:
                                                require s < stor0.length
                                                if arg3 < arg4:
                                                    mem[_11845 + 221] = address(arg3)
                                                    mem[_11845 + 241] = address(arg4)
                                                    mem[_11845 + 189] = 40
                                                    mem[_11845 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11845 + 294] = Mask(160, 96, stor0[s])
                                                    mem[_11845 + 314] = sha3(arg3, arg4)
                                                    mem[_11845 + 346] = stor2[stor0[s]]
                                                    mem[_11845 + 261] = 85
                                                    mem[64] = _11845 + 378
                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, arg4), stor2[stor0[s]])))
                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, arg4), stor2[stor0[s]])).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_11845 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if arg3 == arg3:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11845 + 378] = 2
                                                                            mem[64] = _11845 + 474
                                                                            mem[_11845 + 410] = arg3
                                                                            mem[_11845 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11845 + 378] = 2
                                                                            mem[64] = _11845 + 474
                                                                            mem[_11845 + 410] = arg3
                                                                            mem[_11845 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                else:
                                                    mem[_11845 + 221] = address(arg4)
                                                    mem[_11845 + 241] = address(arg3)
                                                    mem[_11845 + 189] = 40
                                                    mem[_11845 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11845 + 294] = Mask(160, 96, stor0[s])
                                                    mem[_11845 + 314] = sha3(arg4, arg3)
                                                    mem[_11845 + 346] = stor2[stor0[s]]
                                                    mem[_11845 + 261] = 85
                                                    mem[64] = _11845 + 378
                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, arg3), stor2[stor0[s]])))
                                                    staticcall address(sha3(0, stor0[s], sha3(arg4, arg3), stor2[stor0[s]])).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_11845 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if arg4 == arg3:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11845 + 378] = 2
                                                                            mem[64] = _11845 + 474
                                                                            mem[_11845 + 410] = arg3
                                                                            mem[_11845 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11845 + 378] = 2
                                                                            mem[64] = _11845 + 474
                                                                            mem[_11845 + 410] = arg3
                                                                            mem[_11845 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                        else:
                                            _11853 = mem[64]
                                            mem[mem[64] + 32] = address(arg4)
                                            mem[mem[64] + 52] = address(arg3)
                                            _11854 = mem[64]
                                            mem[mem[64]] = 40
                                            mem[64] = mem[64] + 72
                                            _11856 = sha3(mem[_11854 + 32 len mem[_11854]])
                                            mem[0] = stor0[s]
                                            mem[32] = 2
                                            mem[_11853 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_11853 + 105] = Mask(160, 96, stor0[s])
                                            mem[_11853 + 125] = _11856
                                            mem[_11853 + 157] = stor2[stor0[s]]
                                            mem[_11853 + 72] = 85
                                            mem[64] = _11853 + 189
                                            if not uint32(ext_code.size(sha3(0, stor0[s], _11856, stor2[stor0[s]]))):
                                                s = s + 1
                                                continue 
                                            else:
                                                require s < stor0.length
                                                if arg3 < arg4:
                                                    mem[_11853 + 221] = address(arg3)
                                                    mem[_11853 + 241] = address(arg4)
                                                    mem[_11853 + 189] = 40
                                                    mem[_11853 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11853 + 294] = Mask(160, 96, stor0[s])
                                                    mem[_11853 + 314] = sha3(arg3, arg4)
                                                    mem[_11853 + 346] = stor2[stor0[s]]
                                                    mem[_11853 + 261] = 85
                                                    mem[64] = _11853 + 378
                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, arg4), stor2[stor0[s]])))
                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, arg4), stor2[stor0[s]])).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_11853 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if arg3 == arg3:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11853 + 378] = 2
                                                                            mem[64] = _11853 + 474
                                                                            mem[_11853 + 410] = arg3
                                                                            mem[_11853 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11853 + 378] = 2
                                                                            mem[64] = _11853 + 474
                                                                            mem[_11853 + 410] = arg3
                                                                            mem[_11853 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                else:
                                                    mem[_11853 + 221] = address(arg4)
                                                    mem[_11853 + 241] = address(arg3)
                                                    mem[_11853 + 189] = 40
                                                    mem[_11853 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11853 + 294] = Mask(160, 96, stor0[s])
                                                    mem[_11853 + 314] = sha3(arg4, arg3)
                                                    mem[_11853 + 346] = stor2[stor0[s]]
                                                    mem[_11853 + 261] = 85
                                                    mem[64] = _11853 + 378
                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, arg3), stor2[stor0[s]])))
                                                    staticcall address(sha3(0, stor0[s], sha3(arg4, arg3), stor2[stor0[s]])).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[_11853 + 378 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 96
                                                        if arg4 == arg3:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11853 + 378] = 2
                                                                            mem[64] = _11853 + 474
                                                                            mem[_11853 + 410] = arg3
                                                                            mem[_11853 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                                        else:
                                                            require s < stor0.length
                                                            if arg5 <= 0:
                                                                mem[0] = arg4
                                                                mem[32] = 4
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    mem[0] = arg4
                                                                    mem[32] = 4
                                                                    s = s + 1
                                                                    continue 
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        s = s + 1
                                                                        continue 
                                                                    else:
                                                                        require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                        mem[0] = arg4
                                                                        mem[32] = 4
                                                                        if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                            s = s + 1
                                                                            continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            mem[0] = 0
                                                                            mem[_11853 + 378] = 2
                                                                            mem[64] = _11853 + 474
                                                                            mem[_11853 + 410] = arg3
                                                                            mem[_11853 + 442] = arg4
                                                                            s = s + 1
                                                                            continue 
                                    else:
                                        require idx < mem[96]
                                        if mem[(32 * idx) + 140 len 20] == arg3:
                                            s = s + 1
                                            continue 
                                        else:
                                            require idx < mem[96]
                                            if mem[(32 * idx) + 140 len 20] != arg4:
                                                require s < stor0.length
                                                mem[0] = 0
                                                require idx < mem[96]
                                                _11863 = mem[(32 * idx) + 128]
                                                if arg3 < mem[(32 * idx) + 140 len 20]:
                                                    _11866 = mem[64]
                                                    mem[mem[64] + 32] = address(arg3)
                                                    mem[mem[64] + 52] = address(_11863)
                                                    _11867 = mem[64]
                                                    mem[mem[64]] = 40
                                                    mem[64] = mem[64] + 72
                                                    _11869 = sha3(mem[_11867 + 32 len mem[_11867]])
                                                    mem[0] = stor0[s]
                                                    mem[32] = 2
                                                    mem[_11866 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11866 + 105] = Mask(160, 96, stor0[s])
                                                    mem[_11866 + 125] = _11869
                                                    mem[_11866 + 157] = stor2[stor0[s]]
                                                    mem[_11866 + 72] = 85
                                                    mem[64] = _11866 + 189
                                                    if not uint32(ext_code.size(sha3(0, stor0[s], _11869, stor2[stor0[s]]))):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        require s < stor0.length
                                                        require idx < mem[96]
                                                        _11926 = mem[(32 * idx) + 128]
                                                        if mem[(32 * idx) + 140 len 20] < arg4:
                                                            mem[_11866 + 221] = address(mem[(32 * idx) + 128])
                                                            mem[_11866 + 241] = address(arg4)
                                                            mem[_11866 + 189] = 40
                                                            _11943 = sha3(mem[_11866 + 221 len 20], arg4)
                                                            mem[0] = stor0[s]
                                                            mem[32] = 2
                                                            mem[_11866 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                            mem[_11866 + 294] = Mask(160, 96, stor0[s])
                                                            mem[_11866 + 314] = _11943
                                                            mem[_11866 + 346] = stor2[stor0[s]]
                                                            mem[_11866 + 261] = 85
                                                            mem[64] = _11866 + 378
                                                            if not uint32(ext_code.size(sha3(0, stor0[s], _11943, stor2[stor0[s]]))):
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require s < stor0.length
                                                                require idx < mem[96]
                                                                _11996 = mem[(32 * idx) + 128]
                                                                if arg3 < mem[(32 * idx) + 140 len 20]:
                                                                    mem[_11866 + 410] = address(arg3)
                                                                    mem[_11866 + 430] = address(_11996)
                                                                    mem[_11866 + 378] = 40
                                                                    mem[_11866 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11866 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11866 + 503] = sha3(arg3, address(_11996))
                                                                    mem[_11866 + 535] = stor2[stor0[s]]
                                                                    mem[_11866 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, address(_11996)), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, address(_11996)), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11866 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if arg3 == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12200 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12200) == address(_12200):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12200)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12200))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12200)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12200)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12200):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12201 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12201) == address(_12201):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12201)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12201))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12201)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12201)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12201):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                else:
                                                                    mem[_11866 + 410] = address(mem[(32 * idx) + 128])
                                                                    mem[_11866 + 430] = address(arg3)
                                                                    mem[_11866 + 378] = 40
                                                                    mem[_11866 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11866 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11866 + 503] = sha3(mem[_11866 + 410 len 20], arg3)
                                                                    mem[_11866 + 535] = stor2[stor0[s]]
                                                                    mem[_11866 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(mem[_11866 + 410 len 20], arg3), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(mem[_11866 + 410 len 20], arg3), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11866 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if address(_11996) == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12202 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12202) == address(_12202):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12202)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12202))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12202)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12202)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12202):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12203 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12203) == address(_12203):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12203)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12203))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12203)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12203)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12203):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                        else:
                                                            mem[_11866 + 221] = address(arg4)
                                                            mem[_11866 + 241] = address(_11926)
                                                            mem[_11866 + 189] = 40
                                                            mem[0] = stor0[s]
                                                            mem[32] = 2
                                                            mem[_11866 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                            mem[_11866 + 294] = Mask(160, 96, stor0[s])
                                                            mem[_11866 + 314] = sha3(arg4, address(_11926))
                                                            mem[_11866 + 346] = stor2[stor0[s]]
                                                            mem[_11866 + 261] = 85
                                                            mem[64] = _11866 + 378
                                                            if not uint32(ext_code.size(sha3(0, stor0[s], sha3(arg4, address(_11926)), stor2[stor0[s]]))):
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require s < stor0.length
                                                                require idx < mem[96]
                                                                _11997 = mem[(32 * idx) + 128]
                                                                if arg3 < mem[(32 * idx) + 140 len 20]:
                                                                    mem[_11866 + 410] = address(arg3)
                                                                    mem[_11866 + 430] = address(_11997)
                                                                    mem[_11866 + 378] = 40
                                                                    mem[_11866 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11866 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11866 + 503] = sha3(arg3, address(_11997))
                                                                    mem[_11866 + 535] = stor2[stor0[s]]
                                                                    mem[_11866 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, address(_11997)), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, address(_11997)), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11866 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if arg3 == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12204 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12204) == address(_12204):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12204)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12204))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12204)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12204)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12204):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12205 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12205) == address(_12205):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12205)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12205))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12205)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12205)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12205):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                else:
                                                                    mem[_11866 + 410] = address(mem[(32 * idx) + 128])
                                                                    mem[_11866 + 430] = address(arg3)
                                                                    mem[_11866 + 378] = 40
                                                                    mem[_11866 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11866 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11866 + 503] = sha3(mem[_11866 + 410 len 20], arg3)
                                                                    mem[_11866 + 535] = stor2[stor0[s]]
                                                                    mem[_11866 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(mem[_11866 + 410 len 20], arg3), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(mem[_11866 + 410 len 20], arg3), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11866 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if address(_11997) == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12206 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12206) == address(_12206):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12206)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12206))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12206)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12206)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12206):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12207 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11866 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11866 + 619] = address(arg4)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(mem[_11866 + 599 len 20], arg4)
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11866 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12207) == address(_12207):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11866 + 599] = address(arg4)
                                                                                mem[_11866 + 619] = address(_12207)
                                                                                mem[_11866 + 567] = 40
                                                                                mem[_11866 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11866 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11866 + 692] = sha3(arg4, address(_12207))
                                                                                mem[_11866 + 724] = stor2[stor0[s]]
                                                                                mem[_11866 + 639] = 85
                                                                                mem[64] = _11866 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12207)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12207)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11866 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12207):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11866 + 756] = 3
                                                                                                                    mem[64] = _11866 + 884
                                                                                                                    mem[_11866 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11866 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11866 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11866 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                else:
                                                    _11874 = mem[64]
                                                    mem[mem[64] + 32] = address(mem[(32 * idx) + 128])
                                                    mem[mem[64] + 52] = address(arg3)
                                                    _11875 = mem[64]
                                                    mem[mem[64]] = 40
                                                    mem[64] = mem[64] + 72
                                                    _11877 = sha3(mem[_11875 + 32 len mem[_11875]])
                                                    mem[0] = stor0[s]
                                                    mem[32] = 2
                                                    mem[_11874 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                    mem[_11874 + 105] = Mask(160, 96, stor0[s])
                                                    mem[_11874 + 125] = _11877
                                                    mem[_11874 + 157] = stor2[stor0[s]]
                                                    mem[_11874 + 72] = 85
                                                    mem[64] = _11874 + 189
                                                    if not uint32(ext_code.size(sha3(0, stor0[s], _11877, stor2[stor0[s]]))):
                                                        s = s + 1
                                                        continue 
                                                    else:
                                                        require s < stor0.length
                                                        require idx < mem[96]
                                                        _11927 = mem[(32 * idx) + 128]
                                                        if mem[(32 * idx) + 140 len 20] < arg4:
                                                            mem[_11874 + 221] = address(mem[(32 * idx) + 128])
                                                            mem[_11874 + 241] = address(arg4)
                                                            mem[_11874 + 189] = 40
                                                            _11959 = sha3(mem[_11874 + 221 len 20], arg4)
                                                            mem[0] = stor0[s]
                                                            mem[32] = 2
                                                            mem[_11874 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                            mem[_11874 + 294] = Mask(160, 96, stor0[s])
                                                            mem[_11874 + 314] = _11959
                                                            mem[_11874 + 346] = stor2[stor0[s]]
                                                            mem[_11874 + 261] = 85
                                                            mem[64] = _11874 + 378
                                                            if not uint32(ext_code.size(sha3(0, stor0[s], _11959, stor2[stor0[s]]))):
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require s < stor0.length
                                                                require idx < mem[96]
                                                                _11998 = mem[(32 * idx) + 128]
                                                                if arg3 < mem[(32 * idx) + 140 len 20]:
                                                                    mem[_11874 + 410] = address(arg3)
                                                                    mem[_11874 + 430] = address(_11998)
                                                                    mem[_11874 + 378] = 40
                                                                    mem[_11874 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11874 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11874 + 503] = sha3(arg3, address(_11998))
                                                                    mem[_11874 + 535] = stor2[stor0[s]]
                                                                    mem[_11874 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, address(_11998)), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, address(_11998)), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11874 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if arg3 == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12208 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12208) == address(_12208):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12208)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12208))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12208)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12208)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12208):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12209 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12209) == address(_12209):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12209)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12209))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12209)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12209)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12209):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                else:
                                                                    mem[_11874 + 410] = address(mem[(32 * idx) + 128])
                                                                    mem[_11874 + 430] = address(arg3)
                                                                    mem[_11874 + 378] = 40
                                                                    mem[_11874 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11874 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11874 + 503] = sha3(mem[_11874 + 410 len 20], arg3)
                                                                    mem[_11874 + 535] = stor2[stor0[s]]
                                                                    mem[_11874 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(mem[_11874 + 410 len 20], arg3), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(mem[_11874 + 410 len 20], arg3), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11874 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if address(_11998) == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12210 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12210) == address(_12210):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12210)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12210))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12210)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12210)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12210):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12211 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12211) == address(_12211):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12211)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12211))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12211)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12211)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12211):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                        else:
                                                            mem[_11874 + 221] = address(arg4)
                                                            mem[_11874 + 241] = address(_11927)
                                                            mem[_11874 + 189] = 40
                                                            mem[0] = stor0[s]
                                                            mem[32] = 2
                                                            mem[_11874 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                            mem[_11874 + 294] = Mask(160, 96, stor0[s])
                                                            mem[_11874 + 314] = sha3(arg4, address(_11927))
                                                            mem[_11874 + 346] = stor2[stor0[s]]
                                                            mem[_11874 + 261] = 85
                                                            mem[64] = _11874 + 378
                                                            if not uint32(ext_code.size(sha3(0, stor0[s], sha3(arg4, address(_11927)), stor2[stor0[s]]))):
                                                                s = s + 1
                                                                continue 
                                                            else:
                                                                require s < stor0.length
                                                                require idx < mem[96]
                                                                _11999 = mem[(32 * idx) + 128]
                                                                if arg3 < mem[(32 * idx) + 140 len 20]:
                                                                    mem[_11874 + 410] = address(arg3)
                                                                    mem[_11874 + 430] = address(_11999)
                                                                    mem[_11874 + 378] = 40
                                                                    mem[_11874 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11874 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11874 + 503] = sha3(arg3, address(_11999))
                                                                    mem[_11874 + 535] = stor2[stor0[s]]
                                                                    mem[_11874 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(arg3, address(_11999)), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(arg3, address(_11999)), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11874 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if arg3 == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12212 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12212) == address(_12212):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12212)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12212))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12212)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12212)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12212):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12213 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12213) == address(_12213):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12213)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12213))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12213)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12213)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12213):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                else:
                                                                    mem[_11874 + 410] = address(mem[(32 * idx) + 128])
                                                                    mem[_11874 + 430] = address(arg3)
                                                                    mem[_11874 + 378] = 40
                                                                    mem[_11874 + 482] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                    mem[_11874 + 483] = Mask(160, 96, stor0[s])
                                                                    mem[_11874 + 503] = sha3(mem[_11874 + 410 len 20], arg3)
                                                                    mem[_11874 + 535] = stor2[stor0[s]]
                                                                    mem[_11874 + 450] = 85
                                                                    require ext_code.size(address(sha3(0, stor0[s], sha3(mem[_11874 + 410 len 20], arg3), stor2[stor0[s]])))
                                                                    staticcall address(sha3(0, stor0[s], sha3(mem[_11874 + 410 len 20], arg3), stor2[stor0[s]])).getReserves() with:
                                                                            gas gas_remaining wei
                                                                    mem[_11874 + 567 len 96] = ext_call.return_data[0 len 96]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        if address(_11999) == arg3:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12214 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12214) == address(_12214):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12214)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12214))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12214)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12214)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12214):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[32]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                        else:
                                                                            require s < stor0.length
                                                                            require idx < mem[96]
                                                                            _12215 = mem[(32 * idx) + 128]
                                                                            if mem[(32 * idx) + 140 len 20] < arg4:
                                                                                mem[_11874 + 599] = address(mem[(32 * idx) + 128])
                                                                                mem[_11874 + 619] = address(arg4)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(mem[_11874 + 599 len 20], arg4)
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], mem[_11874 + 692], stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if address(_12215) == address(_12215):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                            else:
                                                                                mem[_11874 + 599] = address(arg4)
                                                                                mem[_11874 + 619] = address(_12215)
                                                                                mem[_11874 + 567] = 40
                                                                                mem[_11874 + 671] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                                                                mem[_11874 + 672] = Mask(160, 96, stor0[s])
                                                                                mem[_11874 + 692] = sha3(arg4, address(_12215))
                                                                                mem[_11874 + 724] = stor2[stor0[s]]
                                                                                mem[_11874 + 639] = 85
                                                                                mem[64] = _11874 + 756
                                                                                require ext_code.size(address(sha3(0, stor0[s], sha3(arg4, address(_12215)), stor2[stor0[s]])))
                                                                                staticcall address(sha3(0, stor0[s], sha3(arg4, address(_12215)), stor2[stor0[s]])).getReserves() with:
                                                                                        gas gas_remaining wei
                                                                                mem[_11874 + 756 len 96] = ext_call.return_data[0 len 96]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 96
                                                                                    if arg4 == address(_12215):
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[32])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[0])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                    else:
                                                                                        require s < stor0.length
                                                                                        if arg5 <= 0:
                                                                                            require idx < mem[96]
                                                                                            require s < stor0.length
                                                                                            mem[0] = arg4
                                                                                            mem[32] = 4
                                                                                            s = s + 1
                                                                                            continue 
                                                                                        else:
                                                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                require idx < mem[96]
                                                                                                require s < stor0.length
                                                                                                mem[0] = arg4
                                                                                                mem[32] = 4
                                                                                                s = s + 1
                                                                                                continue 
                                                                                            else:
                                                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    mem[0] = arg4
                                                                                                    mem[32] = 4
                                                                                                    s = s + 1
                                                                                                    continue 
                                                                                                else:
                                                                                                    require (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                    require idx < mem[96]
                                                                                                    require s < stor0.length
                                                                                                    if (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000) <= 0:
                                                                                                        mem[0] = arg4
                                                                                                        mem[32] = 4
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    else:
                                                                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                                                            mem[0] = arg4
                                                                                                            mem[32] = 4
                                                                                                            s = s + 1
                                                                                                            continue 
                                                                                                        else:
                                                                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                s = s + 1
                                                                                                                continue 
                                                                                                            else:
                                                                                                                require (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                                                                                                mem[0] = arg4
                                                                                                                mem[32] = 4
                                                                                                                if ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) - ((stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]] * Mask(112, 0, ext_call.return_data[0])) / (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor3[stor0[s]]) - (stor3[stor0[s]] * arg5 * Mask(112, 0, ext_call.return_data[0]) / (stor3[stor0[s]] * arg5) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[mem[(32 * idx) + 140 len 20]] / 10000 * stor3[stor0[s]]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * stor4[address(arg4)] / 10000) <= 0:
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    require s < stor0.length
                                                                                                                    mem[0] = 0
                                                                                                                    mem[_11874 + 756] = 3
                                                                                                                    mem[64] = _11874 + 884
                                                                                                                    mem[_11874 + 788 len 96] = code.data[12304 len 96]
                                                                                                                    mem[_11874 + 788] = arg3
                                                                                                                    require idx < mem[96]
                                                                                                                    mem[_11874 + 820] = mem[(32 * idx) + 140 len 20]
                                                                                                                    mem[_11874 + 852] = arg4
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                            else:
                                                s = s + 1
                                                continue 
                                idx = idx + 1
                                continue 
                            if not mem[96]:
                                if 0 == mem[96]:
                                    _8486 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                    _8487 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                    _8488 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                    _8489 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                    _8490 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                    _8491 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                    mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                    mem[mem[64] + 32] = address(_8486)
                                    mem[mem[64] + 128] = _8489
                                    mem[mem[64] + 160] = _8490
                                    mem[mem[64] + 192] = _8491
                                    mem[mem[64] + 64] = 224
                                    mem[mem[64] + 224] = mem[_8487]
                                    _8494 = mem[_8487]
                                    mem[mem[64] + 256 len floor32(mem[_8487])] = mem[_8487 + 32 len floor32(mem[_8487])]
                                    mem[mem[64] + 96] = (32 * _8494) + 256
                                    mem[(32 * _8494) + mem[64] + 256] = mem[_8488]
                                    _11765 = mem[_8488]
                                    mem[(32 * _8494) + mem[64] + 288 len floor32(mem[_8488])] = mem[_8488 + 32 len floor32(mem[_8488])]
                                    return mem[mem[64]], 
                                           address(_8486),
                                           224,
                                           (32 * _8494) + 256,
                                           _8489,
                                           _8490,
                                           _8491,
                                           mem[mem[64] + 224 len (32 * _11765) + (32 * _8494) + 64]
                                else:
                                    if not mem[96]:
                                        _8496 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                        _8497 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                        _8498 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                        _8499 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                        _8500 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                        _8501 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                        mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                        mem[mem[64] + 32] = address(_8496)
                                        mem[mem[64] + 128] = _8499
                                        mem[mem[64] + 160] = _8500
                                        mem[mem[64] + 192] = _8501
                                        mem[mem[64] + 64] = 224
                                        mem[mem[64] + 224] = mem[_8497]
                                        _8511 = mem[_8497]
                                        mem[mem[64] + 256 len floor32(mem[_8497])] = mem[_8497 + 32 len floor32(mem[_8497])]
                                        mem[mem[64] + 96] = (32 * _8511) + 256
                                        mem[(32 * _8511) + mem[64] + 256] = mem[_8498]
                                        _11768 = mem[_8498]
                                        mem[(32 * _8511) + mem[64] + 288 len floor32(mem[_8498])] = mem[_8498 + 32 len floor32(mem[_8498])]
                                        return mem[mem[64]], 
                                               address(_8496),
                                               224,
                                               (32 * _8511) + 256,
                                               _8499,
                                               _8500,
                                               _8501,
                                               mem[mem[64] + 224 len (32 * _11768) + (32 * _8511) + 64]
                                    else:
                                        _8513 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                        _8514 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                        _8515 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                        _8516 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                        _8517 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                        _8518 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                        mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                        mem[mem[64] + 32] = address(_8513)
                                        mem[mem[64] + 128] = _8516
                                        mem[mem[64] + 160] = _8517
                                        mem[mem[64] + 192] = _8518
                                        mem[mem[64] + 64] = 224
                                        mem[mem[64] + 224] = mem[_8514]
                                        _8577 = mem[_8514]
                                        mem[mem[64] + 256 len floor32(mem[_8514])] = mem[_8514 + 32 len floor32(mem[_8514])]
                                        mem[mem[64] + 96] = (32 * _8577) + 256
                                        mem[(32 * _8577) + mem[64] + 256] = mem[_8515]
                                        _11771 = mem[_8515]
                                        mem[(32 * _8577) + mem[64] + 288 len floor32(mem[_8515])] = mem[_8515 + 32 len floor32(mem[_8515])]
                                        return mem[mem[64]], 
                                               address(_8513),
                                               224,
                                               (32 * _8577) + 256,
                                               _8516,
                                               _8517,
                                               _8518,
                                               mem[mem[64] + 224 len (32 * _11771) + (32 * _8577) + 64]
                            else:
                                if mem[(32 * arg1.length) + 128] != mem[96]:
                                    if 0 == mem[96]:
                                        _8503 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                        _8504 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                        _8505 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                        _8506 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                        _8507 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                        _8508 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                        mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                        mem[mem[64] + 32] = address(_8503)
                                        mem[mem[64] + 128] = _8506
                                        mem[mem[64] + 160] = _8507
                                        mem[mem[64] + 192] = _8508
                                        mem[mem[64] + 64] = 224
                                        mem[mem[64] + 224] = mem[_8504]
                                        _8521 = mem[_8504]
                                        mem[mem[64] + 256 len floor32(mem[_8504])] = mem[_8504 + 32 len floor32(mem[_8504])]
                                        mem[mem[64] + 96] = (32 * _8521) + 256
                                        mem[(32 * _8521) + mem[64] + 256] = mem[_8505]
                                        _11774 = mem[_8505]
                                        mem[(32 * _8521) + mem[64] + 288 len floor32(mem[_8505])] = mem[_8505 + 32 len floor32(mem[_8505])]
                                        return mem[mem[64]], 
                                               address(_8503),
                                               224,
                                               (32 * _8521) + 256,
                                               _8506,
                                               _8507,
                                               _8508,
                                               mem[mem[64] + 224 len (32 * _11774) + (32 * _8521) + 64]
                                    else:
                                        if not mem[96]:
                                            _8523 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                            _8524 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                            _8525 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                            _8526 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                            _8527 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                            _8528 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                            mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                            mem[mem[64] + 32] = address(_8523)
                                            mem[mem[64] + 128] = _8526
                                            mem[mem[64] + 160] = _8527
                                            mem[mem[64] + 192] = _8528
                                            mem[mem[64] + 64] = 224
                                            mem[mem[64] + 224] = mem[_8524]
                                            _8580 = mem[_8524]
                                            mem[mem[64] + 256 len floor32(mem[_8524])] = mem[_8524 + 32 len floor32(mem[_8524])]
                                            mem[mem[64] + 96] = (32 * _8580) + 256
                                            mem[(32 * _8580) + mem[64] + 256] = mem[_8525]
                                            _11777 = mem[_8525]
                                            mem[(32 * _8580) + mem[64] + 288 len floor32(mem[_8525])] = mem[_8525 + 32 len floor32(mem[_8525])]
                                            return mem[mem[64]], 
                                                   address(_8523),
                                                   224,
                                                   (32 * _8580) + 256,
                                                   _8526,
                                                   _8527,
                                                   _8528,
                                                   mem[mem[64] + 224 len (32 * _11777) + (32 * _8580) + 64]
                                        else:
                                            _8582 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                            _8583 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                            _8584 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                            _8585 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                            _8586 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                            _8587 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                            mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                            mem[mem[64] + 32] = address(_8582)
                                            mem[mem[64] + 128] = _8585
                                            mem[mem[64] + 160] = _8586
                                            mem[mem[64] + 192] = _8587
                                            mem[mem[64] + 64] = 224
                                            mem[mem[64] + 224] = mem[_8583]
                                            _8623 = mem[_8583]
                                            mem[mem[64] + 256 len floor32(mem[_8583])] = mem[_8583 + 32 len floor32(mem[_8583])]
                                            mem[mem[64] + 96] = (32 * _8623) + 256
                                            mem[(32 * _8623) + mem[64] + 256] = mem[_8584]
                                            _11780 = mem[_8584]
                                            mem[(32 * _8623) + mem[64] + 288 len floor32(mem[_8584])] = mem[_8584 + 32 len floor32(mem[_8584])]
                                            return mem[mem[64]], 
                                                   address(_8582),
                                                   224,
                                                   (32 * _8623) + 256,
                                                   _8585,
                                                   _8586,
                                                   _8587,
                                                   mem[mem[64] + 224 len (32 * _11780) + (32 * _8623) + 64]
                                else:
                                    if not arg4:
                                        if 0 == mem[96]:
                                            _8530 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                            _8531 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                            _8532 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                            _8533 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                            _8534 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                            _8535 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                            mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                            mem[mem[64] + 32] = address(_8530)
                                            mem[mem[64] + 128] = _8533
                                            mem[mem[64] + 160] = _8534
                                            mem[mem[64] + 192] = _8535
                                            mem[mem[64] + 64] = 224
                                            mem[mem[64] + 224] = mem[_8531]
                                            _8590 = mem[_8531]
                                            mem[mem[64] + 256 len floor32(mem[_8531])] = mem[_8531 + 32 len floor32(mem[_8531])]
                                            mem[mem[64] + 96] = (32 * _8590) + 256
                                            mem[(32 * _8590) + mem[64] + 256] = mem[_8532]
                                            _11783 = mem[_8532]
                                            mem[(32 * _8590) + mem[64] + 288 len floor32(mem[_8532])] = mem[_8532 + 32 len floor32(mem[_8532])]
                                            return mem[mem[64]], 
                                                   address(_8530),
                                                   224,
                                                   (32 * _8590) + 256,
                                                   _8533,
                                                   _8534,
                                                   _8535,
                                                   mem[mem[64] + 224 len (32 * _11783) + (32 * _8590) + 64]
                                        else:
                                            if not mem[96]:
                                                _8592 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                _8593 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                _8594 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                _8595 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                _8596 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                _8597 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                mem[mem[64] + 32] = address(_8592)
                                                mem[mem[64] + 128] = _8595
                                                mem[mem[64] + 160] = _8596
                                                mem[mem[64] + 192] = _8597
                                                mem[mem[64] + 64] = 224
                                                mem[mem[64] + 224] = mem[_8593]
                                                _8626 = mem[_8593]
                                                mem[mem[64] + 256 len floor32(mem[_8593])] = mem[_8593 + 32 len floor32(mem[_8593])]
                                                mem[mem[64] + 96] = (32 * _8626) + 256
                                                mem[(32 * _8626) + mem[64] + 256] = mem[_8594]
                                                _11786 = mem[_8594]
                                                mem[(32 * _8626) + mem[64] + 288 len floor32(mem[_8594])] = mem[_8594 + 32 len floor32(mem[_8594])]
                                                return mem[mem[64]], 
                                                       address(_8592),
                                                       224,
                                                       (32 * _8626) + 256,
                                                       _8595,
                                                       _8596,
                                                       _8597,
                                                       mem[mem[64] + 224 len (32 * _11786) + (32 * _8626) + 64]
                                            else:
                                                _8628 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                _8629 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                _8630 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                _8631 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                _8632 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                _8633 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                mem[mem[64] + 32] = address(_8628)
                                                mem[mem[64] + 128] = _8631
                                                mem[mem[64] + 160] = _8632
                                                mem[mem[64] + 192] = _8633
                                                mem[mem[64] + 64] = 224
                                                mem[mem[64] + 224] = mem[_8629]
                                                _8664 = mem[_8629]
                                                mem[mem[64] + 256 len floor32(mem[_8629])] = mem[_8629 + 32 len floor32(mem[_8629])]
                                                mem[mem[64] + 96] = (32 * _8664) + 256
                                                mem[(32 * _8664) + mem[64] + 256] = mem[_8630]
                                                _11789 = mem[_8630]
                                                mem[(32 * _8664) + mem[64] + 288 len floor32(mem[_8630])] = mem[_8630 + 32 len floor32(mem[_8630])]
                                                return mem[mem[64]], 
                                                       address(_8628),
                                                       224,
                                                       (32 * _8664) + 256,
                                                       _8631,
                                                       _8632,
                                                       _8633,
                                                       mem[mem[64] + 224 len (32 * _11789) + (32 * _8664) + 64]
                                    else:
                                        if not arg3:
                                            if 0 == mem[96]:
                                                _8599 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                _8600 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                _8601 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                _8602 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                _8603 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                _8604 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                mem[mem[64] + 32] = address(_8599)
                                                mem[mem[64] + 128] = _8602
                                                mem[mem[64] + 160] = _8603
                                                mem[mem[64] + 192] = _8604
                                                mem[mem[64] + 64] = 224
                                                mem[mem[64] + 224] = mem[_8600]
                                                _8636 = mem[_8600]
                                                mem[mem[64] + 256 len floor32(mem[_8600])] = mem[_8600 + 32 len floor32(mem[_8600])]
                                                mem[mem[64] + 96] = (32 * _8636) + 256
                                                mem[(32 * _8636) + mem[64] + 256] = mem[_8601]
                                                _11792 = mem[_8601]
                                                mem[(32 * _8636) + mem[64] + 288 len floor32(mem[_8601])] = mem[_8601 + 32 len floor32(mem[_8601])]
                                                return mem[mem[64]], 
                                                       address(_8599),
                                                       224,
                                                       (32 * _8636) + 256,
                                                       _8602,
                                                       _8603,
                                                       _8604,
                                                       mem[mem[64] + 224 len (32 * _11792) + (32 * _8636) + 64]
                                            else:
                                                if not mem[96]:
                                                    _8638 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                    _8639 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                    _8640 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                    _8641 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                    _8642 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                    _8643 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                    mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                    mem[mem[64] + 32] = address(_8638)
                                                    mem[mem[64] + 128] = _8641
                                                    mem[mem[64] + 160] = _8642
                                                    mem[mem[64] + 192] = _8643
                                                    mem[mem[64] + 64] = 224
                                                    mem[mem[64] + 224] = mem[_8639]
                                                    _8667 = mem[_8639]
                                                    mem[mem[64] + 256 len floor32(mem[_8639])] = mem[_8639 + 32 len floor32(mem[_8639])]
                                                    mem[mem[64] + 96] = (32 * _8667) + 256
                                                    mem[(32 * _8667) + mem[64] + 256] = mem[_8640]
                                                    _11795 = mem[_8640]
                                                    mem[(32 * _8667) + mem[64] + 288 len floor32(mem[_8640])] = mem[_8640 + 32 len floor32(mem[_8640])]
                                                    return mem[mem[64]], 
                                                           address(_8638),
                                                           224,
                                                           (32 * _8667) + 256,
                                                           _8641,
                                                           _8642,
                                                           _8643,
                                                           mem[mem[64] + 224 len (32 * _11795) + (32 * _8667) + 64]
                                                else:
                                                    _8669 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                    _8670 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                    _8671 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                    _8672 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                    _8673 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                    _8674 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                    mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                    mem[mem[64] + 32] = address(_8669)
                                                    mem[mem[64] + 128] = _8672
                                                    mem[mem[64] + 160] = _8673
                                                    mem[mem[64] + 192] = _8674
                                                    mem[mem[64] + 64] = 224
                                                    mem[mem[64] + 224] = mem[_8670]
                                                    _8704 = mem[_8670]
                                                    mem[mem[64] + 256 len floor32(mem[_8670])] = mem[_8670 + 32 len floor32(mem[_8670])]
                                                    mem[mem[64] + 96] = (32 * _8704) + 256
                                                    mem[(32 * _8704) + mem[64] + 256] = mem[_8671]
                                                    _11798 = mem[_8671]
                                                    mem[(32 * _8704) + mem[64] + 288 len floor32(mem[_8671])] = mem[_8671 + 32 len floor32(mem[_8671])]
                                                    return mem[mem[64]], 
                                                           address(_8669),
                                                           224,
                                                           (32 * _8704) + 256,
                                                           _8672,
                                                           _8673,
                                                           _8674,
                                                           mem[mem[64] + 224 len (32 * _11798) + (32 * _8704) + 64]
                                        else:
                                            if 0 == mem[96]:
                                                _8645 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                _8646 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                _8647 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                _8648 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                _8649 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                _8650 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                mem[mem[64] + 32] = address(_8645)
                                                mem[mem[64] + 128] = _8648
                                                mem[mem[64] + 160] = _8649
                                                mem[mem[64] + 192] = _8650
                                                mem[mem[64] + 64] = 224
                                                mem[mem[64] + 224] = mem[_8646]
                                                _8677 = mem[_8646]
                                                mem[mem[64] + 256 len floor32(mem[_8646])] = mem[_8646 + 32 len floor32(mem[_8646])]
                                                mem[mem[64] + 96] = (32 * _8677) + 256
                                                mem[(32 * _8677) + mem[64] + 256] = mem[_8647]
                                                _11801 = mem[_8647]
                                                mem[(32 * _8677) + mem[64] + 288 len floor32(mem[_8647])] = mem[_8647 + 32 len floor32(mem[_8647])]
                                                return mem[mem[64]], 
                                                       address(_8645),
                                                       224,
                                                       (32 * _8677) + 256,
                                                       _8648,
                                                       _8649,
                                                       _8650,
                                                       mem[mem[64] + 224 len (32 * _11801) + (32 * _8677) + 64]
                                            else:
                                                if not mem[96]:
                                                    _8679 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                    _8680 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                    _8681 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                    _8682 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                    _8683 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                    _8684 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                    mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                    mem[mem[64] + 32] = address(_8679)
                                                    mem[mem[64] + 128] = _8682
                                                    mem[mem[64] + 160] = _8683
                                                    mem[mem[64] + 192] = _8684
                                                    mem[mem[64] + 64] = 224
                                                    mem[mem[64] + 224] = mem[_8680]
                                                    _8707 = mem[_8680]
                                                    mem[mem[64] + 256 len floor32(mem[_8680])] = mem[_8680 + 32 len floor32(mem[_8680])]
                                                    mem[mem[64] + 96] = (32 * _8707) + 256
                                                    mem[(32 * _8707) + mem[64] + 256] = mem[_8681]
                                                    _11804 = mem[_8681]
                                                    mem[(32 * _8707) + mem[64] + 288 len floor32(mem[_8681])] = mem[_8681 + 32 len floor32(mem[_8681])]
                                                    return mem[mem[64]], 
                                                           address(_8679),
                                                           224,
                                                           (32 * _8707) + 256,
                                                           _8682,
                                                           _8683,
                                                           _8684,
                                                           mem[mem[64] + 224 len (32 * _11804) + (32 * _8707) + 64]
                                                else:
                                                    _8709 = mem[(32 * arg1.length) + (32 * arg2.length) + 192]
                                                    _8710 = mem[(32 * arg1.length) + (32 * arg2.length) + 224]
                                                    _8711 = mem[(32 * arg1.length) + (32 * arg2.length) + 256]
                                                    _8712 = mem[(32 * arg1.length) + (32 * arg2.length) + 288]
                                                    _8713 = mem[(32 * arg1.length) + (32 * arg2.length) + 320]
                                                    _8714 = mem[(32 * arg1.length) + (32 * arg2.length) + 352]
                                                    mem[mem[64]] = mem[(32 * arg1.length) + (32 * arg2.length) + 172 len 20]
                                                    mem[mem[64] + 32] = address(_8709)
                                                    mem[mem[64] + 128] = _8712
                                                    mem[mem[64] + 160] = _8713
                                                    mem[mem[64] + 192] = _8714
                                                    mem[mem[64] + 64] = 224
                                                    mem[mem[64] + 224] = mem[_8710]
                                                    _8772 = mem[_8710]
                                                    mem[mem[64] + 256 len floor32(mem[_8710])] = mem[_8710 + 32 len floor32(mem[_8710])]
                                                    mem[mem[64] + 96] = (32 * _8772) + 256
                                                    mem[(32 * _8772) + mem[64] + 256] = mem[_8711]
                                                    _11807 = mem[_8711]
                                                    mem[(32 * _8772) + mem[64] + 288 len floor32(mem[_8711])] = mem[_8711 + 32 len floor32(mem[_8711])]
                                                    return mem[mem[64]], 
                                                           address(_8709),
                                                           224,
                                                           (32 * _8772) + 256,
                                                           _8712,
                                                           _8713,
                                                           _8714,
                                                           mem[mem[64] + 224 len (32 * _11807) + (32 * _8772) + 64]
}



}
