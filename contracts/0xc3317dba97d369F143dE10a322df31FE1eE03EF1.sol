contract main {




// =====================  Runtime code  =====================


#
#  - sub_04435371(?)
#  - sub_21d318b5(?)
#  - sub_b095d99a(?)
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

function pairFor(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 < arg3:
        return address(sha3(0, arg1, sha3(arg2, arg3), stor2[address(arg1)]))
    return address(sha3(0, arg1, sha3(arg3, arg2), stor2[address(arg1)]))
}

function sub_233a0cc8(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg2 * arg1 / 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 - (arg2 * arg1 / 10000))
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 < arg3:
        require ext_code.size(address(sha3(0, arg1, sha3(arg2, arg3), stor2[address(arg1)])))
        staticcall address(sha3(0, arg1, sha3(arg2, arg3), stor2[address(arg1)])).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        require ext_code.size(address(sha3(0, arg1, sha3(arg3, arg2), stor2[address(arg1)])))
        staticcall address(sha3(0, arg1, sha3(arg3, arg2), stor2[address(arg1)])).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if arg3 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
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
        mem[128 len 32 * ('cd', 4).length] = code.data[15666 len 32 * ('cd', 4).length]
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

function sub_0568393e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length <= 0:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (96 * arg1.length) + 64
    if arg2.length <= 0:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (96 * arg1.length) + 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length + arg2.length - 1
    if arg1.length + arg2.length - 1:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length + arg2.length - 1] = code.data[15666 len 32 * arg1.length + arg2.length - 1]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg1.length + arg2.length - 1
        mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    idx = 1
    s = arg1.length
    while idx < arg2.length:
        require idx < arg2.length
        require s < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(32 * s) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg1.length + arg2.length - 1) + 192] = 32
    return 32, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg1.length + arg2.length - 1) + 224 len (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + 32], 
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 <= 0:
        return 0
    if arg2 <= 0:
        return 0
    if arg3 <= 0:
        return 0
    if not arg1:
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        if 1000 * arg2 / arg2 != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1000 * arg2 < 1000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 1000 * arg2)
    if arg4 * arg1 / arg1 != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg4 * arg1:
        if not arg2:
            if arg4 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg4 * arg1:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg4 * arg1)
        if 1000 * arg2 / arg2 != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg4 * arg1) + (1000 * arg2) < 1000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not (arg4 * arg1) + (1000 * arg2):
            revert with 0, 'SafeMath: division by zero'
        return (0 / (arg4 * arg1) + (1000 * arg2))
    if arg3 * arg4 * arg1 / arg4 * arg1 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        if arg4 * arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg4 * arg1:
            revert with 0, 'SafeMath: division by zero'
        return (arg3 * arg4 * arg1 / arg4 * arg1)
    if 1000 * arg2 / arg2 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (arg4 * arg1) + (1000 * arg2) < 1000 * arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not (arg4 * arg1) + (1000 * arg2):
        revert with 0, 'SafeMath: division by zero'
    return (arg3 * arg4 * arg1 / (arg4 * arg1) + (1000 * arg2))
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
    mem[128 len 32 * stor0.length] = code.data[15666 len 32 * stor0.length]
    mem[(32 * stor0.length) + 128] = stor0.length
    mem[(32 * stor0.length) + 160 len 32 * stor0.length] = code.data[15666 len 32 * stor0.length]
    mem[(64 * stor0.length) + 160] = stor0.length
    mem[(64 * stor0.length) + 192 len 32 * stor0.length] = code.data[15666 len 32 * stor0.length]
    mem[(98 * stor0.length) + 192] = stor0.length
    mem[64] = (131 * stor0.length) + 224
    mem[(98 * stor0.length) + 224 len 32 * stor0.length] = code.data[15666 len 32 * stor0.length]
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

