contract main {




// =====================  Runtime code  =====================


#
#  - approveToken(address arg1, address arg2)
#  - sub_0acc48f2(?)
#  - withdrawToken(address arg1, uint256 arg2)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
const getBalance = (eth.balance(this.address) - 10^18)


address owner;
array of struct contracts;
uint8 baseToken;
uint8 isDebug; offset 8
uint8 sub_6ab13e7f; offset 16
uint8 saveGas; offset 24
uint256 stor10; offset 32
uint256 stor10; offset 24
uint256 stor10; offset 8
mapping of uint8 stor11;
array of struct tokens;
array of uint8 stor3;
array of uint8 stor4;
array of uint8 stor5;
array of uint8 stor6;
array of uint8 stor7;
array of uint256 stor8;
uint256 stor9;

function saveGas() {
    return bool(saveGas)
}

function sub_1856f21d(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
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

function sub_b84f3a43(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    return sub_b84f3a43[uint8(arg1)]
}

function baseToken() {
    return baseToken
}

function sub_efa1cea2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor11[arg1][arg2])
}

function isDebug() {
    return bool(isDebug)
}

function _fallback() payable {
    revert
}

function sub_7452df57(?) {
    require calldata.size - 4 < 32
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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

function sub_93be28b1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if 0 >= stor4.length:
        mem[96] = 32
        mem[128] = 32
        idx = 0
        s = 128
        t = 160
        while idx < 32:
            _18 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_18 + 32]
            mem[t + 64] = mem[_18 + 64]
            mem[t + 96] = mem[_18 + 96]
            mem[t + 128] = mem[_18 + 128]
            mem[t + 160] = mem[_18 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return 32, 32, mem[160 len 6144]
    else:
        require 0 < stor5.length
        require 0 < stor6.length
        require 0 < stor7.length
        revert
}

function sub_c8aa32f0(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    if 0 >= stor4.length:
        mem[192] = 32
        mem[224] = 2
        idx = 0
        s = 128
        t = 256
        while idx < 2:
            _36 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_36 + 32]
            mem[t + 64] = mem[_36 + 64]
            mem[t + 96] = mem[_36 + 96]
            mem[t + 128] = mem[_36 + 128]
            mem[t + 160] = mem[_36 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return Array(len=2, data=mem[256 len 384])
    mem[192] = 0
    require 0 < stor5.length
    require 0 < stor6.length
    require 0 < stor7.length
    mem[544] = 0
    require 0 < stor6.length
    require baseToken < tokens.length
    mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
    require uint8(stor6) < tokens.length
    mem[160] = address(tokens[uint8(stor6)].field_0)
    require 0 < stor4.length
    require uint8(stor4) < contracts.length
    mem[576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[580] = arg1
    mem[612] = 64
    mem[644] = 2
    idx = 0
    s = 128
    t = 676
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(contracts[uint8(stor4)].field_0))
    staticcall address(contracts[uint8(stor4)].field_0).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[676 len 64])
    if ext_call.success:
        mem[576 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 576
        require return_data.size >= 32
        require mem[576 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[576 len 4], Mask(224, 32, arg1) >> 32 + 607 < return_data.size + 576
        require mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576] <= test266151307()
        require (32 * mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576]) + 608 <= test266151307()
        require return_data.size >= mem[576 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[576 len 4], Mask(224, 32, arg1) >> 32 + 576]) + 32
    revert
}

function sub_39c8a6a2(?) {
    require calldata.size - 4 >= 192
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = (32 * ('cd', 36).length) + 160
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] == bool(cd[132])
    require cd[164] == bool(cd[164])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor10.field_8) = Mask(248, 0, bool(cd[4]))
    stor8.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            stor8[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
    stor9 = cd[68]
    stor3.length = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 36).length) + 160
        while (32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 160 > idx:
            uint256(stor3) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor3)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        s = sha3(3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
        while stor3.length + 31 / 32 > idx:
            uint8(stor3[idx]) = 0
            idx = idx + 1
            continue 
    sub_6ab13e7f = uint8(bool(cd[132]))
    Mask(232, 0, stor10.field_24) = Mask(232, 0, bool(cd[164]))
    Mask(224, 0, stor10.field_32) = 0
    Mask(224, 0, stor10.field_32) = Mask(224, 16, bool(cd[132])) >> 16
}

