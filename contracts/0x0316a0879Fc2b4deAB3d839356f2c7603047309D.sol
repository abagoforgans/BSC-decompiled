contract main {




// =====================  Runtime code  =====================


#
#  - sub_21d318b5(?)
#  - sub_57f9a635(?)
#  - sub_e501d36e(?)
#
array of address stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
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
    mem[128 len 32 * stor0.length] = code.data[12224 len 32 * stor0.length]
    mem[(32 * stor0.length) + 128] = stor0.length
    mem[(32 * stor0.length) + 160 len 32 * stor0.length] = code.data[12224 len 32 * stor0.length]
    mem[(64 * stor0.length) + 160] = stor0.length
    mem[(64 * stor0.length) + 192 len 32 * stor0.length] = code.data[12224 len 32 * stor0.length]
    mem[(98 * stor0.length) + 192] = stor0.length
    mem[64] = (131 * stor0.length) + 224
    mem[(98 * stor0.length) + 224 len 32 * stor0.length] = code.data[12224 len 32 * stor0.length]
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
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg1.length] = code.data[12224 len 32 * arg1.length]
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



}
