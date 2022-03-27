contract main {




// =====================  Runtime code  =====================


#
#  - sub_04435371(?)
#  - sub_21d318b5(?)
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

function sub_3247d940(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'PARAMS_FAILED'
    if ('cd', 4).length != ('cd', 100).length:
        revert with 0, 'PARAMS_FAILED'
    if stor5 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[13775 len 32 * ('cd', 4).length]
    stor0.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < stor0.length
        stor0[idx] = address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 100).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
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
    mem[128 len 32 * stor0.length] = code.data[13775 len 32 * stor0.length]
    mem[(32 * stor0.length) + 128] = stor0.length
    mem[(32 * stor0.length) + 160 len 32 * stor0.length] = code.data[13775 len 32 * stor0.length]
    mem[(64 * stor0.length) + 160] = stor0.length
    mem[(64 * stor0.length) + 192 len 32 * stor0.length] = code.data[13775 len 32 * stor0.length]
    mem[(98 * stor0.length) + 192] = stor0.length
    mem[64] = (131 * stor0.length) + 224
    mem[(98 * stor0.length) + 224 len 32 * stor0.length] = code.data[13775 len 32 * stor0.length]
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



}