function sub_b78cc391(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < stor4.length:
        _41 = mem[64]
        mem[64] = mem[64] + 192
        mem[_41] = 0
        mem[_41 + 32] = 0
        mem[_41 + 64] = 0
        mem[_41 + 96] = 0
        mem[_41 + 128] = 0
        mem[_41 + 160] = 0
        _43 = mem[64]
        mem[64] = mem[64] + 192
        mem[0] = 4
        mem[_43] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        mem[_43 + 32] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        mem[_43 + 64] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        mem[_43 + 96] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        mem[_43 + 128] = arg1
        mem[_43 + 160] = 0
        require idx < stor6.length
        require baseToken < tokens.length
        require mem[96]
        mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
        require 1 < mem[96]
        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
        require idx < stor4.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
        mem[0] = 1
        _63 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _64 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _64:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _63 + (32 * _64) + -mem[64] + 96]
        require ext_call.success
        _88 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _90 = mem[_88]
        require mem[_88] <= test266151307()
        require _88 + mem[_88] + 31 < _88 + return_data.size
        _91 = mem[_88 + mem[_88]]
        require mem[_88 + mem[_88]] <= test266151307()
        require (32 * mem[_88 + mem[_88]]) + 32 >= 0 and _88 + ceil32(return_data.size) + (32 * mem[_88 + mem[_88]]) + 32 <= test266151307()
        mem[64] = _88 + ceil32(return_data.size) + (32 * mem[_88 + mem[_88]]) + 32
        mem[_88 + ceil32(return_data.size)] = _91
        require return_data.size >= _90 + (32 * _91) + 32
        t = _88 + _90 + 32
        u = _88 + ceil32(return_data.size) + 32
        s = 0
        while s < _91:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require idx < stor7.length
        mem[0] = 7
        require 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        require _91 - 1 < _91
        mem[_43 + 160] = mem[(32 * _91 - 1) + _88 + ceil32(return_data.size) + 32]
        idx = idx + 1
        continue 
    _40 = mem[64]
    mem[mem[64]] = 32
    _42 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _42:
        _78 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_78 + 32]
        mem[t + 64] = mem[_78 + 64]
        mem[t + 96] = mem[_78 + 96]
        mem[t + 128] = mem[_78 + 128]
        mem[t + 160] = mem[_78 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _40 + (192 * _42) + -mem[64] + 64
}

