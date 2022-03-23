contract main {




// =====================  Runtime code  =====================


#
#  - sub_1767ae33(?)
#  - sub_326fd4b9(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
const getBalance = (eth.balance(this.address) - 10^18)


address owner;
array of struct contracts;
array of uint256 stor10;
uint256 stor11;
uint8 baseToken;
uint8 isDebug; offset 8
uint8 sub_6ab13e7f; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
array of struct tokens;
array of uint8 stor3;
array of uint8 stor4;
array of uint8 stor5;
array of uint8 stor6;
array of uint8 stor7;
array of uint8 stor8;
array of uint8 stor9;

function sub_1856f21d(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    return sub_1856f21d[uint8(arg1)]
}

function sub_3e3bc345(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    return sub_3e3bc345[uint8(arg1)]
}

function sub_46958a33(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor3.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor3', 3))[uint8(arg1)])
}

function contracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < contracts.length
    return address(contracts[arg1].field_0)
}

function sub_4c7494b5(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return sub_4c7494b5[uint8(arg1)]
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return address(tokens[arg1].field_0)
}

function sub_6ab13e7f(?) {
    return bool(sub_6ab13e7f)
}

function owner() {
    return owner
}

function sub_91304c8d(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    return sub_91304c8d[uint8(arg1)]
}

function sub_b84f3a43(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    return sub_b84f3a43[uint8(arg1)]
}

function sub_ba9f8b03(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor9.length
    return sub_ba9f8b03[uint8(arg1)]
}

function baseToken() {
    return baseToken
}