function sub_6768c4ba(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if not arg1:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 32
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        return memory
          from (32 * arg3.length) + (32 * arg4.length) + 160
           len (96 * arg3.length) + 64
    if not arg2:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 32
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        return memory
          from (32 * arg3.length) + (32 * arg4.length) + 160
           len (96 * arg3.length) + 64
    if arg3.length <= 0:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 32
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        return memory
          from (32 * arg3.length) + (32 * arg4.length) + 160
           len (96 * arg3.length) + 64
    if arg4.length <= 0:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 32
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = arg3.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        return memory
          from (32 * arg3.length) + (32 * arg4.length) + 160
           len (96 * arg3.length) + 64
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg3.length + arg4.length - 2
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg3.length + arg4.length - 2) + 192
    if not arg3.length + arg4.length - 2:
        idx = 0
        s = 0
        while idx < arg3.length - 1:
            require s < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg1
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg3.length - 1
        while idx < mem[(32 * arg3.length) + 128] - 1:
            require s < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
            mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _78 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _78) + 32]
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg3.length + arg4.length - 2] = code.data[15666 len 32 * arg3.length + arg4.length - 2]
    idx = 0
    s = 0
    while idx < arg3.length - 1:
        require s < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg1
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg3.length - 1
    while idx < mem[(32 * arg3.length) + 128] - 1:
        require s < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * s) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _81 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len floor32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _81) + 32]
}