function sub_1767ae33(?) {
    mem[96] = stor6.length
    if not stor6.length:
        mem[64] = (32 * stor6.length) + (32 * stor7.length) + 160
        mem[(32 * stor6.length) + 128] = stor7.length
        if not stor7.length:
            mem[(32 * stor6.length) + (32 * stor7.length) + 160] = 64
            mem[(32 * stor6.length) + (32 * stor7.length) + 224] = stor6.length
            idx = 0
            s = 128
            t = (32 * stor6.length) + (32 * stor7.length) + 256
            while idx < stor6.length:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor6.length) + (32 * stor7.length) + 192] = (96 * stor6.length) + 96
            mem[(64 * stor6.length) + (32 * stor7.length) + 256] = stor7.length
            idx = 0
            s = (32 * stor6.length) + 160
            t = (64 * stor6.length) + (32 * stor7.length) + 288
            while idx < mem[(32 * stor6.length) + 128]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor6.length) + (64 * stor7.length) + -mem[64] + 288
        mem[(32 * stor6.length) + 160] = uint8(stor7)
        idx = (32 * stor6.length) + 160
        s = 0
        while (32 * stor6.length) + (32 * stor7.length) + 128 > idx:
            mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * stor6.length) + (32 * stor7.length) + 160] = 64
        mem[(32 * stor6.length) + (32 * stor7.length) + 224] = stor6.length
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < stor6.length:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6.length) + (32 * stor7.length) + 192] = (32 * stor6.length) + 96
        _59 = mem[(32 * stor6.length) + 128]
        mem[(64 * stor6.length) + (32 * stor7.length) + 256] = mem[(32 * stor6.length) + 128]
        idx = 0
        s = (32 * stor6.length) + 160
        t = (64 * stor6.length) + (32 * stor7.length) + 288
        while idx < mem[(32 * stor6.length) + 128]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor6.length) + (32 * stor7.length) + (32 * _59) + -mem[64] + 288
    mem[128] = uint8(stor6)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor('name', 'stor6', 6)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[64] = (32 * stor6.length) + (32 * stor7.length) + 160
    mem[(32 * stor6.length) + 128] = stor7.length
    if not stor7.length:
        mem[(32 * stor6.length) + (32 * stor7.length) + 160] = 64
        mem[(32 * stor6.length) + (32 * stor7.length) + 224] = stor6.length
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < stor6.length:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor6.length) + (32 * stor7.length) + 192] = (32 * stor6.length) + 96
        _60 = mem[(32 * stor6.length) + 128]
        mem[(64 * stor6.length) + (32 * stor7.length) + 256] = mem[(32 * stor6.length) + 128]
        idx = 0
        s = (32 * stor6.length) + 160
        t = (64 * stor6.length) + (32 * stor7.length) + 288
        while idx < mem[(32 * stor6.length) + 128]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor6.length) + (32 * stor7.length) + (32 * _60) + -mem[64] + 288
    mem[(32 * stor6.length) + 160] = uint8(stor7)
    idx = (32 * stor6.length) + 160
    s = 0
    while (32 * stor6.length) + (32 * stor7.length) + 128 > idx:
        mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * stor6.length) + (32 * stor7.length) + 160] = 64
    mem[(32 * stor6.length) + (32 * stor7.length) + 224] = stor6.length
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < stor6.length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor6.length) + (32 * stor7.length) + 192] = (32 * stor6.length) + 96
    _76 = mem[(32 * stor6.length) + 128]
    mem[(64 * stor6.length) + (32 * stor7.length) + 256] = mem[(32 * stor6.length) + 128]
    idx = 0
    s = (32 * stor6.length) + 160
    t = (64 * stor6.length) + (32 * stor7.length) + 288
    while idx < mem[(32 * stor6.length) + 128]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor6.length) + (32 * stor7.length) + (32 * _76) + -mem[64] + 288
}

function sub_a1227aca(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < stor4.length:
        _64 = mem[64]
        mem[64] = mem[64] + 192
        mem[_64] = 0
        mem[_64 + 32] = 0
        mem[_64 + 64] = 0
        mem[_64 + 96] = 0
        mem[_64 + 128] = 0
        mem[_64 + 160] = 0
        _66 = mem[64]
        mem[64] = mem[64] + 192
        mem[0] = 4
        mem[_66] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        mem[_66 + 32] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        mem[_66 + 64] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        mem[_66 + 96] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        mem[_66 + 128] = arg1
        mem[_66 + 160] = 0
        require idx < stor6.length
        require baseToken < tokens.length
        require mem[96]
        mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
        require 1 < mem[96]
        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
        require idx < stor4.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
        mem[0] = 1
        _86 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _87 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _87:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _86 + (32 * _87) + -mem[64] + 96]
        if ext_call.success:
            _134 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_134]
            require mem[_134] <= test266151307()
            require _134 + mem[_134] + 31 < _134 + return_data.size
            _137 = mem[_134 + mem[_134]]
            require mem[_134 + mem[_134]] <= test266151307()
            require (32 * mem[_134 + mem[_134]]) + 32 >= 0 and _134 + ceil32(return_data.size) + (32 * mem[_134 + mem[_134]]) + 32 <= test266151307()
            mem[64] = _134 + ceil32(return_data.size) + (32 * mem[_134 + mem[_134]]) + 32
            mem[_134 + ceil32(return_data.size)] = _137
            require return_data.size >= _136 + (32 * _137) + 32
            t = _134 + _136 + 32
            u = _134 + ceil32(return_data.size) + 32
            s = 0
            while s < _137:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx < stor7.length:
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _137 - 1 < _137
                    mem[_66 + 160] = mem[(32 * _137 - 1) + _134 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                if idx < stor6.length:
                    if idx < stor7.length:
                        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length:
                            if mem[96]:
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length:
                                    if 1 < mem[96]:
                                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                        if idx < stor5.length:
                                            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length:
                                                mem[0] = 1
                                                if _137 - 1 < _137:
                                                    _182 = mem[(32 * _137 - 1) + _134 + ceil32(return_data.size) + 32]
                                                    _183 = mem[64]
                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _182
                                                    mem[mem[64] + 36] = 64
                                                    _184 = mem[96]
                                                    mem[mem[64] + 68] = mem[96]
                                                    s = 0
                                                    t = 128
                                                    u = mem[64] + 100
                                                    while s < _184:
                                                        mem[u] = mem[t + 12 len 20]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _183 + (32 * _184) + -mem[64] + 96]
                                                    if ext_call.success:
                                                        _199 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _200 = mem[_199]
                                                        require mem[_199] <= test266151307()
                                                        require _199 + mem[_199] + 31 < _199 + return_data.size
                                                        _202 = mem[_199 + mem[_199]]
                                                        require mem[_199 + mem[_199]] <= test266151307()
                                                        require (32 * mem[_199 + mem[_199]]) + 32 >= 0 and _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32 <= test266151307()
                                                        mem[64] = _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32
                                                        mem[_199 + ceil32(return_data.size)] = _202
                                                        require return_data.size >= _200 + (32 * _202) + 32
                                                        s = _199 + _200 + 32
                                                        t = _199 + ceil32(return_data.size) + 32
                                                        idx = 0
                                                        while idx < _202:
                                                            mem[t] = mem[s]
                                                            s = s + 32
                                                            t = t + 32
                                                            idx = idx + 1
                                                            continue 
        revert
    _63 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _65:
        _124 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_124 + 32]
        mem[t + 64] = mem[_124 + 64]
        mem[t + 96] = mem[_124 + 96]
        mem[t + 128] = mem[_124 + 128]
        mem[t + 160] = mem[_124 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _63 + (192 * _65) + -mem[64] + 64
}

