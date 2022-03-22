contract main {




// =====================  Runtime code  =====================


#
#  - sub_1767ae33(?)
#  - sub_48de1b0a(?)
#  - sub_900ff1e2(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - sub_b66bda48(?)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
const getBalance = (eth.balance(this.address) - 10^18)


address owner;
array of address contracts;
uint8 baseToken;
uint8 sub_d0f06871; offset 8
uint256 sub_8a75b4e5;
uint8 isDebug;
uint8 sub_bb5ccc89; offset 8
uint8 sub_96d5d35d; offset 16
uint8 sub_6ab13e7f; offset 24
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8
array of uint256 stor13;
uint256 stor14;
array of address tokens;
array of uint8 stor3;
array of uint8 stor4;
array of uint8 stor5;
array of uint8 stor6;
array of uint8 stor7;
array of uint8 stor8;
array of uint8 stor9;

function sub_1856f21d(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    return sub_1856f21d[uint8(arg1)]
}

function sub_3e3bc345(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return sub_3e3bc345[uint8(arg1)]
}

function sub_46958a33(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor9.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor9', 9))[uint8(arg1)])
}

function contracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return contracts[arg1]
}

function sub_4c7494b5(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor3.length
    return sub_4c7494b5[uint8(arg1)]
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function sub_6ab13e7f(?) {
    return bool(sub_6ab13e7f)
}

function sub_8a75b4e5(?) {
    return sub_8a75b4e5
}

function owner() {
    return owner
}

function sub_91304c8d(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    return sub_91304c8d[uint8(arg1)]
}

function sub_96d5d35d(?) {
    return bool(sub_96d5d35d)
}

function sub_b84f3a43(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    return sub_b84f3a43[uint8(arg1)]
}

function sub_ba9f8b03(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    return sub_ba9f8b03[uint8(arg1)]
}

function sub_bb5ccc89(?) {
    return bool(sub_bb5ccc89)
}

function baseToken() {
    return baseToken
}

function sub_d0f06871(?) {
    return sub_d0f06871
}

function isDebug() {
    return bool(isDebug)
}

function sub_ea6484e6(?) {
  stop
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if arg1 > eth.balance(this.address):
            revert with 0, 'amt_tb'
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getContracts() {
    if stor3.length:
        mem[128] = uint8(stor3)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor('name', 'stor3', 3)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if stor4.length:
        mem[(32 * stor3.length) + 160] = uint8(stor4)
        idx = (32 * stor3.length) + 160
        s = 0
        while (32 * stor3.length) + (32 * stor4.length) + 128 > idx:
            mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    mem[(32 * stor3.length) + (32 * stor4.length) + 256 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    mem[(64 * stor3.length) + (32 * stor4.length) + 256] = stor4.length
    mem[(64 * stor3.length) + (32 * stor4.length) + 288 len floor32(stor4.length)] = mem[(32 * stor3.length) + 160 len floor32(stor4.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + (32 * stor4.length) + floor32(stor3.length) + 256 len (32 * stor3.length) + (32 * stor4.length) + -floor32(stor3.length) + 32]), 
           (32 * stor3.length) + 96
}

function sub_71959833(?) {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg6.length
    mem[(32 * arg4.length) + 160 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg4.length) + (32 * arg6.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    isDebug = uint8(arg3)
    sub_bb5ccc89 = uint8(arg1)
    Mask(248, 0, stor12.field_8) = 0
    Mask(240, 0, stor12.field_16) = Mask(240, 0, arg2)
    Mask(232, 0, stor12.field_24) = Mask(232, 16, arg1) >> 16
    Mask(232, 0, stor12.field_24) = 0
    stor13.length = arg4.length
    if not arg4.length:
        idx = 0
        while stor13.length > idx:
            stor13[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            stor13[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor13.length > idx:
            stor13[idx] = 0
            idx = idx + 1
            continue 
    stor14 = arg5
    stor9.length = arg6.length
    if not arg6.length:
        idx = 0
        while stor9.length + 31 / 32 > idx:
            uint8(stor9[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 160
        while (32 * arg4.length) + (32 * arg6.length) + 160 > idx:
            uint256(stor9) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor9)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        s = sha3(9)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
        while stor9.length + 31 / 32 > idx:
            uint8(stor9[idx]) = 0
            idx = idx + 1
            continue 
    Mask(232, 0, stor12.field_24) = Mask(232, 0, arg7)
}

function sub_413a1c2e(?) {
    require calldata.size - 4 >= 32
    require sub_8a75b4e5 <= test266151307()
    mem[96] = sub_8a75b4e5
    if not sub_8a75b4e5:
        mem[(32 * sub_8a75b4e5) + 128] = 2
        mem[(32 * sub_8a75b4e5) + 160 len 64] = call.data[calldata.size len 64]
        mem[(32 * sub_8a75b4e5) + 224] = 3
        mem[64] = (32 * sub_8a75b4e5) + 352
        mem[(32 * sub_8a75b4e5) + 256 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = 0
        t = 96
        u = 96
        while idx < stor3.length:
            require idx < stor5.length
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] == baseToken:
                revert with 0, 'pa1b'
            require idx < stor7.length
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] == baseToken:
                revert with 0, 'pb1b'
            require idx < stor5.length
            require idx < stor6.length
            require baseToken < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                require mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 160] = tokens[stor10]
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 192] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]]
                require idx < stor3.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] < contracts.length
                mem[0] = 1
                _1017 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[(32 * sub_8a75b4e5) + 128]
                _1019 = mem[(32 * sub_8a75b4e5) + 128]
                u = 0
                while u < 32 * _1019:
                    mem[u + mem[64] + 100] = mem[u + (32 * sub_8a75b4e5) + 160]
                    u = u + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _1019) + _1017 + -mem[64] + 96]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = t
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                _1943 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1948 = mem[_1943]
                require mem[_1943] <= 4294967296
                require mem[_1943] + 32 <= return_data.size
                require mem[_1943 + mem[_1943]] <= 4294967296 and mem[_1943] + (32 * mem[_1943 + mem[_1943]]) + 32 <= return_data.size
                mem[_1943 + ceil32(return_data.size)] = mem[_1943 + mem[_1943]]
                _1959 = mem[_1943 + _1948]
                t = 0
                while t < 32 * _1959:
                    mem[t + _1943 + ceil32(return_data.size) + 32] = mem[t + _1943 + _1948 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1959) + _1943 + ceil32(return_data.size) + 32
                require idx < stor7.length
                require idx < stor8.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                    require mem[(32 * sub_8a75b4e5) + 128]
                    mem[(32 * sub_8a75b4e5) + 160] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                    require baseToken < tokens.length
                    require 1 < mem[(32 * sub_8a75b4e5) + 128]
                    mem[(32 * sub_8a75b4e5) + 192] = tokens[stor10]
                    require idx < stor4.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require mem[_1943 + ceil32(return_data.size)] - 1 < mem[_1943 + ceil32(return_data.size)]
                    _2900 = mem[(32 * mem[_1943 + ceil32(return_data.size)] - 1) + _1943 + ceil32(return_data.size) + 32]
                    mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 36] = _2900
                    mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 68] = 64
                    mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 128]
                    _2903 = mem[(32 * sub_8a75b4e5) + 128]
                    t = 0
                    while t < 32 * _2903:
                        mem[t + (32 * _1959) + _1943 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 160]
                        t = t + 32
                        continue 
                    require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                    staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _2900, 64, mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 100 len (32 * _2903) + 32]
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                    mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _3728 = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32
                    require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 <= 4294967296
                    require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 + 32] <= 4294967296 and mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 + (32 * mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 + 32]) + 32 <= return_data.size
                    mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2900) >> 32 + 32]
                    _3749 = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + _3728 + 32]
                    t = 0
                    while t < 32 * _3749:
                        mem[t + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1959) + _1943 + ceil32(return_data.size) + _3728 + 64]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3749) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64
                    require mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32]
                    _4485 = mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64]
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                            idx = idx + 1
                            s = s
                            t = (32 * sub_8a75b4e5) + 128
                            u = (32 * sub_8a75b4e5) + 128
                            continue 
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                            idx = idx + 1
                            s = s
                            t = (32 * sub_8a75b4e5) + 128
                            u = (32 * sub_8a75b4e5) + 128
                            continue 
                    require idx < stor3.length
                    require 0 < mem[96]
                    mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                    require idx < stor4.length
                    require 1 < mem[96]
                    mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require 2 < mem[96]
                    mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require 3 < mem[96]
                    mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require 4 < mem[96]
                    mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                    require idx < stor8.length
                    mem[0] = 8
                    require 5 < mem[96]
                    mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                    require 0 < mem[_1943 + ceil32(return_data.size)]
                    require 6 < mem[96]
                    mem[320] = mem[_1943 + ceil32(return_data.size) + 32]
                    require mem[_1943 + ceil32(return_data.size)] - 1 < mem[_1943 + ceil32(return_data.size)]
                    require 7 < mem[96]
                    mem[352] = mem[(32 * mem[_1943 + ceil32(return_data.size)] - 1) + _1943 + ceil32(return_data.size) + 32]
                    require 8 < mem[96]
                    mem[384] = _4485
                    require 9 < mem[96]
                    mem[416] = _4485 - arg1
                    idx = idx + 1
                    s = _4485 - arg1
                    t = (32 * sub_8a75b4e5) + 128
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                require mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 256] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]]
                require baseToken < tokens.length
                require 2 < mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 320] = tokens[stor10]
                require idx < stor4.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                mem[0] = 1
                require mem[_1943 + ceil32(return_data.size)] - 1 < mem[_1943 + ceil32(return_data.size)]
                _2928 = mem[(32 * mem[_1943 + ceil32(return_data.size)] - 1) + _1943 + ceil32(return_data.size) + 32]
                mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 36] = _2928
                mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 224]
                _2931 = mem[(32 * sub_8a75b4e5) + 224]
                t = 0
                while t < 32 * _2931:
                    mem[t + (32 * _1959) + _1943 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 256]
                    t = t + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _2928, 64, mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 100 len (32 * _2931) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _3726 = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32
                require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 <= 4294967296
                require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 + 32 <= return_data.size
                require mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 + 32] <= 4294967296 and mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 + (32 * mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + mem[(32 * _1959) + _1943 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2928) >> 32 + 32]
                _3748 = mem[(32 * _1959) + _1943 + ceil32(return_data.size) + _3726 + 32]
                t = 0
                while t < 32 * _3748:
                    mem[t + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1959) + _1943 + ceil32(return_data.size) + _3726 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3748) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32]
                _4484 = mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 224
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1959) + _1943 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 224
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                require idx < stor3.length
                require 0 < mem[96]
                mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                require idx < stor4.length
                require 1 < mem[96]
                mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require 2 < mem[96]
                mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require 3 < mem[96]
                mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require 4 < mem[96]
                mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                require idx < stor8.length
                mem[0] = 8
                require 5 < mem[96]
                mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                require 0 < mem[_1943 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_1943 + ceil32(return_data.size) + 32]
                require mem[_1943 + ceil32(return_data.size)] - 1 < mem[_1943 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_1943 + ceil32(return_data.size)] - 1) + _1943 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _4484
                require 9 < mem[96]
                mem[416] = _4484 - arg1
                idx = idx + 1
                s = _4484 - arg1
                t = (32 * sub_8a75b4e5) + 224
                u = (32 * sub_8a75b4e5) + 128
                continue 
            require mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 256] = tokens[stor10]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < tokens.length
            require 1 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
            require 2 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 320] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]]
            require idx < stor3.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] < contracts.length
            mem[0] = 1
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * sub_8a75b4e5) + 224]
            _1029 = mem[(32 * sub_8a75b4e5) + 224]
            u = 0
            while u < 32 * _1029:
                mem[u + mem[64] + 100] = mem[u + (32 * sub_8a75b4e5) + 256]
                u = u + 32
                continue 
            require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]])
            staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[mem[64] + 68 len (32 * _1029) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = t
                u = (32 * sub_8a75b4e5) + 224
                continue 
            _1942 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1946 = mem[_1942]
            require mem[_1942] <= 4294967296
            require mem[_1942] + 32 <= return_data.size
            require mem[_1942 + mem[_1942]] <= 4294967296 and mem[_1942] + (32 * mem[_1942 + mem[_1942]]) + 32 <= return_data.size
            mem[_1942 + ceil32(return_data.size)] = mem[_1942 + mem[_1942]]
            _1958 = mem[_1942 + _1946]
            t = 0
            while t < 32 * _1958:
                mem[t + _1942 + ceil32(return_data.size) + 32] = mem[t + _1942 + _1946 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _1958) + _1942 + ceil32(return_data.size) + 32
            require idx < stor7.length
            require idx < stor8.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                require mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 160] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                require baseToken < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 192] = tokens[stor10]
                require idx < stor4.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                mem[0] = 1
                require mem[_1942 + ceil32(return_data.size)] - 1 < mem[_1942 + ceil32(return_data.size)]
                _2895 = mem[(32 * mem[_1942 + ceil32(return_data.size)] - 1) + _1942 + ceil32(return_data.size) + 32]
                mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 36] = _2895
                mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 128]
                _2898 = mem[(32 * sub_8a75b4e5) + 128]
                t = 0
                while t < 32 * _2898:
                    mem[t + (32 * _1958) + _1942 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _2895, 64, mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 100 len (32 * _2898) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 128
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
                mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _3724 = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32
                require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 <= 4294967296
                require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 + 32 <= return_data.size
                require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 + 32] <= 4294967296 and mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 + (32 * mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2895) >> 32 + 32]
                _3747 = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + _3724 + 32]
                t = 0
                while t < 32 * _3747:
                    mem[t + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1958) + _1942 + ceil32(return_data.size) + _3724 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3747) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32]
                _4483 = mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 224
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 224
                        continue 
                require idx < stor3.length
                require 0 < mem[96]
                mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                require idx < stor4.length
                require 1 < mem[96]
                mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require 2 < mem[96]
                mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require 3 < mem[96]
                mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require 4 < mem[96]
                mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                require idx < stor8.length
                mem[0] = 8
                require 5 < mem[96]
                mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                require 0 < mem[_1942 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_1942 + ceil32(return_data.size) + 32]
                require mem[_1942 + ceil32(return_data.size)] - 1 < mem[_1942 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_1942 + ceil32(return_data.size)] - 1) + _1942 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _4483
                require 9 < mem[96]
                mem[416] = _4483 - arg1
                idx = idx + 1
                s = _4483 - arg1
                t = (32 * sub_8a75b4e5) + 128
                u = (32 * sub_8a75b4e5) + 224
                continue 
            require mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 256] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
            require 1 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]]
            require baseToken < tokens.length
            require 2 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 320] = tokens[stor10]
            require idx < stor4.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
            mem[0] = 1
            require mem[_1942 + ceil32(return_data.size)] - 1 < mem[_1942 + ceil32(return_data.size)]
            _2922 = mem[(32 * mem[_1942 + ceil32(return_data.size)] - 1) + _1942 + ceil32(return_data.size) + 32]
            mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 36] = _2922
            mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 224]
            _2925 = mem[(32 * sub_8a75b4e5) + 224]
            t = 0
            while t < 32 * _2925:
                mem[t + (32 * _1958) + _1942 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 256]
                t = t + 32
                continue 
            require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
            staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2922, 64, mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 100 len (32 * _2925) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = (32 * sub_8a75b4e5) + 224
                u = (32 * sub_8a75b4e5) + 224
                continue 
            mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _3722 = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32
            require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 <= 4294967296
            require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 + 32 <= return_data.size
            require mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 + 32] <= 4294967296 and mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 + (32 * mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + mem[(32 * _1958) + _1942 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2922) >> 32 + 32]
            _3746 = mem[(32 * _1958) + _1942 + ceil32(return_data.size) + _3722 + 32]
            t = 0
            while t < 32 * _3746:
                mem[t + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1958) + _1942 + ceil32(return_data.size) + _3722 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _3746) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32]
            _4482 = mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64]
            if not isDebug:
                if mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
            if not isDebug:
                if mem[(32 * mem[(32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1958) + _1942 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
            require idx < stor3.length
            require 0 < mem[96]
            mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            require idx < stor4.length
            require 1 < mem[96]
            mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require 2 < mem[96]
            mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require 3 < mem[96]
            mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require 4 < mem[96]
            mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
            require idx < stor8.length
            mem[0] = 8
            require 5 < mem[96]
            mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
            require 0 < mem[_1942 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_1942 + ceil32(return_data.size) + 32]
            require mem[_1942 + ceil32(return_data.size)] - 1 < mem[_1942 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_1942 + ceil32(return_data.size)] - 1) + _1942 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _4482
            require 9 < mem[96]
            mem[416] = _4482 - arg1
            idx = idx + 1
            s = _4482 - arg1
            t = (32 * sub_8a75b4e5) + 224
            u = (32 * sub_8a75b4e5) + 224
            continue 
    else:
        mem[128 len 32 * sub_8a75b4e5] = call.data[calldata.size len 32 * sub_8a75b4e5]
        mem[(32 * sub_8a75b4e5) + 128] = 2
        mem[(32 * sub_8a75b4e5) + 160 len 64] = call.data[calldata.size len 64]
        mem[(32 * sub_8a75b4e5) + 224] = 3
        mem[64] = (32 * sub_8a75b4e5) + 352
        mem[(32 * sub_8a75b4e5) + 256 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = 0
        t = 96
        u = 96
        while idx < stor3.length:
            require idx < stor5.length
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] == baseToken:
                revert with 0, 'pa1b'
            require idx < stor7.length
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] == baseToken:
                revert with 0, 'pb1b'
            require idx < stor5.length
            require idx < stor6.length
            require baseToken < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                require mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 160] = tokens[stor10]
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 192] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]]
                require idx < stor3.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] < contracts.length
                mem[0] = 1
                _1021 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[(32 * sub_8a75b4e5) + 128]
                _1023 = mem[(32 * sub_8a75b4e5) + 128]
                u = 0
                while u < 32 * _1023:
                    mem[u + mem[64] + 100] = mem[u + (32 * sub_8a75b4e5) + 160]
                    u = u + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _1023) + _1021 + -mem[64] + 96]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = t
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                _1945 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1952 = mem[_1945]
                require mem[_1945] <= 4294967296
                require mem[_1945] + 32 <= return_data.size
                require mem[_1945 + mem[_1945]] <= 4294967296 and mem[_1945] + (32 * mem[_1945 + mem[_1945]]) + 32 <= return_data.size
                mem[_1945 + ceil32(return_data.size)] = mem[_1945 + mem[_1945]]
                _1961 = mem[_1945 + _1952]
                t = 0
                while t < 32 * _1961:
                    mem[t + _1945 + ceil32(return_data.size) + 32] = mem[t + _1945 + _1952 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1961) + _1945 + ceil32(return_data.size) + 32
                require idx < stor7.length
                require idx < stor8.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                    require mem[(32 * sub_8a75b4e5) + 128]
                    mem[(32 * sub_8a75b4e5) + 160] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                    require baseToken < tokens.length
                    require 1 < mem[(32 * sub_8a75b4e5) + 128]
                    mem[(32 * sub_8a75b4e5) + 192] = tokens[stor10]
                    require idx < stor4.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require mem[_1945 + ceil32(return_data.size)] - 1 < mem[_1945 + ceil32(return_data.size)]
                    _2910 = mem[(32 * mem[_1945 + ceil32(return_data.size)] - 1) + _1945 + ceil32(return_data.size) + 32]
                    mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 36] = _2910
                    mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 68] = 64
                    mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 128]
                    _2913 = mem[(32 * sub_8a75b4e5) + 128]
                    t = 0
                    while t < 32 * _2913:
                        mem[t + (32 * _1961) + _1945 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 160]
                        t = t + 32
                        continue 
                    require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                    staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _2910, 64, mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 100 len (32 * _2913) + 32]
                    if not ext_call.success:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                    mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _3736 = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32
                    require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 <= 4294967296
                    require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 + 32] <= 4294967296 and mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 + (32 * mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 + 32]) + 32 <= return_data.size
                    mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2910) >> 32 + 32]
                    _3753 = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + _3736 + 32]
                    t = 0
                    while t < 32 * _3753:
                        mem[t + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1961) + _1945 + ceil32(return_data.size) + _3736 + 64]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _3753) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64
                    require mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32]
                    _4489 = mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64]
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                            idx = idx + 1
                            s = s
                            t = (32 * sub_8a75b4e5) + 128
                            u = (32 * sub_8a75b4e5) + 128
                            continue 
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                            idx = idx + 1
                            s = s
                            t = (32 * sub_8a75b4e5) + 128
                            u = (32 * sub_8a75b4e5) + 128
                            continue 
                    require idx < stor3.length
                    require 0 < mem[96]
                    mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                    require idx < stor4.length
                    require 1 < mem[96]
                    mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require 2 < mem[96]
                    mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require 3 < mem[96]
                    mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require 4 < mem[96]
                    mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                    require idx < stor8.length
                    mem[0] = 8
                    require 5 < mem[96]
                    mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                    require 0 < mem[_1945 + ceil32(return_data.size)]
                    require 6 < mem[96]
                    mem[320] = mem[_1945 + ceil32(return_data.size) + 32]
                    require mem[_1945 + ceil32(return_data.size)] - 1 < mem[_1945 + ceil32(return_data.size)]
                    require 7 < mem[96]
                    mem[352] = mem[(32 * mem[_1945 + ceil32(return_data.size)] - 1) + _1945 + ceil32(return_data.size) + 32]
                    require 8 < mem[96]
                    mem[384] = _4489
                    require 9 < mem[96]
                    mem[416] = _4489 - arg1
                    idx = idx + 1
                    s = _4489 - arg1
                    t = (32 * sub_8a75b4e5) + 128
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                require mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 256] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]]
                require baseToken < tokens.length
                require 2 < mem[(32 * sub_8a75b4e5) + 224]
                mem[(32 * sub_8a75b4e5) + 320] = tokens[stor10]
                require idx < stor4.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                mem[0] = 1
                require mem[_1945 + ceil32(return_data.size)] - 1 < mem[_1945 + ceil32(return_data.size)]
                _2940 = mem[(32 * mem[_1945 + ceil32(return_data.size)] - 1) + _1945 + ceil32(return_data.size) + 32]
                mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 36] = _2940
                mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 224]
                _2943 = mem[(32 * sub_8a75b4e5) + 224]
                t = 0
                while t < 32 * _2943:
                    mem[t + (32 * _1961) + _1945 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 256]
                    t = t + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _2940, 64, mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 100 len (32 * _2943) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 128
                    continue 
                mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _3734 = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32
                require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 <= 4294967296
                require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 + 32 <= return_data.size
                require mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 + 32] <= 4294967296 and mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 + (32 * mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + mem[(32 * _1961) + _1945 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2940) >> 32 + 32]
                _3752 = mem[(32 * _1961) + _1945 + ceil32(return_data.size) + _3734 + 32]
                t = 0
                while t < 32 * _3752:
                    mem[t + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1961) + _1945 + ceil32(return_data.size) + _3734 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3752) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32]
                _4488 = mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 224
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1961) + _1945 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 224
                        u = (32 * sub_8a75b4e5) + 128
                        continue 
                require idx < stor3.length
                require 0 < mem[96]
                mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                require idx < stor4.length
                require 1 < mem[96]
                mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require 2 < mem[96]
                mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require 3 < mem[96]
                mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require 4 < mem[96]
                mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                require idx < stor8.length
                mem[0] = 8
                require 5 < mem[96]
                mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                require 0 < mem[_1945 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_1945 + ceil32(return_data.size) + 32]
                require mem[_1945 + ceil32(return_data.size)] - 1 < mem[_1945 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_1945 + ceil32(return_data.size)] - 1) + _1945 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _4488
                require 9 < mem[96]
                mem[416] = _4488 - arg1
                idx = idx + 1
                s = _4488 - arg1
                t = (32 * sub_8a75b4e5) + 224
                u = (32 * sub_8a75b4e5) + 128
                continue 
            require mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 256] = tokens[stor10]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < tokens.length
            require 1 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
            require 2 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 320] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]]
            require idx < stor3.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)] < contracts.length
            mem[0] = 1
            _1033 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * sub_8a75b4e5) + 224]
            _1035 = mem[(32 * sub_8a75b4e5) + 224]
            u = 0
            while u < 32 * _1035:
                mem[u + mem[64] + 100] = mem[u + (32 * sub_8a75b4e5) + 256]
                u = u + 32
                continue 
            require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]])
            staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _1035) + _1033 + -mem[64] + 96]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = t
                u = (32 * sub_8a75b4e5) + 224
                continue 
            _1944 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1950 = mem[_1944]
            require mem[_1944] <= 4294967296
            require mem[_1944] + 32 <= return_data.size
            require mem[_1944 + mem[_1944]] <= 4294967296 and mem[_1944] + (32 * mem[_1944 + mem[_1944]]) + 32 <= return_data.size
            mem[_1944 + ceil32(return_data.size)] = mem[_1944 + mem[_1944]]
            _1960 = mem[_1944 + _1950]
            t = 0
            while t < 32 * _1960:
                mem[t + _1944 + ceil32(return_data.size) + 32] = mem[t + _1944 + _1950 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _1960) + _1944 + ceil32(return_data.size) + 32
            require idx < stor7.length
            require idx < stor8.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                require mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 160] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
                require baseToken < tokens.length
                require 1 < mem[(32 * sub_8a75b4e5) + 128]
                mem[(32 * sub_8a75b4e5) + 192] = tokens[stor10]
                require idx < stor4.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
                mem[0] = 1
                require mem[_1944 + ceil32(return_data.size)] - 1 < mem[_1944 + ceil32(return_data.size)]
                _2905 = mem[(32 * mem[_1944 + ceil32(return_data.size)] - 1) + _1944 + ceil32(return_data.size) + 32]
                mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 36] = _2905
                mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 128]
                _2908 = mem[(32 * sub_8a75b4e5) + 128]
                t = 0
                while t < 32 * _2908:
                    mem[t + (32 * _1960) + _1944 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 160]
                    t = t + 32
                    continue 
                require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
                staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _2905, 64, mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 100 len (32 * _2908) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 128
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
                mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _3732 = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32
                require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 <= 4294967296
                require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 + 32 <= return_data.size
                require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 + 32] <= 4294967296 and mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 + (32 * mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2905) >> 32 + 32]
                _3751 = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + _3732 + 32]
                t = 0
                while t < 32 * _3751:
                    mem[t + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1960) + _1944 + ceil32(return_data.size) + _3732 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _3751) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32]
                _4487 = mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 224
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                        idx = idx + 1
                        s = s
                        t = (32 * sub_8a75b4e5) + 128
                        u = (32 * sub_8a75b4e5) + 224
                        continue 
                require idx < stor3.length
                require 0 < mem[96]
                mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
                require idx < stor4.length
                require 1 < mem[96]
                mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require 2 < mem[96]
                mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require 3 < mem[96]
                mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require 4 < mem[96]
                mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                require idx < stor8.length
                mem[0] = 8
                require 5 < mem[96]
                mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                require 0 < mem[_1944 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_1944 + ceil32(return_data.size) + 32]
                require mem[_1944 + ceil32(return_data.size)] - 1 < mem[_1944 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_1944 + ceil32(return_data.size)] - 1) + _1944 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _4487
                require 9 < mem[96]
                mem[416] = _4487 - arg1
                idx = idx + 1
                s = _4487 - arg1
                t = (32 * sub_8a75b4e5) + 128
                u = (32 * sub_8a75b4e5) + 224
                continue 
            require mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 256] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]]
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
            require 1 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 288] = tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]]
            require baseToken < tokens.length
            require 2 < mem[(32 * sub_8a75b4e5) + 224]
            mem[(32 * sub_8a75b4e5) + 320] = tokens[stor10]
            require idx < stor4.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
            mem[0] = 1
            require mem[_1944 + ceil32(return_data.size)] - 1 < mem[_1944 + ceil32(return_data.size)]
            _2934 = mem[(32 * mem[_1944 + ceil32(return_data.size)] - 1) + _1944 + ceil32(return_data.size) + 32]
            mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 36] = _2934
            mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 100] = mem[(32 * sub_8a75b4e5) + 224]
            _2937 = mem[(32 * sub_8a75b4e5) + 224]
            t = 0
            while t < 32 * _2937:
                mem[t + (32 * _1960) + _1944 + ceil32(return_data.size) + 132] = mem[t + (32 * sub_8a75b4e5) + 256]
                t = t + 32
                continue 
            require ext_code.size(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]])
            staticcall contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _2934, 64, mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 100 len (32 * _2937) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = (32 * sub_8a75b4e5) + 224
                u = (32 * sub_8a75b4e5) + 224
                continue 
            mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _3730 = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32
            require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 <= 4294967296
            require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 + 32 <= return_data.size
            require mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 + 32] <= 4294967296 and mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 + (32 * mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + mem[(32 * _1960) + _1944 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _2934) >> 32 + 32]
            _3750 = mem[(32 * _1960) + _1944 + ceil32(return_data.size) + _3730 + 32]
            t = 0
            while t < 32 * _3750:
                mem[t + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _1960) + _1944 + ceil32(return_data.size) + _3730 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _3750) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32]
            _4486 = mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64]
            if not isDebug:
                if mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
            if not isDebug:
                if mem[(32 * mem[(32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1960) + _1944 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                    idx = idx + 1
                    s = s
                    t = (32 * sub_8a75b4e5) + 224
                    u = (32 * sub_8a75b4e5) + 224
                    continue 
            require idx < stor3.length
            require 0 < mem[96]
            mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor3', 3))[uint8(idx)]
            require idx < stor4.length
            require 1 < mem[96]
            mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require 2 < mem[96]
            mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require 3 < mem[96]
            mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require 4 < mem[96]
            mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
            require idx < stor8.length
            mem[0] = 8
            require 5 < mem[96]
            mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
            require 0 < mem[_1944 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_1944 + ceil32(return_data.size) + 32]
            require mem[_1944 + ceil32(return_data.size)] - 1 < mem[_1944 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_1944 + ceil32(return_data.size)] - 1) + _1944 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _4486
            require 9 < mem[96]
            mem[416] = _4486 - arg1
            idx = idx + 1
            s = _4486 - arg1
            t = (32 * sub_8a75b4e5) + 224
            u = (32 * sub_8a75b4e5) + 224
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_c63870d8(?) {
    require calldata.size - 4 >= 288
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
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320] = arg8.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352] = 0
    if arg3.length != arg4.length:
        revert with 0, 'CACB'
    if arg4.length != arg5.length:
        revert with 0, 'CAp1'
    if arg5.length != arg6.length:
        revert with 0, 'pa12'
    if arg6.length != arg7.length:
        revert with 0, 'pa21'
    if arg7.length != arg8.length:
        revert with 0, 'pb12'
    contracts.length = arg1.length
    if not arg1.length:
        idx = 0
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
        tokens.length = arg2.length
        if not arg2.length:
            idx = 0
            while tokens.length > idx:
                tokens[idx] = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor3.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    uint8(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
                stor4.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(4)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor3) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor3)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(3)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor3.length + 31 / 32 > idx:
                uint8(stor3[idx]) = 0
                idx = idx + 1
                continue 
            stor4.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
            s = sha3(8)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            # nil
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                tokens[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while tokens.length > idx:
                tokens[idx] = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor3.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    uint8(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
                stor4.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(4)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor3) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor3)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(3)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor3.length + 31 / 32 > idx:
                uint8(stor3[idx]) = 0
                idx = idx + 1
                continue 
            stor4.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            contracts[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while contracts.length > idx:
            contracts[idx] = 0
            idx = idx + 1
            continue 
        tokens.length = arg2.length
        if not arg2.length:
            idx = 0
            while tokens.length > idx:
                tokens[idx] = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor3.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    uint8(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
                stor4.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(4)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor3) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor3)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(3)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor3.length + 31 / 32 > idx:
                uint8(stor3[idx]) = 0
                idx = idx + 1
                continue 
            stor4.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                tokens[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while tokens.length > idx:
                tokens[idx] = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor3.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    uint8(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
                stor4.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor5.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint8(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                            uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                        s = sha3(5)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                        while stor5.length + 31 / 32 > idx:
                            uint8(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor6.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor7.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor8.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                    uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                s = sha3(4)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor7.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor8.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                    uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                s = sha3(5)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor8.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                    uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                s = sha3(6)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor8.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                    uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                s = sha3(7)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                s = sha3(8)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                # nil
            else:
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + 192
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                    uint256(stor3) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor3)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                s = sha3(3)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
                while stor3.length + 31 / 32 > idx:
                    uint8(stor3[idx]) = 0
                    idx = idx + 1
                    continue 
                stor4.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor5.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint8(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor6.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor6.length + 31 / 32 > idx:
                                uint8(stor6[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                            s = sha3(6)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                            while stor6.length + 31 / 32 > idx:
                                uint8(stor6[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor7.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor8.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor8.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor8.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor8.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    # nil
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(4)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor4.length + 31 / 32 > idx:
                        uint8(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor5.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            uint8(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor6.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor6.length + 31 / 32 > idx:
                                uint8(stor6[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor7.length + 31 / 32 > idx:
                                    uint8(stor7[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                    uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                                s = sha3(7)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                                while stor7.length + 31 / 32 > idx:
                                    uint8(stor7[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            stor8.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(8)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor8.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(8)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor8.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        # nil
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                            uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                        s = sha3(5)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                        while stor5.length + 31 / 32 > idx:
                            uint8(stor5[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor6.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor6.length + 31 / 32 > idx:
                                uint8(stor6[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor7.length + 31 / 32 > idx:
                                    uint8(stor7[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor8.length = arg8.length
                                if not arg8.length:
                                    idx = 0
                                    while stor8.length + 31 / 32 > idx:
                                        uint8(stor8[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                    s = sha3(8)
                                    while idx:
                                        stor[s] = !(255 * 256^idx) and stor[s]
                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                        s = (idx + 1 / 32) + s
                                        continue 
                                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                    while stor8.length + 31 / 32 > idx:
                                        uint8(stor8[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor8.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            # nil
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                            s = sha3(6)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                            while stor6.length + 31 / 32 > idx:
                                uint8(stor6[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor7.length + 31 / 32 > idx:
                                    uint8(stor7[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor8.length = arg8.length
                                if not arg8.length:
                                    idx = 0
                                    while stor8.length + 31 / 32 > idx:
                                        uint8(stor8[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(8)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                # nil
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                    uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                                s = sha3(7)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                                while stor7.length + 31 / 32 > idx:
                                    uint8(stor7[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor8.length = arg8.length
                                # nil
}



}