function sub_36382f9f(?) payable {
    require calldata.size - 4 >= 96
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
    if arg2.length < 2:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (96 * arg1.length) + 64
    if arg1.length != arg2.length - 1:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (96 * arg1.length) + 64
    if arg3 <= 0:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (96 * arg1.length) + 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg2.length
    mem[64] = (32 * arg1.length) + (64 * arg2.length) + 192
    if not arg2.length:
        require 0 < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg3
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[96]
            _762 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _769 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx + 1 < mem[(32 * arg1.length) + 128]
            _775 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
                _779 = mem[64]
                mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg1.length) + 160])
                mem[mem[64] + 52] = address(_775)
                _780 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _782 = sha3(mem[_780 + 32 len mem[_780]])
                mem[_779 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_779 + 105] = address(_762)
                mem[_779 + 125] = _782
                mem[_779 + 157] = stor2[address(_762)]
                mem[_779 + 72] = 85
                mem[64] = _779 + 189
                require ext_code.size(address(sha3(0, address(_762), _782, stor2[address(_762)])))
                staticcall address(sha3(0, address(_762), _782, stor2[address(_762)])).getReserves() with:
                        gas gas_remaining wei
                mem[_779 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                if address(_769) == address(_769):
                    _839 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            mem[_779 + 221] = 'SafeMath: division by zero'
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _779 + 253
                            mem[_779 + 189] = 26
                            mem[_779 + 221] = 'SafeMath: division by zero'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                                idx = idx + 1
                                continue 
                    else:
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                        if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if stor3[mem[0]] * _839:
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _839
                                    idx = idx + 1
                                    continue 
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                                if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if (stor3[mem[0]] * _839) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _839) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    idx = idx + 1
                                    continue 
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if stor3[mem[0]] * _839:
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _839 / stor3[mem[0]] * _839
                                    idx = idx + 1
                                    continue 
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                                if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if (stor3[mem[0]] * _839) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _839 / (stor3[mem[0]] * _839) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    idx = idx + 1
                                    continue 
                else:
                    _841 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 3
                    if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        idx = idx + 1
                        continue 
                    if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            mem[_779 + 221] = 'SafeMath: division by zero'
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _779 + 253
                            mem[_779 + 189] = 26
                            mem[_779 + 221] = 'SafeMath: division by zero'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                                idx = idx + 1
                                continue 
                    else:
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                        if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if stor3[mem[0]] * _841:
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _841
                                    idx = idx + 1
                                    continue 
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                                if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if (stor3[mem[0]] * _841) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _841) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    idx = idx + 1
                                    continue 
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if stor3[mem[0]] * _841:
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _841 / stor3[mem[0]] * _841
                                    idx = idx + 1
                                    continue 
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_779 + 290 len 31]
                                if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[64] = _779 + 253
                                mem[_779 + 189] = 26
                                mem[_779 + 221] = 'SafeMath: division by zero'
                                if (stor3[mem[0]] * _841) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _841 / (stor3[mem[0]] * _841) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    idx = idx + 1
                                    continue 
                mem[_779 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_779 + 257] = 32
                idx = 0
                while idx < 26:
                    mem[idx + _779 + 321] = mem[idx + _779 + 221]
                    idx = idx + 32
                    continue 
                mem[_779 + 321] = mem[_779 + 327 len 26]
                revert with 0, 32, 26, mem[_779 + 321]
            _787 = mem[64]
            mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg1.length) + 160])
            mem[mem[64] + 52] = address(_769)
            _788 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _790 = sha3(mem[_788 + 32 len mem[_788]])
            mem[_787 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_787 + 105] = address(_762)
            mem[_787 + 125] = _790
            mem[_787 + 157] = stor2[address(_762)]
            mem[_787 + 72] = 85
            mem[64] = _787 + 189
            require ext_code.size(address(sha3(0, address(_762), _790, stor2[address(_762)])))
            staticcall address(sha3(0, address(_762), _790, stor2[address(_762)])).getReserves() with:
                    gas gas_remaining wei
            mem[_787 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if address(_775) == address(_769):
                _843 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        mem[_787 + 221] = 'SafeMath: division by zero'
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _787 + 253
                        mem[_787 + 189] = 26
                        mem[_787 + 221] = 'SafeMath: division by zero'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                else:
                    if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                    if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _843:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _843
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _843) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _843) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                idx = idx + 1
                                continue 
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _843:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _843 / stor3[mem[0]] * _843
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _843) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _843 / (stor3[mem[0]] * _843) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                idx = idx + 1
                                continue 
            else:
                _845 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        mem[_787 + 221] = 'SafeMath: division by zero'
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _787 + 253
                        mem[_787 + 189] = 26
                        mem[_787 + 221] = 'SafeMath: division by zero'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            idx = idx + 1
                            continue 
                else:
                    if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                    if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _845:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _845
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _845) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _845) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                idx = idx + 1
                                continue 
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _845:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _845 / stor3[mem[0]] * _845
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_787 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _787 + 253
                            mem[_787 + 189] = 26
                            mem[_787 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _845) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _845 / (stor3[mem[0]] * _845) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                idx = idx + 1
                                continue 
            mem[_787 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_787 + 257] = 32
            idx = 0
            while idx < 26:
                mem[idx + _787 + 321] = mem[idx + _787 + 221]
                idx = idx + 32
                continue 
            mem[_787 + 321] = mem[_787 + 327 len 26]
            revert with 0, 32, 26, mem[_787 + 321]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _761 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _761) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg2.length] = code.data[15666 len 32 * arg2.length]
    require 0 < arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = arg3
    idx = 0
    while idx < arg2.length - 1:
        require idx < mem[96]
        _767 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _771 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 < mem[(32 * arg1.length) + 128]
        _778 = mem[(32 * idx + 1) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]:
            _795 = mem[64]
            mem[mem[64] + 32] = address(mem[(32 * idx) + (32 * arg1.length) + 160])
            mem[mem[64] + 52] = address(_778)
            _796 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _798 = sha3(mem[_796 + 32 len mem[_796]])
            mem[_795 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_795 + 105] = address(_767)
            mem[_795 + 125] = _798
            mem[_795 + 157] = stor2[address(_767)]
            mem[_795 + 72] = 85
            mem[64] = _795 + 189
            require ext_code.size(address(sha3(0, address(_767), _798, stor2[address(_767)])))
            staticcall address(sha3(0, address(_767), _798, stor2[address(_767)])).getReserves() with:
                    gas gas_remaining wei
            mem[_795 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if address(_771) == address(_771):
                _847 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        mem[_795 + 221] = 'SafeMath: division by zero'
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _795 + 253
                        mem[_795 + 189] = 26
                        mem[_795 + 221] = 'SafeMath: division by zero'
                        if 1000 * Mask(112, 0, ext_call.return_data[0]):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                            idx = idx + 1
                            continue 
                else:
                    if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                    if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _847:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _847
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _847) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _847) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                idx = idx + 1
                                continue 
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _847:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _847 / stor3[mem[0]] * _847
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _847) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _847 / (stor3[mem[0]] * _847) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                idx = idx + 1
                                continue 
            else:
                _849 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    idx = idx + 1
                    continue 
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        mem[_795 + 221] = 'SafeMath: division by zero'
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _795 + 253
                        mem[_795 + 189] = 26
                        mem[_795 + 221] = 'SafeMath: division by zero'
                        if 1000 * Mask(112, 0, ext_call.return_data[32]):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                            idx = idx + 1
                            continue 
                else:
                    if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                    if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _849:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _849
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _849) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _849) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                idx = idx + 1
                                continue 
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if stor3[mem[0]] * _849:
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _849 / stor3[mem[0]] * _849
                                idx = idx + 1
                                continue 
                        else:
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_795 + 290 len 31]
                            if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: addition overflow'
                            mem[64] = _795 + 253
                            mem[_795 + 189] = 26
                            mem[_795 + 221] = 'SafeMath: division by zero'
                            if (stor3[mem[0]] * _849) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _849 / (stor3[mem[0]] * _849) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                idx = idx + 1
                                continue 
            mem[_795 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_795 + 257] = 32
            idx = 0
            while idx < 26:
                mem[idx + _795 + 321] = mem[idx + _795 + 221]
                idx = idx + 32
                continue 
            mem[_795 + 321] = mem[_795 + 327 len 26]
            revert with 0, 32, 26, mem[_795 + 321]
        _803 = mem[64]
        mem[mem[64] + 32] = address(mem[(32 * idx + 1) + (32 * arg1.length) + 160])
        mem[mem[64] + 52] = address(_771)
        _804 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _806 = sha3(mem[_804 + 32 len mem[_804]])
        mem[_803 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_803 + 105] = address(_767)
        mem[_803 + 125] = _806
        mem[_803 + 157] = stor2[address(_767)]
        mem[_803 + 72] = 85
        mem[64] = _803 + 189
        require ext_code.size(address(sha3(0, address(_767), _806, stor2[address(_767)])))
        staticcall address(sha3(0, address(_767), _806, stor2[address(_767)])).getReserves() with:
                gas gas_remaining wei
        mem[_803 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if address(_778) == address(_771):
            _851 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                if not Mask(112, 0, ext_call.return_data[0]):
                    mem[_803 + 221] = 'SafeMath: division by zero'
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = _803 + 253
                    mem[_803 + 189] = 26
                    mem[_803 + 221] = 'SafeMath: division by zero'
                    if 1000 * Mask(112, 0, ext_call.return_data[0]):
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        continue 
            else:
                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if stor3[mem[0]] * _851:
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _851
                            idx = idx + 1
                            continue 
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                        if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if (stor3[mem[0]] * _851) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _851) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            idx = idx + 1
                            continue 
                else:
                    if Mask(112, 0, ext_call.return_data[32]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if stor3[mem[0]] * _851:
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _851 / stor3[mem[0]] * _851
                            idx = idx + 1
                            continue 
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                        if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if (stor3[mem[0]] * _851) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32]) * stor3[mem[0]] * _851 / (stor3[mem[0]] * _851) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                            idx = idx + 1
                            continue 
        else:
            _853 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                idx = idx + 1
                continue 
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    mem[_803 + 221] = 'SafeMath: division by zero'
                else:
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[64] = _803 + 253
                    mem[_803 + 189] = 26
                    mem[_803 + 221] = 'SafeMath: division by zero'
                    if 1000 * Mask(112, 0, ext_call.return_data[32]):
                        require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                        idx = idx + 1
                        continue 
            else:
                if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != stor3[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                if not stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if stor3[mem[0]] * _853:
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / stor3[mem[0]] * _853
                            idx = idx + 1
                            continue 
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                        if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if (stor3[mem[0]] * _853) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (stor3[mem[0]] * _853) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            idx = idx + 1
                            continue 
                else:
                    if Mask(112, 0, ext_call.return_data[0]) * stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if stor3[mem[0]] * _853:
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _853 / stor3[mem[0]] * _853
                            idx = idx + 1
                            continue 
                    else:
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_803 + 290 len 31]
                        if (stor3[mem[(32 * idx) + 140 len 20]] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = _803 + 253
                        mem[_803 + 189] = 26
                        mem[_803 + 221] = 'SafeMath: division by zero'
                        if (stor3[mem[0]] * _853) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                            require idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0]) * stor3[mem[0]] * _853 / (stor3[mem[0]] * _853) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            idx = idx + 1
                            continue 
        mem[_803 + 253] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_803 + 257] = 32
        idx = 0
        while idx < 26:
            mem[idx + _803 + 321] = mem[idx + _803 + 221]
            idx = idx + 32
            continue 
        mem[_803 + 321] = mem[_803 + 327 len 26]
        revert with 0, 32, 26, mem[_803 + 321]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _766 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _766) + 32]
}



}