function sub_eaf8ac14(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < stor4.length:
        _61 = mem[64]
        mem[64] = mem[64] + 192
        mem[_61] = 0
        mem[_61 + 32] = 0
        mem[_61 + 64] = 0
        mem[_61 + 96] = 0
        mem[_61 + 128] = 0
        mem[_61 + 160] = 0
        _63 = mem[64]
        mem[64] = mem[64] + 192
        mem[0] = 4
        mem[_63] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        mem[_63 + 32] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        mem[_63 + 64] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        mem[_63 + 96] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        mem[_63 + 128] = arg1
        mem[_63 + 160] = 0
        require idx < stor6.length
        require baseToken < tokens.length
        require mem[96]
        mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
        require 1 < mem[96]
        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
        require idx < stor4.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
        mem[0] = 1
        _83 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _84 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _84:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _83 + (32 * _84) + -mem[64] + 96]
        if ext_call.success:
            _128 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_128]
            require mem[_128] <= test266151307()
            require _128 + mem[_128] + 31 < _128 + return_data.size
            _131 = mem[_128 + mem[_128]]
            require mem[_128 + mem[_128]] <= test266151307()
            require (32 * mem[_128 + mem[_128]]) + 32 >= 0 and _128 + ceil32(return_data.size) + (32 * mem[_128 + mem[_128]]) + 32 <= test266151307()
            mem[64] = _128 + ceil32(return_data.size) + (32 * mem[_128 + mem[_128]]) + 32
            mem[_128 + ceil32(return_data.size)] = _131
            require return_data.size >= _130 + (32 * _131) + 32
            t = _128 + _130 + 32
            u = _128 + ceil32(return_data.size) + 32
            s = 0
            while s < _131:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx < stor7.length:
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _131 - 1 < _131
                    mem[_63 + 160] = mem[(32 * _131 - 1) + _128 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                if idx < stor6.length:
                    if idx < stor7.length:
                        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length:
                            if mem[96]:
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length:
                                    if 1 < mem[96]:
                                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                        if idx < stor5.length:
                                            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length:
                                                mem[0] = 1
                                                if _131 - 1 < _131:
                                                    _173 = mem[(32 * _131 - 1) + _128 + ceil32(return_data.size) + 32]
                                                    _174 = mem[64]
                                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _173
                                                    mem[mem[64] + 36] = 64
                                                    _175 = mem[96]
                                                    mem[mem[64] + 68] = mem[96]
                                                    s = 0
                                                    t = 128
                                                    u = mem[64] + 100
                                                    while s < _175:
                                                        mem[u] = mem[t + 12 len 20]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 32
                                                        continue 
                                                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _174 + (32 * _175) + -mem[64] + 96]
                                                    if ext_call.success:
                                                        _187 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _188 = mem[_187]
                                                        require mem[_187] <= test266151307()
                                                        require _187 + mem[_187] + 31 < _187 + return_data.size
                                                        _190 = mem[_187 + mem[_187]]
                                                        require mem[_187 + mem[_187]] <= test266151307()
                                                        require (32 * mem[_187 + mem[_187]]) + 32 >= 0 and _187 + ceil32(return_data.size) + (32 * mem[_187 + mem[_187]]) + 32 <= test266151307()
                                                        mem[64] = _187 + ceil32(return_data.size) + (32 * mem[_187 + mem[_187]]) + 32
                                                        mem[_187 + ceil32(return_data.size)] = _190
                                                        require return_data.size >= _188 + (32 * _190) + 32
                                                        s = _187 + _188 + 32
                                                        t = _187 + ceil32(return_data.size) + 32
                                                        idx = 0
                                                        while idx < _190:
                                                            mem[t] = mem[s]
                                                            s = s + 32
                                                            t = t + 32
                                                            idx = idx + 1
                                                            continue 
        revert
    _60 = mem[64]
    mem[mem[64]] = 32
    _62 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _62:
        _118 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_118 + 32]
        mem[t + 64] = mem[_118 + 64]
        mem[t + 96] = mem[_118 + 96]
        mem[t + 128] = mem[_118 + 128]
        mem[t + 160] = mem[_118 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _60 + (192 * _62) + -mem[64] + 64
}

