contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
array of uint256 stor2;
address stor3;
array of struct stor4;
array of struct stor5;
mapping of struct stor6;

function _fallback() payable {
    revert
}

function sub_28f94391(?) payable {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = address(stor5[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_ac4facea(?) payable {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = address(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function sub_9800c105(?) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        mem[164] = uint256(stor0.field_0)
        idx = 164
        s = 0
        while stor0.length + 164 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor0.length, mem[164 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if address(stor5[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx < stor5.length - 1:
            require stor5.length - 1 < stor5.length
            require idx < stor5.length
            address(stor5[idx].field_0) = address(stor5[stor5.length].field_0)
        require stor5.length
        address(stor5[stor5.length].field_0) = 0
        stor5.length--
        address(stor6[address(arg1)].field_0) = 0
        stor6[address(arg1)].field_256 = 0
        if 31 < stor6[address(arg1)][1].length:
            idx = sha3(sha3(address(arg1), 6) + 1)
            while sha3(sha3(address(arg1), 6) + 1) + (stor6[address(arg1)][1].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor6[address(arg1)].field_512 = 0
        if 31 < stor6[address(arg1)][2].length:
            idx = sha3(sha3(address(arg1), 6) + 2)
            while sha3(sha3(address(arg1), 6) + 2) + (stor6[address(arg1)][2].length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        stor6[address(arg1)].field_768 = 0
    if 0 < stor5.length - 1:
        require stor5.length - 1 < stor5.length
        require 0 < stor5.length
        address(stor5.field_0) = address(stor5[stor5.length].field_0)
    require stor5.length
    address(stor5[stor5.length].field_0) = 0
    stor5.length--
    address(stor6[address(arg1)].field_0) = 0
    stor6[address(arg1)].field_256 = 0
    if 31 < stor6[address(arg1)][1].length:
        idx = 0
        while stor6[address(arg1)][1].length + 31 / 32 > idx:
            stor6[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor6[address(arg1)].field_512 = 0
    if 31 < stor6[address(arg1)][2].length:
        idx = 0
        while stor6[address(arg1)][2].length + 31 / 32 > idx:
            stor6[address(arg1)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor6[address(arg1)].field_768 = 0
}

function tokens(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 6
    mem[96] = stor6[arg1][1].length
    mem[128] = stor6[arg1][1].field_0
    idx = 128
    s = 0
    while stor6[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor6[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 160
    mem[ceil32(stor6[arg1][1].length) + 128] = stor6[arg1][2].length
    mem[0] = sha3(arg1, 6) + 2
    mem[ceil32(stor6[arg1][1].length) + 160] = stor6[arg1][2].field_0
    idx = ceil32(stor6[arg1][1].length) + 160
    s = 0
    while ceil32(stor6[arg1][1].length) + stor6[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor6[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 160] = address(stor6[arg1].field_0)
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 256] = stor6[arg1].field_768
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 192] = 128
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 288] = stor6[arg1][1].length
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 320 len ceil32(stor6[arg1][1].length)] = mem[128 len ceil32(stor6[arg1][1].length)]
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 224] = stor6[arg1][1].length + 160
    mem[stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 320] = stor6[arg1][2].length
    mem[stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 352 len ceil32(stor6[arg1][2].length)] = mem[ceil32(stor6[arg1][1].length) + 160 len ceil32(stor6[arg1][2].length)]
    if not stor6[arg1][2].length % 32:
        return address(stor6[arg1].field_0), 
               Array(len=stor6[arg1][1].length, data=mem[128 len ceil32(stor6[arg1][1].length)], mem[(2 * ceil32(stor6[arg1][1].length)) + ceil32(stor6[arg1][2].length) + 320 len stor6[arg1][2].length + stor6[arg1][1].length + -ceil32(stor6[arg1][1].length) + 32]),
               stor6[arg1][1].length + 160,
               stor6[arg1].field_768
    mem[floor32(stor6[arg1][2].length) + stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 352] = mem[floor32(stor6[arg1][2].length) + stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + -stor6[arg1][2].length % 32 + 384 len stor6[arg1][2].length % 32]
    return address(stor6[arg1].field_0), 
           Array(len=stor6[arg1][1].length, data=mem[128 len ceil32(stor6[arg1][1].length)], mem[(2 * ceil32(stor6[arg1][1].length)) + ceil32(stor6[arg1][2].length) + 320 len floor32(stor6[arg1][2].length) + stor6[arg1][1].length + -ceil32(stor6[arg1][1].length) + 64]),
           stor6[arg1][1].length + 160,
           stor6[arg1].field_768
}

function sub_35eddb72(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 6
    mem[96] = stor6[address(arg1)][1].length
    mem[128] = stor6[address(arg1)][1].field_0
    idx = 128
    s = 0
    while stor6[address(arg1)][1].length + 96 > idx:
        mem[idx + 32] = stor6[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 160
    mem[ceil32(stor6[address(arg1)][1].length) + 128] = stor6[address(arg1)][2].length
    mem[0] = sha3(address(arg1), 6) + 2
    mem[ceil32(stor6[address(arg1)][1].length) + 160] = stor6[address(arg1)][2].field_0
    idx = ceil32(stor6[address(arg1)][1].length) + 160
    s = 0
    while ceil32(stor6[address(arg1)][1].length) + stor6[address(arg1)][2].length + 128 > idx:
        mem[idx + 32] = stor6[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 160] = address(stor6[address(arg1)].field_0)
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 256] = stor6[address(arg1)].field_768
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 192] = 128
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 288] = stor6[address(arg1)][1].length
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 320 len ceil32(stor6[address(arg1)][1].length)] = mem[128 len ceil32(stor6[address(arg1)][1].length)]
    mem[ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 224] = stor6[address(arg1)][1].length + 160
    mem[stor6[address(arg1)][1].length + ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 320] = stor6[address(arg1)][2].length
    mem[stor6[address(arg1)][1].length + ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 352 len ceil32(stor6[address(arg1)][2].length)] = mem[ceil32(stor6[address(arg1)][1].length) + 160 len ceil32(stor6[address(arg1)][2].length)]
    if not stor6[address(arg1)][2].length % 32:
        return address(stor6[address(arg1)].field_0), 
               Array(len=stor6[address(arg1)][1].length, data=mem[128 len ceil32(stor6[address(arg1)][1].length)], mem[(2 * ceil32(stor6[address(arg1)][1].length)) + ceil32(stor6[address(arg1)][2].length) + 320 len stor6[address(arg1)][2].length + stor6[address(arg1)][1].length + -ceil32(stor6[address(arg1)][1].length) + 32]),
               stor6[address(arg1)][1].length + 160,
               stor6[address(arg1)].field_768
    mem[floor32(stor6[address(arg1)][2].length) + stor6[address(arg1)][1].length + ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + 352] = mem[floor32(stor6[address(arg1)][2].length) + stor6[address(arg1)][1].length + ceil32(stor6[address(arg1)][1].length) + ceil32(stor6[address(arg1)][2].length) + -stor6[address(arg1)][2].length % 32 + 384 len stor6[address(arg1)][2].length % 32]
    return address(stor6[address(arg1)].field_0), 
           Array(len=stor6[address(arg1)][1].length, data=mem[128 len ceil32(stor6[address(arg1)][1].length)], mem[(2 * ceil32(stor6[address(arg1)][1].length)) + ceil32(stor6[address(arg1)][2].length) + 320 len floor32(stor6[address(arg1)][2].length) + stor6[address(arg1)][1].length + -ceil32(stor6[address(arg1)][1].length) + 64]),
           stor6[address(arg1)][1].length + 160,
           stor6[address(arg1)].field_768
}

function sub_cae9c057(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    if stor3 != msg.sender:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = uint256(stor0.field_0)
        idx = ceil32(arg2.length) + ceil32(arg3.length) + 228
        s = 0
        while ceil32(arg2.length) + ceil32(arg3.length) + stor0.length + 228 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor0.length,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]
    mem[0] = arg1
    mem[32] = 6
    if address(stor6[address(arg1)].field_0):
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 228] = uint256(stor1.field_0)
        idx = ceil32(arg2.length) + ceil32(arg3.length) + 228
        s = 0
        while ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + 228 > idx + 32:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    stor1.length,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32)]
    idx = 0
    while idx < stor5.length:
        _70 = mem[64]
        _71 = mem[ceil32(arg2.length) + 128]
        t = ceil32(arg2.length) + 160
        u = mem[64] + 32
        s = mem[ceil32(arg2.length) + 128]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[ceil32(arg2.length) + 128]) + 32] = mem[ceil32(arg2.length) + floor32(mem[ceil32(arg2.length) + 128]) + -(mem[ceil32(arg2.length) + 128] % 32) + 192 len mem[ceil32(arg2.length) + 128] % 32] or Mask(8 * -(mem[ceil32(arg2.length) + 128] % 32) + 32, -(8 * -(mem[ceil32(arg2.length) + 128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg2.length) + 128]) + 32])
        _130 = mem[64]
        mem[mem[64]] = _71
        mem[64] = _71 + mem[64] + 32
        _132 = sha3(mem[_130 + 32 len mem[_130]])
        require idx < stor5.length
        mem[32] = 6
        mem[0] = sha3(address(stor5[idx].field_0), 6) + 2
        mem[_71 + _70 + 64] = stor6[address(stor5[idx].field_0)][2].field_0
        s = _71 + _70 + 64
        t = sha3(sha3(address(stor5[idx].field_0), 6) + 2)
        while _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 32 > s:
            mem[s + 32] = stor1[t].field_0
            s = s + 32
            t = t + 1
            continue 
        _254 = mem[64]
        mem[mem[64]] = _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + -mem[64] + 32
        mem[64] = _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 64
        if sha3(mem[_254 + 32 len mem[_254]]) != _132:
            idx = idx + 1
            continue 
        mem[_71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 64] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 68] = 32
        mem[_71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 100] = stor2.length
        mem[0] = 2
        mem[_71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 132] = stor2
        s = _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + 132
        t = sha3(mem[0])
        while _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + stor2.length + 132 > s + 32:
            mem[s + 32] = stor1[t].field_0
            s = s + 32
            t = t + 1
            continue 
        revert with memory
          from mem[64]
           len _71 + _70 + stor6[address(stor5[idx].field_0)][2].length + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + -mem[64] + 132
    idx = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        if address(stor4[idx].field_0) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor4.length++
        address(stor4[stor4.length].field_0) = arg1
    address(stor6[address(arg1)].field_0) = arg1
    stor6[address(arg1)][1][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor6[address(arg1)][2][].field_0 = Array(len=mem[ceil32(arg2.length) + 128], data=mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]])
    stor6[address(arg1)].field_768 = arg4
    stor5.length++
    address(stor5[stor5.length].field_0) = arg1
}



}