function isDebug() {
    return bool(isDebug)
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

function sub_2467c9f8(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg4.length
    mem[(32 * arg2.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg4.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, arg1)
    stor10.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            stor10[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    stor11 = arg3
    stor3.length = arg4.length
    if not arg4.length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + 160
        while (32 * arg2.length) + (32 * arg4.length) + 160 > idx:
            uint256(stor3) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor3)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        s = sha3(3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    Mask(240, 0, stor12.field_16) = Mask(240, 0, arg5)
}

function sub_413a1c2e(?) {
    require calldata.size - 4 >= 32
    mem[96] = 10
    mem[128 len 320] = call.data[calldata.size len 320]
    mem[448] = 2
    mem[480 len 64] = call.data[calldata.size len 64]
    mem[544] = 3
    mem[64] = 672
    mem[576 len 96] = call.data[calldata.size len 96]
    idx = 0
    s = 0
    t = 96
    u = 96
    while idx < stor4.length:
        require idx < stor6.length
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] == baseToken:
            revert with 0, 'pa1b'
        require idx < stor8.length
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] == baseToken:
            revert with 0, 'pb1b'
        require idx < stor6.length
        require idx < stor7.length
        require baseToken < tokens.length
        if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
            require mem[448]
            mem[480] = address(tokens[uint8(stor12.field_0)].field_0)
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
            require 1 < mem[448]
            mem[512] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
            require idx < stor4.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
            mem[0] = 1
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[448]
            _512 = mem[448]
            u = 0
            while u < 32 * _512:
                mem[u + mem[64] + 100] = mem[u + 480]
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[mem[64] + 68 len (32 * _512) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = t
                u = 448
                continue 
            _973 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _976 = mem[_973]
            require mem[_973] <= 4294967296
            require mem[_973] + 32 <= return_data.size
            require mem[_973 + mem[_973]] <= 4294967296 and mem[_973] + (32 * mem[_973 + mem[_973]]) + 32 <= return_data.size
            mem[_973 + ceil32(return_data.size)] = mem[_973 + mem[_973]]
            _981 = mem[_973 + _976]
            t = 0
            while t < 32 * _981:
                mem[t + _973 + ceil32(return_data.size) + 32] = mem[t + _973 + _976 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _981) + _973 + ceil32(return_data.size) + 32
            require idx < stor8.length
            require idx < stor9.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
                require mem[448]
                mem[480] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]].field_0)
                require baseToken < tokens.length
                require 1 < mem[448]
                mem[512] = address(tokens[uint8(stor12.field_0)].field_0)
                require idx < stor5.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                mem[0] = 1
                require mem[_973 + ceil32(return_data.size)] - 1 < mem[_973 + ceil32(return_data.size)]
                _1454 = mem[(32 * mem[_973 + ceil32(return_data.size)] - 1) + _973 + ceil32(return_data.size) + 32]
                mem[(32 * _981) + _973 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _981) + _973 + ceil32(return_data.size) + 36] = _1454
                mem[(32 * _981) + _973 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _981) + _973 + ceil32(return_data.size) + 100] = mem[448]
                _1457 = mem[448]
                t = 0
                while t < 32 * _1457:
                    mem[t + (32 * _981) + _973 + ceil32(return_data.size) + 132] = mem[t + 480]
                    t = t + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _1454, 64, mem[(32 * _981) + _973 + ceil32(return_data.size) + 100 len (32 * _1457) + 32]
                if not ext_call.success:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 448
                    continue 
                mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _1868 = mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32
                require mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 <= 4294967296
                require mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 + 32 <= return_data.size
                require mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 + 32] <= 4294967296 and mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 + (32 * mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1454) >> 32 + 32]
                _1877 = mem[(32 * _981) + _973 + ceil32(return_data.size) + _1868 + 32]
                t = 0
                while t < 32 * _1877:
                    mem[t + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _981) + _973 + ceil32(return_data.size) + _1868 + 64]
                    t = t + 32
                    continue 
                mem[64] = (32 * _1877) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32]
                _2245 = mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                        idx = idx + 1
                        s = s
                        t = 448
                        u = 448
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                        idx = idx + 1
                        s = s
                        t = 448
                        u = 448
                        continue 
                require idx < stor4.length
                require 0 < mem[96]
                mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require 1 < mem[96]
                mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require 2 < mem[96]
                mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require 3 < mem[96]
                mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
                require idx < stor8.length
                require 4 < mem[96]
                mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
                require idx < stor9.length
                mem[0] = 9
                require 5 < mem[96]
                mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                require 0 < mem[_973 + ceil32(return_data.size)]
                require 6 < mem[96]
                mem[320] = mem[_973 + ceil32(return_data.size) + 32]
                require mem[_973 + ceil32(return_data.size)] - 1 < mem[_973 + ceil32(return_data.size)]
                require 7 < mem[96]
                mem[352] = mem[(32 * mem[_973 + ceil32(return_data.size)] - 1) + _973 + ceil32(return_data.size) + 32]
                require 8 < mem[96]
                mem[384] = _2245
                require 9 < mem[96]
                mem[416] = _2245 - arg1
                idx = idx + 1
                s = _2245 - arg1
                t = 448
                u = 448
                continue 
            require mem[544]
            mem[576] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]].field_0)
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)] < tokens.length
            require 1 < mem[544]
            mem[608] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]].field_0)
            require baseToken < tokens.length
            require 2 < mem[544]
            mem[640] = address(tokens[uint8(stor12.field_0)].field_0)
            require idx < stor5.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
            mem[0] = 1
            require mem[_973 + ceil32(return_data.size)] - 1 < mem[_973 + ceil32(return_data.size)]
            _1468 = mem[(32 * mem[_973 + ceil32(return_data.size)] - 1) + _973 + ceil32(return_data.size) + 32]
            mem[(32 * _981) + _973 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _981) + _973 + ceil32(return_data.size) + 36] = _1468
            mem[(32 * _981) + _973 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _981) + _973 + ceil32(return_data.size) + 100] = mem[544]
            _1471 = mem[544]
            t = 0
            while t < 32 * _1471:
                mem[t + (32 * _981) + _973 + ceil32(return_data.size) + 132] = mem[t + 576]
                t = t + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1468, 64, mem[(32 * _981) + _973 + ceil32(return_data.size) + 100 len (32 * _1471) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = 544
                u = 448
                continue 
            mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _1866 = mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32
            require mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 <= 4294967296
            require mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 + 32 <= return_data.size
            require mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 + 32] <= 4294967296 and mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 + (32 * mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _981) + _973 + ceil32(return_data.size) + mem[(32 * _981) + _973 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1468) >> 32 + 32]
            _1876 = mem[(32 * _981) + _973 + ceil32(return_data.size) + _1866 + 32]
            t = 0
            while t < 32 * _1876:
                mem[t + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _981) + _973 + ceil32(return_data.size) + _1866 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _1876) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32]
            _2244 = mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64]
            if not isDebug:
                if mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                    idx = idx + 1
                    s = s
                    t = 544
                    u = 448
                    continue 
            if not isDebug:
                if mem[(32 * mem[(32 * _981) + _973 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _981) + _973 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                    idx = idx + 1
                    s = s
                    t = 544
                    u = 448
                    continue 
            require idx < stor4.length
            require 0 < mem[96]
            mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require 1 < mem[96]
            mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require 2 < mem[96]
            mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require 3 < mem[96]
            mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
            require idx < stor8.length
            require 4 < mem[96]
            mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
            require idx < stor9.length
            mem[0] = 9
            require 5 < mem[96]
            mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
            require 0 < mem[_973 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_973 + ceil32(return_data.size) + 32]
            require mem[_973 + ceil32(return_data.size)] - 1 < mem[_973 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_973 + ceil32(return_data.size)] - 1) + _973 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _2244
            require 9 < mem[96]
            mem[416] = _2244 - arg1
            idx = idx + 1
            s = _2244 - arg1
            t = 544
            u = 448
            continue 
        require mem[544]
        mem[576] = address(tokens[uint8(stor12.field_0)].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
        require 1 < mem[544]
        mem[608] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
        require 2 < mem[544]
        mem[640] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
        require idx < stor4.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
        mem[0] = 1
        _515 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[544]
        _517 = mem[544]
        u = 0
        while u < 32 * _517:
            mem[u + mem[64] + 100] = mem[u + 576]
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _517) + _515 + -mem[64] + 96]
        if not ext_call.success:
            idx = idx + 1
            s = s
            t = t
            u = 544
            continue 
        _972 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _974 = mem[_972]
        require mem[_972] <= 4294967296
        require mem[_972] + 32 <= return_data.size
        require mem[_972 + mem[_972]] <= 4294967296 and mem[_972] + (32 * mem[_972 + mem[_972]]) + 32 <= return_data.size
        mem[_972 + ceil32(return_data.size)] = mem[_972 + mem[_972]]
        _980 = mem[_972 + _974]
        t = 0
        while t < 32 * _980:
            mem[t + _972 + ceil32(return_data.size) + 32] = mem[t + _972 + _974 + 32]
            t = t + 32
            continue 
        mem[64] = (32 * _980) + _972 + ceil32(return_data.size) + 32
        require idx < stor8.length
        require idx < stor9.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)] < tokens.length
        if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]:
            require mem[448]
            mem[480] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]].field_0)
            require baseToken < tokens.length
            require 1 < mem[448]
            mem[512] = address(tokens[uint8(stor12.field_0)].field_0)
            require idx < stor5.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
            mem[0] = 1
            require mem[_972 + ceil32(return_data.size)] - 1 < mem[_972 + ceil32(return_data.size)]
            _1449 = mem[(32 * mem[_972 + ceil32(return_data.size)] - 1) + _972 + ceil32(return_data.size) + 32]
            mem[(32 * _980) + _972 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _980) + _972 + ceil32(return_data.size) + 36] = _1449
            mem[(32 * _980) + _972 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _980) + _972 + ceil32(return_data.size) + 100] = mem[448]
            _1452 = mem[448]
            t = 0
            while t < 32 * _1452:
                mem[t + (32 * _980) + _972 + ceil32(return_data.size) + 132] = mem[t + 480]
                t = t + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1449, 64, mem[(32 * _980) + _972 + ceil32(return_data.size) + 100 len (32 * _1452) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = 448
                u = 544
                continue 
            mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _1864 = mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32
            require mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 <= 4294967296
            require mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 + 32 <= return_data.size
            require mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 + 32] <= 4294967296 and mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 + (32 * mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1449) >> 32 + 32]
            _1875 = mem[(32 * _980) + _972 + ceil32(return_data.size) + _1864 + 32]
            t = 0
            while t < 32 * _1875:
                mem[t + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _980) + _972 + ceil32(return_data.size) + _1864 + 64]
                t = t + 32
                continue 
            mem[64] = (32 * _1875) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32]
            _2243 = mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64]
            if not isDebug:
                if mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 544
                    continue 
            if not isDebug:
                if mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                    idx = idx + 1
                    s = s
                    t = 448
                    u = 544
                    continue 
            require idx < stor4.length
            require 0 < mem[96]
            mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require 1 < mem[96]
            mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require 2 < mem[96]
            mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require 3 < mem[96]
            mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
            require idx < stor8.length
            require 4 < mem[96]
            mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
            require idx < stor9.length
            mem[0] = 9
            require 5 < mem[96]
            mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
            require 0 < mem[_972 + ceil32(return_data.size)]
            require 6 < mem[96]
            mem[320] = mem[_972 + ceil32(return_data.size) + 32]
            require mem[_972 + ceil32(return_data.size)] - 1 < mem[_972 + ceil32(return_data.size)]
            require 7 < mem[96]
            mem[352] = mem[(32 * mem[_972 + ceil32(return_data.size)] - 1) + _972 + ceil32(return_data.size) + 32]
            require 8 < mem[96]
            mem[384] = _2243
            require 9 < mem[96]
            mem[416] = _2243 - arg1
            idx = idx + 1
            s = _2243 - arg1
            t = 448
            u = 544
            continue 
        require mem[544]
        mem[576] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)] < tokens.length
        require 1 < mem[544]
        mem[608] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]].field_0)
        require baseToken < tokens.length
        require 2 < mem[544]
        mem[640] = address(tokens[uint8(stor12.field_0)].field_0)
        require idx < stor5.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
        mem[0] = 1
        require mem[_972 + ceil32(return_data.size)] - 1 < mem[_972 + ceil32(return_data.size)]
        _1462 = mem[(32 * mem[_972 + ceil32(return_data.size)] - 1) + _972 + ceil32(return_data.size) + 32]
        mem[(32 * _980) + _972 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _980) + _972 + ceil32(return_data.size) + 36] = _1462
        mem[(32 * _980) + _972 + ceil32(return_data.size) + 68] = 64
        mem[(32 * _980) + _972 + ceil32(return_data.size) + 100] = mem[544]
        _1465 = mem[544]
        t = 0
        while t < 32 * _1465:
            mem[t + (32 * _980) + _972 + ceil32(return_data.size) + 132] = mem[t + 576]
            t = t + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _1462, 64, mem[(32 * _980) + _972 + ceil32(return_data.size) + 100 len (32 * _1465) + 32]
        if not ext_call.success:
            idx = idx + 1
            s = s
            t = 544
            u = 544
            continue 
        mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        _1862 = mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32
        require mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 <= 4294967296
        require mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 + 32 <= return_data.size
        require mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 + 32] <= 4294967296 and mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 + (32 * mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 + 32]) + 32 <= return_data.size
        mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _980) + _972 + ceil32(return_data.size) + mem[(32 * _980) + _972 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1462) >> 32 + 32]
        _1874 = mem[(32 * _980) + _972 + ceil32(return_data.size) + _1862 + 32]
        t = 0
        while t < 32 * _1874:
            mem[t + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] = mem[t + (32 * _980) + _972 + ceil32(return_data.size) + _1862 + 64]
            t = t + 32
            continue 
        mem[64] = (32 * _1874) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64
        require mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32]
        _2242 = mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64]
        if not isDebug:
            if mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] <= arg1:
                idx = idx + 1
                s = s
                t = 544
                u = 544
                continue 
        if not isDebug:
            if mem[(32 * mem[(32 * _980) + _972 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _980) + _972 + (2 * ceil32(return_data.size)) + 64] - arg1 <= s:
                idx = idx + 1
                s = s
                t = 544
                u = 544
                continue 
        require idx < stor4.length
        require 0 < mem[96]
        mem[128] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        require 1 < mem[96]
        mem[160] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        require 2 < mem[96]
        mem[192] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        require 3 < mem[96]
        mem[224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        require idx < stor8.length
        require 4 < mem[96]
        mem[256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]
        require idx < stor9.length
        mem[0] = 9
        require 5 < mem[96]
        mem[288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
        require 0 < mem[_972 + ceil32(return_data.size)]
        require 6 < mem[96]
        mem[320] = mem[_972 + ceil32(return_data.size) + 32]
        require mem[_972 + ceil32(return_data.size)] - 1 < mem[_972 + ceil32(return_data.size)]
        require 7 < mem[96]
        mem[352] = mem[(32 * mem[_972 + ceil32(return_data.size)] - 1) + _972 + ceil32(return_data.size) + 32]
        require 8 < mem[96]
        mem[384] = _2242
        require 9 < mem[96]
        mem[416] = _2242 - arg1
        idx = idx + 1
        s = _2242 - arg1
        t = 544
        u = 544
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getContracts() {
    if not contracts.length:
        if not tokens.length:
            if not stor4.length:
                if stor5.length:
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
                    idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                    s = 0
                    while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                        mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
                return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                       (32 * contracts.length) + 192,
                       (32 * tokens.length) + (32 * contracts.length) + 224,
                       (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                       baseToken
            mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
            idx = (32 * contracts.length) + (32 * tokens.length) + 192
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
                return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                       (32 * contracts.length) + 192,
                       (32 * tokens.length) + (32 * contracts.length) + 224,
                       (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                       baseToken
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + -floor32(contracts.length) + 64], stor5.length, mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (64 * stor4.length) + (32 * stor5.length) + floor32(stor5.length) + 512 len (32 * stor5.length) - floor32(stor5.length)]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + 160] = address(tokens.field_0)
        idx = (32 * contracts.length) + 160
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + 128 > idx:
            mem[idx + 32] = address(tokens[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if not stor4.length:
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
                return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                       (32 * contracts.length) + 192,
                       (32 * tokens.length) + (32 * contracts.length) + 224,
                       (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                       baseToken
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + -floor32(contracts.length) + 96], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (64 * stor4.length) + (32 * stor5.length) + floor32(stor5.length) + 512 len (32 * stor5.length) - floor32(stor5.length)]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
        idx = (32 * contracts.length) + (32 * tokens.length) + 192
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
        return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * stor5.length) + (32 * stor4.length) + (32 * tokens.length) + -floor32(contracts.length) + 96]), 
               (32 * contracts.length) + 192,
               (32 * tokens.length) + (32 * contracts.length) + 224,
               (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
               baseToken
    mem[128] = address(contracts.field_0)
    idx = 128
    s = 0
    while (32 * contracts.length) + 96 > idx:
        mem[idx + 32] = address(contracts[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not tokens.length:
        if not stor4.length:
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
                mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
                var21001 = floor32(stor4.length)
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
                mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
                return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                       (32 * contracts.length) + 192,
                       (32 * tokens.length) + (32 * contracts.length) + 224,
                       (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                       baseToken
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + -floor32(contracts.length) + 96], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (64 * stor4.length) + (32 * stor5.length) + floor32(stor5.length) + 512 len (32 * stor5.length) - floor32(stor5.length)]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
        idx = (32 * contracts.length) + (32 * tokens.length) + 192
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
        return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * stor5.length) + (32 * stor4.length) + (32 * tokens.length) + -floor32(contracts.length) + 96]), 
               (32 * contracts.length) + 192,
               (32 * tokens.length) + (32 * contracts.length) + 224,
               (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
               baseToken
    mem[(32 * contracts.length) + 160] = address(tokens.field_0)
    idx = (32 * contracts.length) + 160
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + 128 > idx:
        mem[idx + 32] = address(tokens[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not stor4.length:
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
            mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
            mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
            return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + -floor32(contracts.length) + 96]), 
                   (32 * contracts.length) + 192,
                   (32 * tokens.length) + (32 * contracts.length) + 224,
                   (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
                   baseToken
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
        return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + -floor32(contracts.length) + 64], stor5.length, mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (64 * stor4.length) + (32 * stor5.length) + floor32(stor5.length) + 512 len (32 * stor5.length) - floor32(stor5.length)]), 
               (32 * contracts.length) + 192,
               (32 * tokens.length) + (32 * contracts.length) + 224,
               (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
               baseToken
    mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
    idx = (32 * contracts.length) + (32 * tokens.length) + 192
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not stor5.length:
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
        mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
        mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
        return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * tokens.length) + -floor32(contracts.length) + 32], stor4.length, mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(stor4.length) + 480 len (32 * stor4.length) + (32 * stor5.length) + -floor32(stor4.length) + 32]), 
               (32 * contracts.length) + 192,
               (32 * tokens.length) + (32 * contracts.length) + 224,
               (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
               baseToken
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
    idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
        mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416 len floor32(contracts.length)] = mem[128 len floor32(contracts.length)]
    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448 len floor32(tokens.length)] = mem[(32 * contracts.length) + 160 len floor32(tokens.length)]
    mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = stor4.length
    mem[(64 * tokens.length) + (64 * contracts.length) + (32 * stor4.length) + (32 * stor5.length) + 480 len floor32(stor4.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + 192 len floor32(stor4.length)]
    mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 480] = stor5.length
    mem[(64 * stor4.length) + (64 * tokens.length) + (64 * contracts.length) + (32 * stor5.length) + 512 len floor32(stor5.length)] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)]
    return Array(len=contracts.length, data=mem[128 len floor32(contracts.length)], mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + floor32(contracts.length) + 416 len (32 * contracts.length) + (32 * stor4.length) + (32 * tokens.length) + -floor32(contracts.length) + 64], stor5.length, mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224 len floor32(stor5.length)], mem[(64 * contracts.length) + (64 * tokens.length) + (64 * stor4.length) + (32 * stor5.length) + floor32(stor5.length) + 512 len (32 * stor5.length) - floor32(stor5.length)]), 
           (32 * contracts.length) + 192,
           (32 * tokens.length) + (32 * contracts.length) + 224,
           (32 * stor4.length) + (32 * tokens.length) + (32 * contracts.length) + 256,
           baseToken
}