function getContracts() {
    mem[96] = contracts.length
    if not contracts.length:
        mem[(32 * contracts.length) + 128] = tokens.length
        if not tokens.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + 160] = stor4.length
            if not stor4.length:
                mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
                if not stor5.length:
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
                    idx = 0
                    s = 128
                    t = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416
                    while idx < contracts.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (96 * contracts.length) + 192
                    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = tokens.length
                    idx = 0
                    s = (32 * contracts.length) + 160
                    t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
                    while idx < mem[(32 * contracts.length) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (96 * contracts.length) + (32 * tokens.length) + 224
                    mem[(64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
                    idx = 0
                    s = (32 * contracts.length) + (32 * tokens.length) + 192
                    t = (64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 480
                    while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (96 * contracts.length) + (32 * tokens.length) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
                    _225 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                    mem[(64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                    idx = 0
                    s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                    t = (64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
                    while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
                    return memory
                      from mem[64]
                       len (64 * contracts.length) + (64 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _225) + -mem[64] + 512
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
                idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                s = 0
                while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                    mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < contracts.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
                _104 = mem[(32 * contracts.length) + 128]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
                idx = 0
                s = (32 * contracts.length) + 160
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
                while idx < mem[(32 * contracts.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _104) + 224
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _104) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + 192
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _104) + 480
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _104) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
                _336 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _104) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _104) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
                return memory
                  from mem[64]
                   len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _104) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _336) + -mem[64] + 512
            mem[0] = 4
            mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
            idx = (32 * contracts.length) + (32 * tokens.length) + 192
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < contracts.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
                _105 = mem[(32 * contracts.length) + 128]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
                idx = 0
                s = (32 * contracts.length) + 160
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
                while idx < mem[(32 * contracts.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _105) + 224
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _105) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + 192
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _105) + 480
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _105) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
                _337 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _105) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _105) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
                return memory
                  from mem[64]
                   len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _105) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _337) + -mem[64] + 512
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _228 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _228) + 224
            _338 = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _228) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _228) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _228) + (32 * _338) + 256
            _462 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _228) + (32 * _338) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _228) + (32 * _338) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _228) + (32 * _338) + (32 * _462) + -mem[64] + 512
        mem[0] = 2
        mem[(32 * contracts.length) + 160] = address(tokens.field_0)
        idx = (32 * contracts.length) + 160
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + 128 > idx:
            mem[idx + 32] = address(tokens[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + 160] = stor4.length
        if not stor4.length:
            mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < contracts.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
                _229 = mem[(32 * contracts.length) + 128]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
                idx = 0
                s = (32 * contracts.length) + 160
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
                while idx < mem[(32 * contracts.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _229) + 224
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _229) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + 192
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _229) + 480
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _229) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
                _463 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _229) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _229) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
                return memory
                  from mem[64]
                   len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _229) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _463) + -mem[64] + 512
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _340 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _340) + 224
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _340) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _340) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _340) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
            _557 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _340) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _340) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _340) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _557) + -mem[64] + 512
        mem[0] = 4
        mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
        idx = (32 * contracts.length) + (32 * tokens.length) + 192
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _341 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _341) + 224
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _341) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _341) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _341) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
            _558 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _341) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _341) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _341) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _558) + -mem[64] + 512
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < contracts.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
        _466 = mem[(32 * contracts.length) + 128]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
        idx = 0
        s = (32 * contracts.length) + 160
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
        while idx < mem[(32 * contracts.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _466) + 224
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _466) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + 192
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _466) + 480
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _466) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
        _621 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _466) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _466) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
        return memory
          from mem[64]
           len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _466) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _621) + -mem[64] + 512
    mem[0] = 1
    mem[128] = address(contracts.field_0)
    idx = 128
    s = 0
    while (32 * contracts.length) + 96 > idx:
        mem[idx + 32] = address(contracts[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * contracts.length) + 128] = tokens.length
    if not tokens.length:
        mem[(32 * contracts.length) + (32 * tokens.length) + 160] = stor4.length
        if not stor4.length:
            mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
            if not stor5.length:
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < contracts.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
                _232 = mem[(32 * contracts.length) + 128]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
                idx = 0
                s = (32 * contracts.length) + 160
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
                while idx < mem[(32 * contracts.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _232) + 224
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _232) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + 192
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _232) + 480
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _232) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
                _467 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _232) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
                idx = 0
                s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
                t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _232) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
                while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                    mem[t] = mem[s + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
                return memory
                  from mem[64]
                   len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _232) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _467) + -mem[64] + 512
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
            idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            s = 0
            while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
                mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _344 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _344) + 224
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _344) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _344) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _344) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
            _561 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _344) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _344) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _344) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _561) + -mem[64] + 512
        mem[0] = 4
        mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
        idx = (32 * contracts.length) + (32 * tokens.length) + 192
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _345 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _345) + 224
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _345) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _345) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _345) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
            _562 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _345) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _345) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _345) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _562) + -mem[64] + 512
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < contracts.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
        _470 = mem[(32 * contracts.length) + 128]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
        idx = 0
        s = (32 * contracts.length) + 160
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
        while idx < mem[(32 * contracts.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _470) + 224
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _470) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + 192
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _470) + 480
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _470) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
        _624 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _470) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _470) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
        return memory
          from mem[64]
           len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _470) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _624) + -mem[64] + 512
    mem[0] = 2
    mem[(32 * contracts.length) + 160] = address(tokens.field_0)
    idx = (32 * contracts.length) + 160
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + 128 > idx:
        mem[idx + 32] = address(tokens[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + 160] = stor4.length
    if not stor4.length:
        mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
        if not stor5.length:
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < contracts.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
            _471 = mem[(32 * contracts.length) + 128]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
            idx = 0
            s = (32 * contracts.length) + 160
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
            while idx < mem[(32 * contracts.length) + 128]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _471) + 224
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _471) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + 192
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _471) + 480
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _471) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
            _625 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _471) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
            idx = 0
            s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
            t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _471) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
            while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
            return memory
              from mem[64]
               len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _471) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _625) + -mem[64] + 512
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
        idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        s = 0
        while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
            mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < contracts.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
        _565 = mem[(32 * contracts.length) + 128]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
        idx = 0
        s = (32 * contracts.length) + 160
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
        while idx < mem[(32 * contracts.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _565) + 224
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _565) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + 192
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _565) + 480
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _565) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
        _658 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _565) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _565) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
        return memory
          from mem[64]
           len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _565) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _658) + -mem[64] + 512
    mem[0] = 4
    mem[(32 * contracts.length) + (32 * tokens.length) + 192] = uint8(stor4)
    idx = (32 * contracts.length) + (32 * tokens.length) + 192
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 160 > idx:
        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[64] = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192] = stor5.length
    if not stor5.length:
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < contracts.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
        _566 = mem[(32 * contracts.length) + 128]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
        idx = 0
        s = (32 * contracts.length) + 160
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
        while idx < mem[(32 * contracts.length) + 128]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _566) + 224
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _566) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + 192
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _566) + 480
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _566) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
        _659 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _566) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
        idx = 0
        s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
        t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _566) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
        while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
        return memory
          from mem[64]
           len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _566) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _659) + -mem[64] + 512
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224] = uint8(stor5)
    idx = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
    s = 0
    while (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 192 > idx:
        mem[idx + 32] = stor('name', 'stor5', 5)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 224] = 160
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 384] = contracts.length
    idx = 0
    s = 128
    t = mem[64] + 192
    while idx < contracts.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 256] = (32 * contracts.length) + 192
    _628 = mem[(32 * contracts.length) + 128]
    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 416] = mem[(32 * contracts.length) + 128]
    idx = 0
    s = (32 * contracts.length) + 160
    t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 448
    while idx < mem[(32 * contracts.length) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 288] = (32 * contracts.length) + (32 * _628) + 224
    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _628) + 448] = mem[(32 * contracts.length) + (32 * tokens.length) + 160]
    idx = 0
    s = (32 * contracts.length) + (32 * tokens.length) + 192
    t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _628) + 480
    while idx < mem[(32 * contracts.length) + (32 * tokens.length) + 160]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 320] = (32 * contracts.length) + (32 * _628) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 256
    _674 = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
    mem[(64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _628) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 480] = mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]
    idx = 0
    s = (32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 224
    t = (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _628) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + 512
    while idx < mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + 192]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + 352] = baseToken
    return memory
      from mem[64]
       len (64 * contracts.length) + (32 * tokens.length) + (32 * stor4.length) + (32 * stor5.length) + (32 * _628) + (32 * mem[(32 * contracts.length) + (32 * tokens.length) + 160]) + (32 * _674) + -mem[64] + 512
}