function sub_dbb36ceb(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    t = 0
    u = 96
    while idx < stor10.length:
        mem[0] = 10
        _499 = mem[64]
        mem[mem[64] + 32 len 320] = call.data[calldata.size len 320]
        mem[mem[64] + 352] = 2
        mem[mem[64] + 384 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 448] = 3
        mem[64] = mem[64] + 576
        mem[_499 + 480 len 96] = call.data[calldata.size len 96]
        t = 0
        u = 0
        v = 96
        w = 96
        while t < stor4.length:
            require t < stor6.length
            if stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)] == baseToken:
                revert with 0, 'pa1b'
            require t < stor8.length
            if stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)] == baseToken:
                revert with 0, 'pb1b'
            require t < stor6.length
            require t < stor7.length
            require baseToken < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]:
                require mem[_499 + 352]
                mem[_499 + 384] = address(tokens[uint8(stor12.field_0)].field_0)
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)] < tokens.length
                require 1 < mem[_499 + 352]
                mem[_499 + 416] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]].field_0)
                require t < stor4.length
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)] < contracts.length
                mem[0] = 1
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor10[idx]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[_499 + 352]
                _1022 = mem[_499 + 352]
                s = 0
                while s < 32 * _1022:
                    mem[s + mem[64] + 100] = mem[s + _499 + 384]
                    s = s + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args stor10[idx], 64, mem[mem[64] + 68 len (32 * _1022) + 32]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = v
                    w = _499 + 352
                    continue 
                _1483 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1486 = mem[_1483]
                require mem[_1483] <= 4294967296
                require mem[_1483] + 32 <= return_data.size
                require mem[_1483 + mem[_1483]] <= 4294967296 and mem[_1483] + (32 * mem[_1483 + mem[_1483]]) + 32 <= return_data.size
                mem[_1483 + ceil32(return_data.size)] = mem[_1483 + mem[_1483]]
                _1491 = mem[_1483 + _1486]
                s = 0
                while s < 32 * _1491:
                    mem[s + _1483 + ceil32(return_data.size) + 32] = mem[s + _1483 + _1486 + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _1491) + _1483 + ceil32(return_data.size) + 32
                require t < stor8.length
                require t < stor9.length
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)] < tokens.length
                if not stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]:
                    require mem[_499 + 352]
                    mem[_499 + 384] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]].field_0)
                    require baseToken < tokens.length
                    require 1 < mem[_499 + 352]
                    mem[_499 + 416] = address(tokens[uint8(stor12.field_0)].field_0)
                    require t < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)] < contracts.length
                    mem[0] = 1
                    require mem[_1483 + ceil32(return_data.size)] - 1 < mem[_1483 + ceil32(return_data.size)]
                    _1964 = mem[(32 * mem[_1483 + ceil32(return_data.size)] - 1) + _1483 + ceil32(return_data.size) + 32]
                    mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 36] = _1964
                    mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 68] = 64
                    mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 100] = mem[_499 + 352]
                    _1967 = mem[_499 + 352]
                    s = 0
                    while s < 32 * _1967:
                        mem[s + (32 * _1491) + _1483 + ceil32(return_data.size) + 132] = mem[s + _499 + 384]
                        s = s + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _1964, 64, mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 100 len (32 * _1967) + 32]
                    if not ext_call.success:
                        t = t + 1
                        u = u
                        v = _499 + 352
                        w = _499 + 352
                        continue 
                    mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    _2378 = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32
                    require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 <= 4294967296
                    require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 + 32] <= 4294967296 and mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 + (32 * mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 + 32]) + 32 <= return_data.size
                    mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1964) >> 32 + 32]
                    _2387 = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + _2378 + 32]
                    s = 0
                    while s < 32 * _2387:
                        mem[s + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _1491) + _1483 + ceil32(return_data.size) + _2378 + 64]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2387) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64
                    require mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32]
                    _2755 = mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64]
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                            t = t + 1
                            u = u
                            v = _499 + 352
                            w = _499 + 352
                            continue 
                    if not isDebug:
                        if mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                            t = t + 1
                            u = u
                            v = _499 + 352
                            w = _499 + 352
                            continue 
                    require t < stor4.length
                    mem[0] = 4
                    require 0 < mem[_499]
                    mem[_499 + 32] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]
                    require t < stor5.length
                    mem[0] = 5
                    require 1 < mem[_499]
                    mem[_499 + 64] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]
                    require t < stor6.length
                    mem[0] = 6
                    require 2 < mem[_499]
                    mem[_499 + 96] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]
                    require t < stor7.length
                    mem[0] = 7
                    require 3 < mem[_499]
                    mem[_499 + 128] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]
                    require t < stor8.length
                    mem[0] = 8
                    require 4 < mem[_499]
                    mem[_499 + 160] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]
                    require t < stor9.length
                    mem[0] = 9
                    require 5 < mem[_499]
                    mem[_499 + 192] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]
                    require 0 < mem[_1483 + ceil32(return_data.size)]
                    require 6 < mem[_499]
                    mem[_499 + 224] = mem[_1483 + ceil32(return_data.size) + 32]
                    require mem[_1483 + ceil32(return_data.size)] - 1 < mem[_1483 + ceil32(return_data.size)]
                    require 7 < mem[_499]
                    mem[_499 + 256] = mem[(32 * mem[_1483 + ceil32(return_data.size)] - 1) + _1483 + ceil32(return_data.size) + 32]
                    require 8 < mem[_499]
                    mem[_499 + 288] = _2755
                    require 9 < mem[_499]
                    mem[_499 + 320] = _2755 - stor10[idx]
                    t = t + 1
                    u = _2755 - stor10[idx]
                    v = _499 + 352
                    w = _499 + 352
                    continue 
                require mem[_499 + 448]
                mem[_499 + 480] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]].field_0)
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)] < tokens.length
                require 1 < mem[_499 + 448]
                mem[_499 + 512] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]].field_0)
                require baseToken < tokens.length
                require 2 < mem[_499 + 448]
                mem[_499 + 544] = address(tokens[uint8(stor12.field_0)].field_0)
                require t < stor5.length
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)] < contracts.length
                mem[0] = 1
                require mem[_1483 + ceil32(return_data.size)] - 1 < mem[_1483 + ceil32(return_data.size)]
                _1978 = mem[(32 * mem[_1483 + ceil32(return_data.size)] - 1) + _1483 + ceil32(return_data.size) + 32]
                mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 36] = _1978
                mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 100] = mem[_499 + 448]
                _1981 = mem[_499 + 448]
                s = 0
                while s < 32 * _1981:
                    mem[s + (32 * _1491) + _1483 + ceil32(return_data.size) + 132] = mem[s + _499 + 480]
                    s = s + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _1978, 64, mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 100 len (32 * _1981) + 32]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = _499 + 448
                    w = _499 + 352
                    continue 
                mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _2376 = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32
                require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 <= 4294967296
                require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 + 32 <= return_data.size
                require mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 + 32] <= 4294967296 and mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 + (32 * mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + mem[(32 * _1491) + _1483 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1978) >> 32 + 32]
                _2386 = mem[(32 * _1491) + _1483 + ceil32(return_data.size) + _2376 + 32]
                s = 0
                while s < 32 * _2386:
                    mem[s + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _1491) + _1483 + ceil32(return_data.size) + _2376 + 64]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2386) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32]
                _2754 = mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                        t = t + 1
                        u = u
                        v = _499 + 448
                        w = _499 + 352
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1491) + _1483 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                        t = t + 1
                        u = u
                        v = _499 + 448
                        w = _499 + 352
                        continue 
                require t < stor4.length
                mem[0] = 4
                require 0 < mem[_499]
                mem[_499 + 32] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]
                require t < stor5.length
                mem[0] = 5
                require 1 < mem[_499]
                mem[_499 + 64] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]
                require t < stor6.length
                mem[0] = 6
                require 2 < mem[_499]
                mem[_499 + 96] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]
                require t < stor7.length
                mem[0] = 7
                require 3 < mem[_499]
                mem[_499 + 128] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]
                require t < stor8.length
                mem[0] = 8
                require 4 < mem[_499]
                mem[_499 + 160] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]
                require t < stor9.length
                mem[0] = 9
                require 5 < mem[_499]
                mem[_499 + 192] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]
                require 0 < mem[_1483 + ceil32(return_data.size)]
                require 6 < mem[_499]
                mem[_499 + 224] = mem[_1483 + ceil32(return_data.size) + 32]
                require mem[_1483 + ceil32(return_data.size)] - 1 < mem[_1483 + ceil32(return_data.size)]
                require 7 < mem[_499]
                mem[_499 + 256] = mem[(32 * mem[_1483 + ceil32(return_data.size)] - 1) + _1483 + ceil32(return_data.size) + 32]
                require 8 < mem[_499]
                mem[_499 + 288] = _2754
                require 9 < mem[_499]
                mem[_499 + 320] = _2754 - stor10[idx]
                t = t + 1
                u = _2754 - stor10[idx]
                v = _499 + 448
                w = _499 + 352
                continue 
            require mem[_499 + 448]
            mem[_499 + 480] = address(tokens[uint8(stor12.field_0)].field_0)
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)] < tokens.length
            require 1 < mem[_499 + 448]
            mem[_499 + 512] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]].field_0)
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)] < tokens.length
            require 2 < mem[_499 + 448]
            mem[_499 + 544] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]].field_0)
            require t < stor4.length
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)] < contracts.length
            mem[0] = 1
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor10[idx]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_499 + 448]
            _1027 = mem[_499 + 448]
            s = 0
            while s < 32 * _1027:
                mem[s + mem[64] + 100] = mem[s + _499 + 480]
                s = s + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args stor10[idx], 64, mem[mem[64] + 68 len (32 * _1027) + 32]
            if not ext_call.success:
                t = t + 1
                u = u
                v = v
                w = _499 + 448
                continue 
            _1482 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1484 = mem[_1482]
            require mem[_1482] <= 4294967296
            require mem[_1482] + 32 <= return_data.size
            require mem[_1482 + mem[_1482]] <= 4294967296 and mem[_1482] + (32 * mem[_1482 + mem[_1482]]) + 32 <= return_data.size
            mem[_1482 + ceil32(return_data.size)] = mem[_1482 + mem[_1482]]
            _1490 = mem[_1482 + _1484]
            s = 0
            while s < 32 * _1490:
                mem[s + _1482 + ceil32(return_data.size) + 32] = mem[s + _1482 + _1484 + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _1490) + _1482 + ceil32(return_data.size) + 32
            require t < stor8.length
            require t < stor9.length
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)] < tokens.length
            if not stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]:
                require mem[_499 + 352]
                mem[_499 + 384] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]].field_0)
                require baseToken < tokens.length
                require 1 < mem[_499 + 352]
                mem[_499 + 416] = address(tokens[uint8(stor12.field_0)].field_0)
                require t < stor5.length
                require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)] < contracts.length
                mem[0] = 1
                require mem[_1482 + ceil32(return_data.size)] - 1 < mem[_1482 + ceil32(return_data.size)]
                _1959 = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
                mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 36] = _1959
                mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 68] = 64
                mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 100] = mem[_499 + 352]
                _1962 = mem[_499 + 352]
                s = 0
                while s < 32 * _1962:
                    mem[s + (32 * _1490) + _1482 + ceil32(return_data.size) + 132] = mem[s + _499 + 384]
                    s = s + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _1959, 64, mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 100 len (32 * _1962) + 32]
                if not ext_call.success:
                    t = t + 1
                    u = u
                    v = _499 + 352
                    w = _499 + 448
                    continue 
                mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                _2374 = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32
                require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 <= 4294967296
                require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 + 32 <= return_data.size
                require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 + 32] <= 4294967296 and mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 + (32 * mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 + 32]) + 32 <= return_data.size
                mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1959) >> 32 + 32]
                _2385 = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + _2374 + 32]
                s = 0
                while s < 32 * _2385:
                    mem[s + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _1490) + _1482 + ceil32(return_data.size) + _2374 + 64]
                    s = s + 32
                    continue 
                mem[64] = (32 * _2385) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64
                require mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32]
                _2753 = mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64]
                if not isDebug:
                    if mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                        t = t + 1
                        u = u
                        v = _499 + 352
                        w = _499 + 448
                        continue 
                if not isDebug:
                    if mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                        t = t + 1
                        u = u
                        v = _499 + 352
                        w = _499 + 448
                        continue 
                require t < stor4.length
                mem[0] = 4
                require 0 < mem[_499]
                mem[_499 + 32] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]
                require t < stor5.length
                mem[0] = 5
                require 1 < mem[_499]
                mem[_499 + 64] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]
                require t < stor6.length
                mem[0] = 6
                require 2 < mem[_499]
                mem[_499 + 96] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]
                require t < stor7.length
                mem[0] = 7
                require 3 < mem[_499]
                mem[_499 + 128] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]
                require t < stor8.length
                mem[0] = 8
                require 4 < mem[_499]
                mem[_499 + 160] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]
                require t < stor9.length
                mem[0] = 9
                require 5 < mem[_499]
                mem[_499 + 192] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]
                require 0 < mem[_1482 + ceil32(return_data.size)]
                require 6 < mem[_499]
                mem[_499 + 224] = mem[_1482 + ceil32(return_data.size) + 32]
                require mem[_1482 + ceil32(return_data.size)] - 1 < mem[_1482 + ceil32(return_data.size)]
                require 7 < mem[_499]
                mem[_499 + 256] = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
                require 8 < mem[_499]
                mem[_499 + 288] = _2753
                require 9 < mem[_499]
                mem[_499 + 320] = _2753 - stor10[idx]
                t = t + 1
                u = _2753 - stor10[idx]
                v = _499 + 352
                w = _499 + 448
                continue 
            require mem[_499 + 448]
            mem[_499 + 480] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]].field_0)
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)] < tokens.length
            require 1 < mem[_499 + 448]
            mem[_499 + 512] = address(tokens[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]].field_0)
            require baseToken < tokens.length
            require 2 < mem[_499 + 448]
            mem[_499 + 544] = address(tokens[uint8(stor12.field_0)].field_0)
            require t < stor5.length
            require stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)] < contracts.length
            mem[0] = 1
            require mem[_1482 + ceil32(return_data.size)] - 1 < mem[_1482 + ceil32(return_data.size)]
            _1972 = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
            mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 36] = _1972
            mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 68] = 64
            mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 100] = mem[_499 + 448]
            _1975 = mem[_499 + 448]
            s = 0
            while s < 32 * _1975:
                mem[s + (32 * _1490) + _1482 + ceil32(return_data.size) + 132] = mem[s + _499 + 480]
                s = s + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1972, 64, mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 100 len (32 * _1975) + 32]
            if not ext_call.success:
                t = t + 1
                u = u
                v = _499 + 448
                w = _499 + 448
                continue 
            mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            _2372 = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32
            require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 <= 4294967296
            require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 + 32 <= return_data.size
            require mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 + 32] <= 4294967296 and mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 + (32 * mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 + 32]) + 32 <= return_data.size
            mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + mem[(32 * _1490) + _1482 + ceil32(return_data.size) + 32 len 4], Mask(224, 32, _1972) >> 32 + 32]
            _2384 = mem[(32 * _1490) + _1482 + ceil32(return_data.size) + _2372 + 32]
            s = 0
            while s < 32 * _2384:
                mem[s + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] = mem[s + (32 * _1490) + _1482 + ceil32(return_data.size) + _2372 + 64]
                s = s + 32
                continue 
            mem[64] = (32 * _2384) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64
            require mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1 < mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32]
            _2752 = mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64]
            if not isDebug:
                if mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] <= stor10[idx]:
                    t = t + 1
                    u = u
                    v = _499 + 448
                    w = _499 + 448
                    continue 
            if not isDebug:
                if mem[(32 * mem[(32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 32] - 1) + (32 * _1490) + _1482 + (2 * ceil32(return_data.size)) + 64] - stor10[idx] <= u:
                    t = t + 1
                    u = u
                    v = _499 + 448
                    w = _499 + 448
                    continue 
            require t < stor4.length
            mem[0] = 4
            require 0 < mem[_499]
            mem[_499 + 32] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor4', 4))[uint8(t)]
            require t < stor5.length
            mem[0] = 5
            require 1 < mem[_499]
            mem[_499 + 64] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor5', 5))[uint8(t)]
            require t < stor6.length
            mem[0] = 6
            require 2 < mem[_499]
            mem[_499 + 96] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor6', 6))[uint8(t)]
            require t < stor7.length
            mem[0] = 7
            require 3 < mem[_499]
            mem[_499 + 128] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor7', 7))[uint8(t)]
            require t < stor8.length
            mem[0] = 8
            require 4 < mem[_499]
            mem[_499 + 160] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor8', 8))[uint8(t)]
            require t < stor9.length
            mem[0] = 9
            require 5 < mem[_499]
            mem[_499 + 192] = stor('array', ('div', 0.03125, ('var', 2)), ('name', 'stor9', 9))[uint8(t)]
            require 0 < mem[_1482 + ceil32(return_data.size)]
            require 6 < mem[_499]
            mem[_499 + 224] = mem[_1482 + ceil32(return_data.size) + 32]
            require mem[_1482 + ceil32(return_data.size)] - 1 < mem[_1482 + ceil32(return_data.size)]
            require 7 < mem[_499]
            mem[_499 + 256] = mem[(32 * mem[_1482 + ceil32(return_data.size)] - 1) + _1482 + ceil32(return_data.size) + 32]
            require 8 < mem[_499]
            mem[_499 + 288] = _2752
            require 9 < mem[_499]
            mem[_499 + 320] = _2752 - stor10[idx]
            t = t + 1
            u = _2752 - stor10[idx]
            v = _499 + 448
            w = _499 + 448
            continue 
        require 9 < mem[_499]
        if mem[_499 + 320] > s:
            require 9 < mem[_499]
            idx = idx + 1
            s = mem[_499 + 320]
            t = stor10[idx]
            u = _499
            continue 
        if not sub_6ab13e7f:
            idx = idx + 1
            s = s
            t = stor10[idx]
            u = _499
            continue 
        _1002 = mem[64]
        mem[mem[64] + 32] = stor10[idx]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_499]
        _1004 = mem[_499]
        idx = 0
        while idx < 32 * _1004:
            mem[idx + mem[64] + 96] = mem[idx + _499 + 32]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len (32 * _1004) + _1002 + -mem[64] + 96
    mem[mem[64] + 32] = t
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[u]
    _497 = mem[u]
    mem[mem[64] + 96 len floor32(mem[u])] = mem[u + 32 len floor32(mem[u])]
    return 64, t, mem[mem[64] + 64 len (32 * _497) + 32]
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
            address(contracts[idx].field_0) = 0
            idx = idx + 1
            continue 
        tokens.length = arg2.length
        if not arg2.length:
            idx = 0
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor4.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(8)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor8.length + 31 / 32 > idx:
                uint8(stor8[idx]) = 0
                idx = idx + 1
                continue 
            stor9.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor9.length + 31 / 32 > idx:
                    uint8(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
            s = sha3(9)
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
                address(tokens[s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor4.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(8)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor8.length + 31 / 32 > idx:
                uint8(stor8[idx]) = 0
                idx = idx + 1
                continue 
            stor9.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor9.length + 31 / 32 > idx:
                    uint8(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(contracts[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while contracts.length > idx:
            address(contracts[idx].field_0) = 0
            idx = idx + 1
            continue 
        tokens.length = arg2.length
        if not arg2.length:
            idx = 0
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor4.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + 192
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = arg4.length
            if not arg4.length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = arg5.length
            if not arg5.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = arg6.length
            if not arg6.length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
            while stor7.length + 31 / 32 > idx:
                uint8(stor7[idx]) = 0
                idx = idx + 1
                continue 
            stor8.length = arg7.length
            if not arg7.length:
                idx = 0
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
            s = sha3(8)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
            while stor8.length + 31 / 32 > idx:
                uint8(stor8[idx]) = 0
                idx = idx + 1
                continue 
            stor9.length = arg8.length
            if not arg8.length:
                idx = 0
                while stor9.length + 31 / 32 > idx:
                    uint8(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
        else:
            s = 0
            idx = (32 * arg1.length) + 160
            while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
                address(tokens[s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = arg9
            stor4.length = arg3.length
            if not arg3.length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor7.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor8.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor9.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(9)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
                    uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                s = sha3(5)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = arg5.length
                if not arg5.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor8.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor9.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(9)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                    uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                s = sha3(6)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = arg6.length
                if not arg6.length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor8.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor9.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(9)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                    uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                s = sha3(7)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
                stor8.length = arg7.length
                if not arg7.length:
                    idx = 0
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor9.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(9)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                s = sha3(8)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                while stor8.length + 31 / 32 > idx:
                    uint8(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
                stor9.length = arg8.length
                if not arg8.length:
                    idx = 0
                    while stor9.length + 31 / 32 > idx:
                        uint8(stor9[idx]) = 0
                        idx = idx + 1
                        continue 
                s = 0
                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                    uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                s = sha3(9)
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
                    uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                s = sha3(4)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg3.length) + 31) >> 5 * None + 3 / 32)
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = arg4.length
                if not arg4.length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor8.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor9.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(9)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = arg6.length
                    if not arg6.length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor8.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                        stor9.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(9)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor8.length = arg7.length
                    if not arg7.length:
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor9.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(9)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                        uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                    s = sha3(8)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                    while stor8.length + 31 / 32 > idx:
                        uint8(stor8[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor9.length = arg8.length
                    if not arg8.length:
                        idx = 0
                        while stor9.length + 31 / 32 > idx:
                            uint8(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                    s = 0
                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                    s = sha3(9)
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
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = arg5.length
                    if not arg5.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor8.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                                s = sha3(8)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            stor9.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor9.length + 31 / 32 > idx:
                                    uint8(stor9[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(9)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                while stor9.length + 31 / 32 > idx:
                                    uint8(stor9[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor8.length = arg7.length
                        if not arg7.length:
                            idx = 0
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor9.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor9.length + 31 / 32 > idx:
                                    uint8(stor9[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(9)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                while stor9.length + 31 / 32 > idx:
                                    uint8(stor9[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                            uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                        s = sha3(8)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                        while stor8.length + 31 / 32 > idx:
                            uint8(stor8[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor9.length = arg8.length
                        if not arg8.length:
                            idx = 0
                            while stor9.length + 31 / 32 > idx:
                                uint8(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                        s = 0
                        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                        while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                            uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                        s = sha3(9)
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
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg5.length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = arg6.length
                        if not arg6.length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor8.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor9.length = arg8.length
                                if not arg8.length:
                                    idx = 0
                                    while stor9.length + 31 / 32 > idx:
                                        uint8(stor9[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                    while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                        uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                    s = sha3(9)
                                    while idx:
                                        stor[s] = !(255 * 256^idx) and stor[s]
                                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                        s = (idx + 1 / 32) + s
                                        continue 
                                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg8.length) + 31) >> 5 * None + 3 / 32)
                                    while stor9.length + 31 / 32 > idx:
                                        uint8(stor9[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 320
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 320 > idx:
                                uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                            s = sha3(8)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                            while stor8.length + 31 / 32 > idx:
                                uint8(stor8[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor9.length = arg8.length
                            if not arg8.length:
                                idx = 0
                                while stor9.length + 31 / 32 > idx:
                                    uint8(stor9[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            s = 0
                            idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                            while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                            s = sha3(9)
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
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg6.length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor8.length = arg7.length
                            if not arg7.length:
                                idx = 0
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor9.length = arg8.length
                                if not arg8.length:
                                    idx = 0
                                    while stor9.length + 31 / 32 > idx:
                                        uint8(stor9[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                s = 0
                                idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 352
                                while (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + (32 * arg8.length) + 352 > idx:
                                    uint256(stor9) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor9)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg8.length) + 31) >> 5
                                s = sha3(9)
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
                                    uint256(stor8) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor8)
                                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
                                s = sha3(8)
                                while idx:
                                    stor[s] = !(255 * 256^idx) and stor[s]
                                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                    s = (idx + 1 / 32) + s
                                    continue 
                                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg7.length) + 31) >> 5 * None + 3 / 32)
                                while stor8.length + 31 / 32 > idx:
                                    uint8(stor8[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                stor9.length = arg8.length
                                # nil
}



}