function sub_0ac59363(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 256 >= 224 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
    while idx < ('cd', 132).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 164).length) + 288 >= 256 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
    while idx < ('cd', 164).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == uint8(cd[196])
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'CACB'
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'CAp1'
    if ('cd', 132).length != ('cd', 164).length:
        revert with 0, 'pab11'
    contracts.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while contracts.length > idx:
            address(contracts[idx].field_0) = 0
            idx = idx + 1
            continue 
        tokens.length = ('cd', 36).length
        if not ('cd', 36).length:
            idx = 0
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = uint8(cd[196])
            stor4.length = ('cd', 68).length
            if not ('cd', 68).length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = ('cd', 132).length
            if not ('cd', 132).length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = ('cd', 164).length
            if not ('cd', 164).length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
            s = sha3(7)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            # nil
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
                address(tokens[s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = uint8(cd[196])
            stor4.length = ('cd', 68).length
            if not ('cd', 68).length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = ('cd', 132).length
            if not ('cd', 132).length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = ('cd', 164).length
            if not ('cd', 164).length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(contracts[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while contracts.length > idx:
            address(contracts[idx].field_0) = 0
            idx = idx + 1
            continue 
        tokens.length = ('cd', 36).length
        if not ('cd', 36).length:
            idx = 0
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = uint8(cd[196])
            stor4.length = ('cd', 68).length
            if not ('cd', 68).length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > idx:
                uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            s = sha3(4)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5 * None + 3 / 32)
            while stor4.length + 31 / 32 > idx:
                uint8(stor4[idx]) = 0
                idx = idx + 1
                continue 
            stor5.length = ('cd', 100).length
            if not ('cd', 100).length:
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
            s = sha3(5)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
            while stor5.length + 31 / 32 > idx:
                uint8(stor5[idx]) = 0
                idx = idx + 1
                continue 
            stor6.length = ('cd', 132).length
            if not ('cd', 132).length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
            s = sha3(6)
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
            while stor6.length + 31 / 32 > idx:
                uint8(stor6[idx]) = 0
                idx = idx + 1
                continue 
            stor7.length = ('cd', 164).length
            if not ('cd', 164).length:
                idx = 0
                while stor7.length + 31 / 32 > idx:
                    uint8(stor7[idx]) = 0
                    idx = idx + 1
                    continue 
            s = 0
            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            # nil
        else:
            s = 0
            idx = (32 * ('cd', 4).length) + 160
            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
                address(tokens[s].field_0) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
            while tokens.length > idx:
                address(tokens[idx].field_0) = 0
                idx = idx + 1
                continue 
            baseToken = uint8(cd[196])
            stor4.length = ('cd', 68).length
            if not ('cd', 68).length:
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = ('cd', 132).length
                    if not ('cd', 132).length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                    stor7.length = ('cd', 164).length
                    if not ('cd', 164).length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
                while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                    uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                s = sha3(5)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
                while stor5.length + 31 / 32 > idx:
                    uint8(stor5[idx]) = 0
                    idx = idx + 1
                    continue 
                stor6.length = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = ('cd', 164).length
                    if not ('cd', 164).length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                s = 0
                idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                    uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                s = sha3(6)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                while stor6.length + 31 / 32 > idx:
                    uint8(stor6[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = ('cd', 164).length
                if not ('cd', 164).length:
                    idx = 0
                    while stor7.length + 31 / 32 > idx:
                        uint8(stor7[idx]) = 0
                        idx = idx + 1
                        continue 
                s = 0
                idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                    uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                s = sha3(7)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                # nil
            else:
                s = 0
                idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
                while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > idx:
                    uint256(stor4) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor4)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                s = sha3(4)
                while idx:
                    stor[s] = !(255 * 256^idx) and stor[s]
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5 * None + 3 / 32)
                while stor4.length + 31 / 32 > idx:
                    uint8(stor4[idx]) = 0
                    idx = idx + 1
                    continue 
                stor5.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = ('cd', 132).length
                    if not ('cd', 132).length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = ('cd', 164).length
                        if not ('cd', 164).length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                            while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                                uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                            s = sha3(7)
                            while idx:
                                stor[s] = !(255 * 256^idx) and stor[s]
                                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                s = (idx + 1 / 32) + s
                                continue 
                            idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5 * None + 3 / 32)
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                        uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    s = sha3(6)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                    while stor6.length + 31 / 32 > idx:
                        uint8(stor6[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor7.length = ('cd', 164).length
                    if not ('cd', 164).length:
                        idx = 0
                        while stor7.length + 31 / 32 > idx:
                            uint8(stor7[idx]) = 0
                            idx = idx + 1
                            continue 
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                        uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                    s = sha3(7)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    # nil
                else:
                    s = 0
                    idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
                    while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > idx:
                        uint256(stor5) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor5)
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(5)
                    while idx:
                        stor[s] = !(255 * 256^idx) and stor[s]
                        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                        s = (idx + 1 / 32) + s
                        continue 
                    idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5 * None + 3 / 32)
                    while stor5.length + 31 / 32 > idx:
                        uint8(stor5[idx]) = 0
                        idx = idx + 1
                        continue 
                    stor6.length = ('cd', 132).length
                    if not ('cd', 132).length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = ('cd', 164).length
                        if not ('cd', 164).length:
                            idx = 0
                            while stor7.length + 31 / 32 > idx:
                                uint8(stor7[idx]) = 0
                                idx = idx + 1
                                continue 
                        s = 0
                        idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 288
                        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 288 > idx:
                            uint256(stor7) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor7)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                        s = sha3(7)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        # nil
                    else:
                        s = 0
                        idx = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
                        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 256 > idx:
                            uint256(stor6) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor6)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                        s = sha3(6)
                        while idx:
                            stor[s] = !(255 * 256^idx) and stor[s]
                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                            s = (idx + 1 / 32) + s
                            continue 
                        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5 * None + 3 / 32)
                        while stor6.length + 31 / 32 > idx:
                            uint8(stor6[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = ('cd', 164).length
                        # nil
}



}
