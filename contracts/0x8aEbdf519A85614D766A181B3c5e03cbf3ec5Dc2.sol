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

function sub_7452df57(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128 len 64] = call.data[calldata.size len 64]
    require stor4.length <= test266151307()
    mem[192] = stor4.length
    mem[64] = (32 * stor4.length) + 224
    if not stor4.length:
        idx = 0
        while idx < stor4.length:
            require idx < stor6.length
            require baseToken < tokens.length
            require mem[96]
            mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
            mem[0] = 2
            require 1 < mem[96]
            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
            _145 = mem[64]
            mem[64] = mem[64] + 192
            mem[_145] = 0
            mem[_145 + 32] = 0
            mem[_145 + 64] = 0
            mem[_145 + 96] = 0
            mem[_145 + 128] = 0
            mem[_145 + 160] = 0
            _148 = mem[64]
            mem[64] = mem[64] + 192
            require idx < stor4.length
            mem[0] = 4
            mem[_148] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            mem[_148 + 32] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            mem[_148 + 64] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            mem[_148 + 96] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
            mem[_148 + 128] = arg1
            mem[_148 + 160] = 0
            require idx < stor4.length
            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
            mem[0] = 1
            _167 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _170 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _170:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _167 + (32 * _170) + -mem[64] + 96]
            if not ext_call.success:
                require idx < mem[192]
                mem[(32 * idx) + 224] = _148
            else:
                _260 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _264 = mem[_260]
                require mem[_260] <= test266151307()
                require _260 + mem[_260] + 31 < _260 + return_data.size
                _268 = mem[_260 + mem[_260]]
                require mem[_260 + mem[_260]] <= test266151307()
                require (32 * mem[_260 + mem[_260]]) + 32 >= 0 and _260 + ceil32(return_data.size) + (32 * mem[_260 + mem[_260]]) + 32 <= test266151307()
                mem[64] = _260 + ceil32(return_data.size) + (32 * mem[_260 + mem[_260]]) + 32
                mem[_260 + ceil32(return_data.size)] = _268
                require return_data.size >= _264 + (32 * _268) + 32
                t = _260 + _264 + 32
                u = _260 + ceil32(return_data.size) + 32
                s = 0
                while s < _268:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _268 - 1 < _268
                    mem[_148 + 160] = mem[(32 * _268 - 1) + _260 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _268 - 1 < _268
                    _393 = mem[(32 * _268 - 1) + _260 + ceil32(return_data.size) + 32]
                    _394 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _393
                    mem[mem[64] + 36] = 64
                    _396 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _396:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _394 + (32 * _396) + -mem[64] + 96]
                    if ext_call.success:
                        _457 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _459 = mem[_457]
                        require mem[_457] <= test266151307()
                        require _457 + mem[_457] + 31 < _457 + return_data.size
                        _463 = mem[_457 + mem[_457]]
                        require mem[_457 + mem[_457]] <= test266151307()
                        require (32 * mem[_457 + mem[_457]]) + 32 >= 0 and _457 + ceil32(return_data.size) + (32 * mem[_457 + mem[_457]]) + 32 <= test266151307()
                        mem[64] = _457 + ceil32(return_data.size) + (32 * mem[_457 + mem[_457]]) + 32
                        mem[_457 + ceil32(return_data.size)] = _463
                        require return_data.size >= _459 + (32 * _463) + 32
                        t = _457 + _459 + 32
                        u = _457 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _463:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _463 - 1 < _463
                        mem[_148 + 160] = mem[(32 * _463 - 1) + _457 + ceil32(return_data.size) + 32]
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = _148
            idx = idx + 1
            continue 
        _127 = mem[64]
        mem[mem[64]] = 32
        _129 = mem[192]
        mem[mem[64] + 32] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 64
        while idx < _129:
            _250 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_250 + 32]
            mem[t + 64] = mem[_250 + 64]
            mem[t + 96] = mem[_250 + 96]
            mem[t + 128] = mem[_250 + 128]
            mem[t + 160] = mem[_250 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _127 + (192 * _129) + -mem[64] + 64
    mem[64] = (32 * stor4.length) + 416
    mem[(32 * stor4.length) + 224] = 0
    mem[(32 * stor4.length) + 256] = 0
    mem[(32 * stor4.length) + 288] = 0
    mem[(32 * stor4.length) + 320] = 0
    mem[(32 * stor4.length) + 352] = 0
    mem[(32 * stor4.length) + 384] = 0
    mem[var12001] = (32 * stor4.length) + 224
    s = var12001
    idx = var12002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * stor4.length) + 224] = 0
        mem[(32 * stor4.length) + 256] = 0
        mem[(32 * stor4.length) + 288] = 0
        mem[(32 * stor4.length) + 320] = 0
        mem[(32 * stor4.length) + 352] = 0
        mem[(32 * stor4.length) + 384] = 0
        mem[s + 32] = (32 * stor4.length) + 224
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor4.length:
        require idx < stor6.length
        require baseToken < tokens.length
        require mem[96]
        mem[128] = address(tokens[uint8(stor10.field_0)].field_0)
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
        mem[0] = 2
        require 1 < mem[96]
        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
        _377 = mem[64]
        mem[64] = mem[64] + 192
        mem[_377] = 0
        mem[_377 + 32] = 0
        mem[_377 + 64] = 0
        mem[_377 + 96] = 0
        mem[_377 + 128] = 0
        mem[_377 + 160] = 0
        _380 = mem[64]
        mem[64] = mem[64] + 192
        require idx < stor4.length
        mem[0] = 4
        mem[_380] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        mem[_380 + 32] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        mem[_380 + 64] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        mem[_380 + 96] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
        mem[_380 + 128] = arg1
        mem[_380 + 160] = 0
        require idx < stor4.length
        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)] < contracts.length
        mem[0] = 1
        _392 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _395 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _395:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _392 + (32 * _395) + -mem[64] + 96]
        if not ext_call.success:
            require idx < mem[192]
            mem[(32 * idx) + 224] = _380
        else:
            _458 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _461 = mem[_458]
            require mem[_458] <= test266151307()
            require _458 + mem[_458] + 31 < _458 + return_data.size
            _464 = mem[_458 + mem[_458]]
            require mem[_458 + mem[_458]] <= test266151307()
            require (32 * mem[_458 + mem[_458]]) + 32 >= 0 and _458 + ceil32(return_data.size) + (32 * mem[_458 + mem[_458]]) + 32 <= test266151307()
            mem[64] = _458 + ceil32(return_data.size) + (32 * mem[_458 + mem[_458]]) + 32
            mem[_458 + ceil32(return_data.size)] = _464
            require return_data.size >= _461 + (32 * _464) + 32
            t = _458 + _461 + 32
            u = _458 + ceil32(return_data.size) + 32
            s = 0
            while s < _464:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require idx < stor7.length
            mem[0] = 7
            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                require _464 - 1 < _464
                mem[_380 + 160] = mem[(32 * _464 - 1) + _458 + ceil32(return_data.size) + 32]
            else:
                require idx < stor6.length
                require idx < stor7.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                require mem[96]
                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                require 1 < mem[96]
                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                require idx < stor5.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                mem[0] = 1
                require _464 - 1 < _464
                _520 = mem[(32 * _464 - 1) + _458 + ceil32(return_data.size) + 32]
                _521 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _520
                mem[mem[64] + 36] = 64
                _522 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _522:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _521 + (32 * _522) + -mem[64] + 96]
                if ext_call.success:
                    _537 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _538 = mem[_537]
                    require mem[_537] <= test266151307()
                    require _537 + mem[_537] + 31 < _537 + return_data.size
                    _540 = mem[_537 + mem[_537]]
                    require mem[_537 + mem[_537]] <= test266151307()
                    require (32 * mem[_537 + mem[_537]]) + 32 >= 0 and _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32 <= test266151307()
                    mem[64] = _537 + ceil32(return_data.size) + (32 * mem[_537 + mem[_537]]) + 32
                    mem[_537 + ceil32(return_data.size)] = _540
                    require return_data.size >= _538 + (32 * _540) + 32
                    t = _537 + _538 + 32
                    u = _537 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _540:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _540 - 1 < _540
                    mem[_380 + 160] = mem[(32 * _540 - 1) + _537 + ceil32(return_data.size) + 32]
                require idx < mem[192]
                mem[(32 * idx) + 224] = _380
        idx = idx + 1
        continue 
    _356 = mem[64]
    mem[mem[64]] = 32
    _358 = mem[192]
    mem[mem[64] + 32] = mem[192]
    idx = 0
    s = 224
    t = mem[64] + 64
    while idx < _358:
        _446 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_446 + 32]
        mem[t + 64] = mem[_446 + 64]
        mem[t + 96] = mem[_446 + 96]
        mem[t + 128] = mem[_446 + 128]
        mem[t + 160] = mem[_446 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _356 + (192 * _358) + -mem[64] + 64
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

function sub_96e7b860(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128 len 64] = call.data[calldata.size len 64]
    require stor4.length <= test266151307()
    mem[192] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(32 * stor4.length) + 224] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(64 * stor4.length) + 256] = stor4.length
            if not stor4.length:
                require stor4.length <= test266151307()
                mem[(98 * stor4.length) + 288] = stor4.length
                if not stor4.length:
                    require stor4.length <= test266151307()
                    mem[(131 * stor4.length) + 320] = stor4.length
                    mem[64] = (164 * stor4.length) + 352
                    if not stor4.length:
                        idx = 0
                        while idx < stor4.length:
                            require idx < mem[192]
                            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                            require idx < stor5.length
                            require idx < mem[(32 * stor4.length) + 224]
                            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                            require idx < stor6.length
                            require idx < mem[(64 * stor4.length) + 256]
                            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                            require idx < stor7.length
                            require idx < mem[(98 * stor4.length) + 288]
                            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                            _2787 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = 64
                            _2882 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _2882:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2787 + (32 * _2882) + -mem[64] + 96]
                            if ext_call.success:
                                _4258 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4322 = mem[_4258]
                                require mem[_4258] <= test266151307()
                                require _4258 + mem[_4258] + 31 < _4258 + return_data.size
                                _4386 = mem[_4258 + mem[_4258]]
                                require mem[_4258 + mem[_4258]] <= test266151307()
                                require (32 * mem[_4258 + mem[_4258]]) + 32 >= 0 and _4258 + ceil32(return_data.size) + (32 * mem[_4258 + mem[_4258]]) + 32 <= test266151307()
                                mem[64] = _4258 + ceil32(return_data.size) + (32 * mem[_4258 + mem[_4258]]) + 32
                                mem[_4258 + ceil32(return_data.size)] = _4386
                                require return_data.size >= _4322 + (32 * _4386) + 32
                                t = _4258 + _4322 + 32
                                u = _4258 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _4386:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require idx < stor7.length
                                mem[0] = 7
                                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                    require _4386 - 1 < _4386
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4386 - 1) + _4258 + ceil32(return_data.size) + 32]
                                else:
                                    require idx < stor6.length
                                    require idx < stor7.length
                                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                    require mem[96]
                                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                    require 1 < mem[96]
                                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                    require idx < stor5.length
                                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                    mem[0] = 1
                                    require _4386 - 1 < _4386
                                    _6305 = mem[(32 * _4386 - 1) + _4258 + ceil32(return_data.size) + 32]
                                    _6306 = mem[64]
                                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6305
                                    mem[mem[64] + 36] = 64
                                    _6369 = mem[96]
                                    mem[mem[64] + 68] = mem[96]
                                    s = 0
                                    t = 128
                                    u = mem[64] + 100
                                    while s < _6369:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _6306 + (32 * _6369) + -mem[64] + 96]
                                    if ext_call.success:
                                        _6882 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6946 = mem[_6882]
                                        require mem[_6882] <= test266151307()
                                        require _6882 + mem[_6882] + 31 < _6882 + return_data.size
                                        _7010 = mem[_6882 + mem[_6882]]
                                        require mem[_6882 + mem[_6882]] <= test266151307()
                                        require (32 * mem[_6882 + mem[_6882]]) + 32 >= 0 and _6882 + ceil32(return_data.size) + (32 * mem[_6882 + mem[_6882]]) + 32 <= test266151307()
                                        mem[64] = _6882 + ceil32(return_data.size) + (32 * mem[_6882 + mem[_6882]]) + 32
                                        mem[_6882 + ceil32(return_data.size)] = _7010
                                        require return_data.size >= _6946 + (32 * _7010) + 32
                                        t = _6882 + _6946 + 32
                                        u = _6882 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _7010:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        require _7010 - 1 < _7010
                                        require idx < mem[(131 * stor4.length) + 320]
                                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7010 - 1) + _6882 + ceil32(return_data.size) + 32]
                            idx = idx + 1
                            continue 
                        _2081 = mem[64]
                        mem[mem[64]] = 160
                        _2177 = mem[192]
                        mem[mem[64] + 160] = mem[192]
                        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                        mem[mem[64] + 32] = (32 * mem[192]) + 192
                        _4193 = mem[(32 * stor4.length) + 224]
                        mem[mem[64] + (32 * _2177) + 192] = mem[(32 * stor4.length) + 224]
                        mem[mem[64] + (32 * _2177) + 224 len 32 * _4193] = mem[(32 * stor4.length) + 256 len 32 * _4193]
                        mem[mem[64] + 64] = (32 * _2177) + (32 * _4193) + 224
                        _5633 = mem[(64 * stor4.length) + 256]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + 224] = mem[(64 * stor4.length) + 256]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + 256 len 32 * _5633] = mem[(64 * stor4.length) + 288 len 32 * _5633]
                        mem[_2081 + 96] = (32 * _2177) + (32 * _4193) + (32 * _5633) + 256
                        _6817 = mem[(98 * stor4.length) + 288]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + (32 * _5633) + 256] = mem[(98 * stor4.length) + 288]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + (32 * _5633) + 288 len 32 * _6817] = mem[(98 * stor4.length) + 320 len 32 * _6817]
                        mem[_2081 + 128] = (32 * _2177) + (32 * _4193) + (32 * _5633) + (32 * _6817) + 288
                        _7361 = mem[(131 * stor4.length) + 320]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + (32 * _5633) + (32 * _6817) + 288] = mem[(131 * stor4.length) + 320]
                        mem[_2081 + (32 * _2177) + (32 * _4193) + (32 * _5633) + (32 * _6817) + 320 len 32 * _7361] = mem[(131 * stor4.length) + 352 len 32 * _7361]
                        return memory
                          from mem[64]
                           len _2081 + (32 * _2177) + (32 * _4193) + (32 * _5633) + (32 * _6817) + (32 * _7361) + -mem[64] + 320
                    mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[192]
                        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                        require idx < stor5.length
                        require idx < mem[(32 * stor4.length) + 224]
                        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                        require idx < stor6.length
                        require idx < mem[(64 * stor4.length) + 256]
                        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                        require idx < stor7.length
                        require idx < mem[(98 * stor4.length) + 288]
                        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                        _2790 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        _2884 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _2884:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2790 + (32 * _2884) + -mem[64] + 96]
                        if ext_call.success:
                            _4260 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4324 = mem[_4260]
                            require mem[_4260] <= test266151307()
                            require _4260 + mem[_4260] + 31 < _4260 + return_data.size
                            _4388 = mem[_4260 + mem[_4260]]
                            require mem[_4260 + mem[_4260]] <= test266151307()
                            require (32 * mem[_4260 + mem[_4260]]) + 32 >= 0 and _4260 + ceil32(return_data.size) + (32 * mem[_4260 + mem[_4260]]) + 32 <= test266151307()
                            mem[64] = _4260 + ceil32(return_data.size) + (32 * mem[_4260 + mem[_4260]]) + 32
                            mem[_4260 + ceil32(return_data.size)] = _4388
                            require return_data.size >= _4324 + (32 * _4388) + 32
                            t = _4260 + _4324 + 32
                            u = _4260 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _4388:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require idx < stor7.length
                            mem[0] = 7
                            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                require _4388 - 1 < _4388
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4388 - 1) + _4260 + ceil32(return_data.size) + 32]
                            else:
                                require idx < stor6.length
                                require idx < stor7.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                require mem[96]
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                require 1 < mem[96]
                                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                require idx < stor5.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                mem[0] = 1
                                require _4388 - 1 < _4388
                                _6307 = mem[(32 * _4388 - 1) + _4260 + ceil32(return_data.size) + 32]
                                _6308 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6307
                                mem[mem[64] + 36] = 64
                                _6370 = mem[96]
                                mem[mem[64] + 68] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 100
                                while s < _6370:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6308 + (32 * _6370) + -mem[64] + 96]
                                if ext_call.success:
                                    _6884 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6948 = mem[_6884]
                                    require mem[_6884] <= test266151307()
                                    require _6884 + mem[_6884] + 31 < _6884 + return_data.size
                                    _7012 = mem[_6884 + mem[_6884]]
                                    require mem[_6884 + mem[_6884]] <= test266151307()
                                    require (32 * mem[_6884 + mem[_6884]]) + 32 >= 0 and _6884 + ceil32(return_data.size) + (32 * mem[_6884 + mem[_6884]]) + 32 <= test266151307()
                                    mem[64] = _6884 + ceil32(return_data.size) + (32 * mem[_6884 + mem[_6884]]) + 32
                                    mem[_6884 + ceil32(return_data.size)] = _7012
                                    require return_data.size >= _6948 + (32 * _7012) + 32
                                    t = _6884 + _6948 + 32
                                    u = _6884 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _7012:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _7012 - 1 < _7012
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7012 - 1) + _6884 + ceil32(return_data.size) + 32]
                        idx = idx + 1
                        continue 
                    _2084 = mem[64]
                    mem[mem[64]] = 160
                    _2180 = mem[192]
                    mem[mem[64] + 160] = mem[192]
                    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                    mem[mem[64] + 32] = (32 * mem[192]) + 192
                    _4195 = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2180) + 192] = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2180) + 224 len 32 * _4195] = mem[(32 * stor4.length) + 256 len 32 * _4195]
                    mem[mem[64] + 64] = (32 * _2180) + (32 * _4195) + 224
                    _5634 = mem[(64 * stor4.length) + 256]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + 224] = mem[(64 * stor4.length) + 256]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + 256 len 32 * _5634] = mem[(64 * stor4.length) + 288 len 32 * _5634]
                    mem[_2084 + 96] = (32 * _2180) + (32 * _4195) + (32 * _5634) + 256
                    _6819 = mem[(98 * stor4.length) + 288]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + (32 * _5634) + 256] = mem[(98 * stor4.length) + 288]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + (32 * _5634) + 288 len 32 * _6819] = mem[(98 * stor4.length) + 320 len 32 * _6819]
                    mem[_2084 + 128] = (32 * _2180) + (32 * _4195) + (32 * _5634) + (32 * _6819) + 288
                    _7362 = mem[(131 * stor4.length) + 320]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + (32 * _5634) + (32 * _6819) + 288] = mem[(131 * stor4.length) + 320]
                    mem[_2084 + (32 * _2180) + (32 * _4195) + (32 * _5634) + (32 * _6819) + 320 len 32 * _7362] = mem[(131 * stor4.length) + 352 len 32 * _7362]
                    return memory
                      from mem[64]
                       len _2084 + (32 * _2180) + (32 * _4195) + (32 * _5634) + (32 * _6819) + (32 * _7362) + -mem[64] + 320
                mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                require stor4.length <= test266151307()
                mem[(131 * stor4.length) + 320] = stor4.length
                mem[64] = (164 * stor4.length) + 352
                if not stor4.length:
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[192]
                        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                        require idx < stor5.length
                        require idx < mem[(32 * stor4.length) + 224]
                        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                        require idx < stor6.length
                        require idx < mem[(64 * stor4.length) + 256]
                        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                        require idx < stor7.length
                        require idx < mem[(98 * stor4.length) + 288]
                        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                        _2793 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        _2886 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _2886:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2793 + (32 * _2886) + -mem[64] + 96]
                        if ext_call.success:
                            _4262 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4326 = mem[_4262]
                            require mem[_4262] <= test266151307()
                            require _4262 + mem[_4262] + 31 < _4262 + return_data.size
                            _4390 = mem[_4262 + mem[_4262]]
                            require mem[_4262 + mem[_4262]] <= test266151307()
                            require (32 * mem[_4262 + mem[_4262]]) + 32 >= 0 and _4262 + ceil32(return_data.size) + (32 * mem[_4262 + mem[_4262]]) + 32 <= test266151307()
                            mem[64] = _4262 + ceil32(return_data.size) + (32 * mem[_4262 + mem[_4262]]) + 32
                            mem[_4262 + ceil32(return_data.size)] = _4390
                            require return_data.size >= _4326 + (32 * _4390) + 32
                            t = _4262 + _4326 + 32
                            u = _4262 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _4390:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require idx < stor7.length
                            mem[0] = 7
                            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                require _4390 - 1 < _4390
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4390 - 1) + _4262 + ceil32(return_data.size) + 32]
                            else:
                                require idx < stor6.length
                                require idx < stor7.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                require mem[96]
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                require 1 < mem[96]
                                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                require idx < stor5.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                mem[0] = 1
                                require _4390 - 1 < _4390
                                _6309 = mem[(32 * _4390 - 1) + _4262 + ceil32(return_data.size) + 32]
                                _6310 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6309
                                mem[mem[64] + 36] = 64
                                _6371 = mem[96]
                                mem[mem[64] + 68] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 100
                                while s < _6371:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6310 + (32 * _6371) + -mem[64] + 96]
                                if ext_call.success:
                                    _6886 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6950 = mem[_6886]
                                    require mem[_6886] <= test266151307()
                                    require _6886 + mem[_6886] + 31 < _6886 + return_data.size
                                    _7014 = mem[_6886 + mem[_6886]]
                                    require mem[_6886 + mem[_6886]] <= test266151307()
                                    require (32 * mem[_6886 + mem[_6886]]) + 32 >= 0 and _6886 + ceil32(return_data.size) + (32 * mem[_6886 + mem[_6886]]) + 32 <= test266151307()
                                    mem[64] = _6886 + ceil32(return_data.size) + (32 * mem[_6886 + mem[_6886]]) + 32
                                    mem[_6886 + ceil32(return_data.size)] = _7014
                                    require return_data.size >= _6950 + (32 * _7014) + 32
                                    t = _6886 + _6950 + 32
                                    u = _6886 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _7014:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _7014 - 1 < _7014
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7014 - 1) + _6886 + ceil32(return_data.size) + 32]
                        idx = idx + 1
                        continue 
                    _2087 = mem[64]
                    mem[mem[64]] = 160
                    _2183 = mem[192]
                    mem[mem[64] + 160] = mem[192]
                    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                    mem[mem[64] + 32] = (32 * mem[192]) + 192
                    _4197 = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2183) + 192] = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2183) + 224 len 32 * _4197] = mem[(32 * stor4.length) + 256 len 32 * _4197]
                    mem[mem[64] + 64] = (32 * _2183) + (32 * _4197) + 224
                    _5635 = mem[(64 * stor4.length) + 256]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + 224] = mem[(64 * stor4.length) + 256]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + 256 len 32 * _5635] = mem[(64 * stor4.length) + 288 len 32 * _5635]
                    mem[_2087 + 96] = (32 * _2183) + (32 * _4197) + (32 * _5635) + 256
                    _6821 = mem[(98 * stor4.length) + 288]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + (32 * _5635) + 256] = mem[(98 * stor4.length) + 288]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + (32 * _5635) + 288 len 32 * _6821] = mem[(98 * stor4.length) + 320 len 32 * _6821]
                    mem[_2087 + 128] = (32 * _2183) + (32 * _4197) + (32 * _5635) + (32 * _6821) + 288
                    _7363 = mem[(131 * stor4.length) + 320]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + (32 * _5635) + (32 * _6821) + 288] = mem[(131 * stor4.length) + 320]
                    mem[_2087 + (32 * _2183) + (32 * _4197) + (32 * _5635) + (32 * _6821) + 320 len 32 * _7363] = mem[(131 * stor4.length) + 352 len 32 * _7363]
                    return memory
                      from mem[64]
                       len _2087 + (32 * _2183) + (32 * _4197) + (32 * _5635) + (32 * _6821) + (32 * _7363) + -mem[64] + 320
                mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2796 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2888 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2888:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2796 + (32 * _2888) + -mem[64] + 96]
                    if ext_call.success:
                        _4264 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4328 = mem[_4264]
                        require mem[_4264] <= test266151307()
                        require _4264 + mem[_4264] + 31 < _4264 + return_data.size
                        _4392 = mem[_4264 + mem[_4264]]
                        require mem[_4264 + mem[_4264]] <= test266151307()
                        require (32 * mem[_4264 + mem[_4264]]) + 32 >= 0 and _4264 + ceil32(return_data.size) + (32 * mem[_4264 + mem[_4264]]) + 32 <= test266151307()
                        mem[64] = _4264 + ceil32(return_data.size) + (32 * mem[_4264 + mem[_4264]]) + 32
                        mem[_4264 + ceil32(return_data.size)] = _4392
                        require return_data.size >= _4328 + (32 * _4392) + 32
                        t = _4264 + _4328 + 32
                        u = _4264 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4392:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4392 - 1 < _4392
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4392 - 1) + _4264 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4392 - 1 < _4392
                            _6311 = mem[(32 * _4392 - 1) + _4264 + ceil32(return_data.size) + 32]
                            _6312 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6311
                            mem[mem[64] + 36] = 64
                            _6372 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6372:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6312 + (32 * _6372) + -mem[64] + 96]
                            if ext_call.success:
                                _6888 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6952 = mem[_6888]
                                require mem[_6888] <= test266151307()
                                require _6888 + mem[_6888] + 31 < _6888 + return_data.size
                                _7016 = mem[_6888 + mem[_6888]]
                                require mem[_6888 + mem[_6888]] <= test266151307()
                                require (32 * mem[_6888 + mem[_6888]]) + 32 >= 0 and _6888 + ceil32(return_data.size) + (32 * mem[_6888 + mem[_6888]]) + 32 <= test266151307()
                                mem[64] = _6888 + ceil32(return_data.size) + (32 * mem[_6888 + mem[_6888]]) + 32
                                mem[_6888 + ceil32(return_data.size)] = _7016
                                require return_data.size >= _6952 + (32 * _7016) + 32
                                t = _6888 + _6952 + 32
                                u = _6888 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7016:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7016 - 1 < _7016
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7016 - 1) + _6888 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2090 = mem[64]
                mem[mem[64]] = 160
                _2186 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4199 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2186) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2186) + 224 len 32 * _4199] = mem[(32 * stor4.length) + 256 len 32 * _4199]
                mem[mem[64] + 64] = (32 * _2186) + (32 * _4199) + 224
                _5636 = mem[(64 * stor4.length) + 256]
                mem[_2090 + (32 * _2186) + (32 * _4199) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2090 + (32 * _2186) + (32 * _4199) + 256 len 32 * _5636] = mem[(64 * stor4.length) + 288 len 32 * _5636]
                mem[_2090 + 96] = (32 * _2186) + (32 * _4199) + (32 * _5636) + 256
                _6823 = mem[(98 * stor4.length) + 288]
                mem[_2090 + (32 * _2186) + (32 * _4199) + (32 * _5636) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2090 + (32 * _2186) + (32 * _4199) + (32 * _5636) + 288 len 32 * _6823] = mem[(98 * stor4.length) + 320 len 32 * _6823]
                mem[_2090 + 128] = (32 * _2186) + (32 * _4199) + (32 * _5636) + (32 * _6823) + 288
                _7364 = mem[(131 * stor4.length) + 320]
                mem[_2090 + (32 * _2186) + (32 * _4199) + (32 * _5636) + (32 * _6823) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2090 + (32 * _2186) + (32 * _4199) + (32 * _5636) + (32 * _6823) + 320 len 32 * _7364] = mem[(131 * stor4.length) + 352 len 32 * _7364]
                return memory
                  from mem[64]
                   len _2090 + (32 * _2186) + (32 * _4199) + (32 * _5636) + (32 * _6823) + (32 * _7364) + -mem[64] + 320
            mem[(64 * stor4.length) + 288 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 288] = stor4.length
            if not stor4.length:
                require stor4.length <= test266151307()
                mem[(131 * stor4.length) + 320] = stor4.length
                mem[64] = (164 * stor4.length) + 352
                if not stor4.length:
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[192]
                        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                        require idx < stor5.length
                        require idx < mem[(32 * stor4.length) + 224]
                        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                        require idx < stor6.length
                        require idx < mem[(64 * stor4.length) + 256]
                        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                        require idx < stor7.length
                        require idx < mem[(98 * stor4.length) + 288]
                        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                        _2799 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        _2890 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _2890:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2799 + (32 * _2890) + -mem[64] + 96]
                        if ext_call.success:
                            _4266 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4330 = mem[_4266]
                            require mem[_4266] <= test266151307()
                            require _4266 + mem[_4266] + 31 < _4266 + return_data.size
                            _4394 = mem[_4266 + mem[_4266]]
                            require mem[_4266 + mem[_4266]] <= test266151307()
                            require (32 * mem[_4266 + mem[_4266]]) + 32 >= 0 and _4266 + ceil32(return_data.size) + (32 * mem[_4266 + mem[_4266]]) + 32 <= test266151307()
                            mem[64] = _4266 + ceil32(return_data.size) + (32 * mem[_4266 + mem[_4266]]) + 32
                            mem[_4266 + ceil32(return_data.size)] = _4394
                            require return_data.size >= _4330 + (32 * _4394) + 32
                            t = _4266 + _4330 + 32
                            u = _4266 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _4394:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require idx < stor7.length
                            mem[0] = 7
                            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                require _4394 - 1 < _4394
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4394 - 1) + _4266 + ceil32(return_data.size) + 32]
                            else:
                                require idx < stor6.length
                                require idx < stor7.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                require mem[96]
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                require 1 < mem[96]
                                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                require idx < stor5.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                mem[0] = 1
                                require _4394 - 1 < _4394
                                _6313 = mem[(32 * _4394 - 1) + _4266 + ceil32(return_data.size) + 32]
                                _6314 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6313
                                mem[mem[64] + 36] = 64
                                _6373 = mem[96]
                                mem[mem[64] + 68] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 100
                                while s < _6373:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6314 + (32 * _6373) + -mem[64] + 96]
                                if ext_call.success:
                                    _6890 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6954 = mem[_6890]
                                    require mem[_6890] <= test266151307()
                                    require _6890 + mem[_6890] + 31 < _6890 + return_data.size
                                    _7018 = mem[_6890 + mem[_6890]]
                                    require mem[_6890 + mem[_6890]] <= test266151307()
                                    require (32 * mem[_6890 + mem[_6890]]) + 32 >= 0 and _6890 + ceil32(return_data.size) + (32 * mem[_6890 + mem[_6890]]) + 32 <= test266151307()
                                    mem[64] = _6890 + ceil32(return_data.size) + (32 * mem[_6890 + mem[_6890]]) + 32
                                    mem[_6890 + ceil32(return_data.size)] = _7018
                                    require return_data.size >= _6954 + (32 * _7018) + 32
                                    t = _6890 + _6954 + 32
                                    u = _6890 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _7018:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _7018 - 1 < _7018
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7018 - 1) + _6890 + ceil32(return_data.size) + 32]
                        idx = idx + 1
                        continue 
                    _2093 = mem[64]
                    mem[mem[64]] = 160
                    _2189 = mem[192]
                    mem[mem[64] + 160] = mem[192]
                    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                    mem[mem[64] + 32] = (32 * mem[192]) + 192
                    _4201 = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2189) + 192] = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2189) + 224 len 32 * _4201] = mem[(32 * stor4.length) + 256 len 32 * _4201]
                    mem[mem[64] + 64] = (32 * _2189) + (32 * _4201) + 224
                    _5637 = mem[(64 * stor4.length) + 256]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + 224] = mem[(64 * stor4.length) + 256]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + 256 len 32 * _5637] = mem[(64 * stor4.length) + 288 len 32 * _5637]
                    mem[_2093 + 96] = (32 * _2189) + (32 * _4201) + (32 * _5637) + 256
                    _6825 = mem[(98 * stor4.length) + 288]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + (32 * _5637) + 256] = mem[(98 * stor4.length) + 288]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + (32 * _5637) + 288 len 32 * _6825] = mem[(98 * stor4.length) + 320 len 32 * _6825]
                    mem[_2093 + 128] = (32 * _2189) + (32 * _4201) + (32 * _5637) + (32 * _6825) + 288
                    _7365 = mem[(131 * stor4.length) + 320]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + (32 * _5637) + (32 * _6825) + 288] = mem[(131 * stor4.length) + 320]
                    mem[_2093 + (32 * _2189) + (32 * _4201) + (32 * _5637) + (32 * _6825) + 320 len 32 * _7365] = mem[(131 * stor4.length) + 352 len 32 * _7365]
                    return memory
                      from mem[64]
                       len _2093 + (32 * _2189) + (32 * _4201) + (32 * _5637) + (32 * _6825) + (32 * _7365) + -mem[64] + 320
                mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2802 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2892 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2892:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2802 + (32 * _2892) + -mem[64] + 96]
                    if ext_call.success:
                        _4268 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4332 = mem[_4268]
                        require mem[_4268] <= test266151307()
                        require _4268 + mem[_4268] + 31 < _4268 + return_data.size
                        _4396 = mem[_4268 + mem[_4268]]
                        require mem[_4268 + mem[_4268]] <= test266151307()
                        require (32 * mem[_4268 + mem[_4268]]) + 32 >= 0 and _4268 + ceil32(return_data.size) + (32 * mem[_4268 + mem[_4268]]) + 32 <= test266151307()
                        mem[64] = _4268 + ceil32(return_data.size) + (32 * mem[_4268 + mem[_4268]]) + 32
                        mem[_4268 + ceil32(return_data.size)] = _4396
                        require return_data.size >= _4332 + (32 * _4396) + 32
                        t = _4268 + _4332 + 32
                        u = _4268 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4396:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4396 - 1 < _4396
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4396 - 1) + _4268 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4396 - 1 < _4396
                            _6315 = mem[(32 * _4396 - 1) + _4268 + ceil32(return_data.size) + 32]
                            _6316 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6315
                            mem[mem[64] + 36] = 64
                            _6374 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6374:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6316 + (32 * _6374) + -mem[64] + 96]
                            if ext_call.success:
                                _6892 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6956 = mem[_6892]
                                require mem[_6892] <= test266151307()
                                require _6892 + mem[_6892] + 31 < _6892 + return_data.size
                                _7020 = mem[_6892 + mem[_6892]]
                                require mem[_6892 + mem[_6892]] <= test266151307()
                                require (32 * mem[_6892 + mem[_6892]]) + 32 >= 0 and _6892 + ceil32(return_data.size) + (32 * mem[_6892 + mem[_6892]]) + 32 <= test266151307()
                                mem[64] = _6892 + ceil32(return_data.size) + (32 * mem[_6892 + mem[_6892]]) + 32
                                mem[_6892 + ceil32(return_data.size)] = _7020
                                require return_data.size >= _6956 + (32 * _7020) + 32
                                t = _6892 + _6956 + 32
                                u = _6892 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7020:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7020 - 1 < _7020
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7020 - 1) + _6892 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2096 = mem[64]
                mem[mem[64]] = 160
                _2192 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4203 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2192) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2192) + 224 len 32 * _4203] = mem[(32 * stor4.length) + 256 len 32 * _4203]
                mem[mem[64] + 64] = (32 * _2192) + (32 * _4203) + 224
                _5638 = mem[(64 * stor4.length) + 256]
                mem[_2096 + (32 * _2192) + (32 * _4203) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2096 + (32 * _2192) + (32 * _4203) + 256 len 32 * _5638] = mem[(64 * stor4.length) + 288 len 32 * _5638]
                mem[_2096 + 96] = (32 * _2192) + (32 * _4203) + (32 * _5638) + 256
                _6827 = mem[(98 * stor4.length) + 288]
                mem[_2096 + (32 * _2192) + (32 * _4203) + (32 * _5638) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2096 + (32 * _2192) + (32 * _4203) + (32 * _5638) + 288 len 32 * _6827] = mem[(98 * stor4.length) + 320 len 32 * _6827]
                mem[_2096 + 128] = (32 * _2192) + (32 * _4203) + (32 * _5638) + (32 * _6827) + 288
                _7366 = mem[(131 * stor4.length) + 320]
                mem[_2096 + (32 * _2192) + (32 * _4203) + (32 * _5638) + (32 * _6827) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2096 + (32 * _2192) + (32 * _4203) + (32 * _5638) + (32 * _6827) + 320 len 32 * _7366] = mem[(131 * stor4.length) + 352 len 32 * _7366]
                return memory
                  from mem[64]
                   len _2096 + (32 * _2192) + (32 * _4203) + (32 * _5638) + (32 * _6827) + (32 * _7366) + -mem[64] + 320
            mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2805 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2894 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2894:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2805 + (32 * _2894) + -mem[64] + 96]
                    if ext_call.success:
                        _4270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4334 = mem[_4270]
                        require mem[_4270] <= test266151307()
                        require _4270 + mem[_4270] + 31 < _4270 + return_data.size
                        _4398 = mem[_4270 + mem[_4270]]
                        require mem[_4270 + mem[_4270]] <= test266151307()
                        require (32 * mem[_4270 + mem[_4270]]) + 32 >= 0 and _4270 + ceil32(return_data.size) + (32 * mem[_4270 + mem[_4270]]) + 32 <= test266151307()
                        mem[64] = _4270 + ceil32(return_data.size) + (32 * mem[_4270 + mem[_4270]]) + 32
                        mem[_4270 + ceil32(return_data.size)] = _4398
                        require return_data.size >= _4334 + (32 * _4398) + 32
                        t = _4270 + _4334 + 32
                        u = _4270 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4398:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4398 - 1 < _4398
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4398 - 1) + _4270 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4398 - 1 < _4398
                            _6317 = mem[(32 * _4398 - 1) + _4270 + ceil32(return_data.size) + 32]
                            _6318 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6317
                            mem[mem[64] + 36] = 64
                            _6375 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6375:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6318 + (32 * _6375) + -mem[64] + 96]
                            if ext_call.success:
                                _6894 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6958 = mem[_6894]
                                require mem[_6894] <= test266151307()
                                require _6894 + mem[_6894] + 31 < _6894 + return_data.size
                                _7022 = mem[_6894 + mem[_6894]]
                                require mem[_6894 + mem[_6894]] <= test266151307()
                                require (32 * mem[_6894 + mem[_6894]]) + 32 >= 0 and _6894 + ceil32(return_data.size) + (32 * mem[_6894 + mem[_6894]]) + 32 <= test266151307()
                                mem[64] = _6894 + ceil32(return_data.size) + (32 * mem[_6894 + mem[_6894]]) + 32
                                mem[_6894 + ceil32(return_data.size)] = _7022
                                require return_data.size >= _6958 + (32 * _7022) + 32
                                t = _6894 + _6958 + 32
                                u = _6894 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7022:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7022 - 1 < _7022
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7022 - 1) + _6894 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2099 = mem[64]
                mem[mem[64]] = 160
                _2195 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4205 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2195) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2195) + 224 len 32 * _4205] = mem[(32 * stor4.length) + 256 len 32 * _4205]
                mem[mem[64] + 64] = (32 * _2195) + (32 * _4205) + 224
                _5639 = mem[(64 * stor4.length) + 256]
                mem[_2099 + (32 * _2195) + (32 * _4205) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2099 + (32 * _2195) + (32 * _4205) + 256 len 32 * _5639] = mem[(64 * stor4.length) + 288 len 32 * _5639]
                mem[_2099 + 96] = (32 * _2195) + (32 * _4205) + (32 * _5639) + 256
                _6829 = mem[(98 * stor4.length) + 288]
                mem[_2099 + (32 * _2195) + (32 * _4205) + (32 * _5639) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2099 + (32 * _2195) + (32 * _4205) + (32 * _5639) + 288 len 32 * _6829] = mem[(98 * stor4.length) + 320 len 32 * _6829]
                mem[_2099 + 128] = (32 * _2195) + (32 * _4205) + (32 * _5639) + (32 * _6829) + 288
                _7367 = mem[(131 * stor4.length) + 320]
                mem[_2099 + (32 * _2195) + (32 * _4205) + (32 * _5639) + (32 * _6829) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2099 + (32 * _2195) + (32 * _4205) + (32 * _5639) + (32 * _6829) + 320 len 32 * _7367] = mem[(131 * stor4.length) + 352 len 32 * _7367]
                return memory
                  from mem[64]
                   len _2099 + (32 * _2195) + (32 * _4205) + (32 * _5639) + (32 * _6829) + (32 * _7367) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2808 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2896 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2896:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2808 + (32 * _2896) + -mem[64] + 96]
                if ext_call.success:
                    _4272 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4336 = mem[_4272]
                    require mem[_4272] <= test266151307()
                    require _4272 + mem[_4272] + 31 < _4272 + return_data.size
                    _4400 = mem[_4272 + mem[_4272]]
                    require mem[_4272 + mem[_4272]] <= test266151307()
                    require (32 * mem[_4272 + mem[_4272]]) + 32 >= 0 and _4272 + ceil32(return_data.size) + (32 * mem[_4272 + mem[_4272]]) + 32 <= test266151307()
                    mem[64] = _4272 + ceil32(return_data.size) + (32 * mem[_4272 + mem[_4272]]) + 32
                    mem[_4272 + ceil32(return_data.size)] = _4400
                    require return_data.size >= _4336 + (32 * _4400) + 32
                    t = _4272 + _4336 + 32
                    u = _4272 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4400:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4400 - 1 < _4400
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4400 - 1) + _4272 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4400 - 1 < _4400
                        _6319 = mem[(32 * _4400 - 1) + _4272 + ceil32(return_data.size) + 32]
                        _6320 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6319
                        mem[mem[64] + 36] = 64
                        _6376 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6376:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6320 + (32 * _6376) + -mem[64] + 96]
                        if ext_call.success:
                            _6896 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6960 = mem[_6896]
                            require mem[_6896] <= test266151307()
                            require _6896 + mem[_6896] + 31 < _6896 + return_data.size
                            _7024 = mem[_6896 + mem[_6896]]
                            require mem[_6896 + mem[_6896]] <= test266151307()
                            require (32 * mem[_6896 + mem[_6896]]) + 32 >= 0 and _6896 + ceil32(return_data.size) + (32 * mem[_6896 + mem[_6896]]) + 32 <= test266151307()
                            mem[64] = _6896 + ceil32(return_data.size) + (32 * mem[_6896 + mem[_6896]]) + 32
                            mem[_6896 + ceil32(return_data.size)] = _7024
                            require return_data.size >= _6960 + (32 * _7024) + 32
                            t = _6896 + _6960 + 32
                            u = _6896 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7024:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7024 - 1 < _7024
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7024 - 1) + _6896 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2102 = mem[64]
            mem[mem[64]] = 160
            _2198 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4207 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2198) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2198) + 224 len 32 * _4207] = mem[(32 * stor4.length) + 256 len 32 * _4207]
            mem[mem[64] + 64] = (32 * _2198) + (32 * _4207) + 224
            _5640 = mem[(64 * stor4.length) + 256]
            mem[_2102 + (32 * _2198) + (32 * _4207) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2102 + (32 * _2198) + (32 * _4207) + 256 len 32 * _5640] = mem[(64 * stor4.length) + 288 len 32 * _5640]
            mem[_2102 + 96] = (32 * _2198) + (32 * _4207) + (32 * _5640) + 256
            _6831 = mem[(98 * stor4.length) + 288]
            mem[_2102 + (32 * _2198) + (32 * _4207) + (32 * _5640) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2102 + (32 * _2198) + (32 * _4207) + (32 * _5640) + 288 len 32 * _6831] = mem[(98 * stor4.length) + 320 len 32 * _6831]
            mem[_2102 + 128] = (32 * _2198) + (32 * _4207) + (32 * _5640) + (32 * _6831) + 288
            _7368 = mem[(131 * stor4.length) + 320]
            mem[_2102 + (32 * _2198) + (32 * _4207) + (32 * _5640) + (32 * _6831) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2102 + (32 * _2198) + (32 * _4207) + (32 * _5640) + (32 * _6831) + 320 len 32 * _7368] = mem[(131 * stor4.length) + 352 len 32 * _7368]
            return memory
              from mem[64]
               len _2102 + (32 * _2198) + (32 * _4207) + (32 * _5640) + (32 * _6831) + (32 * _7368) + -mem[64] + 320
        mem[(32 * stor4.length) + 256 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(64 * stor4.length) + 256] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 288] = stor4.length
            if not stor4.length:
                require stor4.length <= test266151307()
                mem[(131 * stor4.length) + 320] = stor4.length
                mem[64] = (164 * stor4.length) + 352
                if not stor4.length:
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[192]
                        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                        require idx < stor5.length
                        require idx < mem[(32 * stor4.length) + 224]
                        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                        require idx < stor6.length
                        require idx < mem[(64 * stor4.length) + 256]
                        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                        require idx < stor7.length
                        require idx < mem[(98 * stor4.length) + 288]
                        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                        _2811 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        _2898 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _2898:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2811 + (32 * _2898) + -mem[64] + 96]
                        if ext_call.success:
                            _4274 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4338 = mem[_4274]
                            require mem[_4274] <= test266151307()
                            require _4274 + mem[_4274] + 31 < _4274 + return_data.size
                            _4402 = mem[_4274 + mem[_4274]]
                            require mem[_4274 + mem[_4274]] <= test266151307()
                            require (32 * mem[_4274 + mem[_4274]]) + 32 >= 0 and _4274 + ceil32(return_data.size) + (32 * mem[_4274 + mem[_4274]]) + 32 <= test266151307()
                            mem[64] = _4274 + ceil32(return_data.size) + (32 * mem[_4274 + mem[_4274]]) + 32
                            mem[_4274 + ceil32(return_data.size)] = _4402
                            require return_data.size >= _4338 + (32 * _4402) + 32
                            t = _4274 + _4338 + 32
                            u = _4274 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _4402:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require idx < stor7.length
                            mem[0] = 7
                            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                require _4402 - 1 < _4402
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4402 - 1) + _4274 + ceil32(return_data.size) + 32]
                            else:
                                require idx < stor6.length
                                require idx < stor7.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                require mem[96]
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                require 1 < mem[96]
                                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                require idx < stor5.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                mem[0] = 1
                                require _4402 - 1 < _4402
                                _6321 = mem[(32 * _4402 - 1) + _4274 + ceil32(return_data.size) + 32]
                                _6322 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6321
                                mem[mem[64] + 36] = 64
                                _6377 = mem[96]
                                mem[mem[64] + 68] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 100
                                while s < _6377:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6322 + (32 * _6377) + -mem[64] + 96]
                                if ext_call.success:
                                    _6898 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6962 = mem[_6898]
                                    require mem[_6898] <= test266151307()
                                    require _6898 + mem[_6898] + 31 < _6898 + return_data.size
                                    _7026 = mem[_6898 + mem[_6898]]
                                    require mem[_6898 + mem[_6898]] <= test266151307()
                                    require (32 * mem[_6898 + mem[_6898]]) + 32 >= 0 and _6898 + ceil32(return_data.size) + (32 * mem[_6898 + mem[_6898]]) + 32 <= test266151307()
                                    mem[64] = _6898 + ceil32(return_data.size) + (32 * mem[_6898 + mem[_6898]]) + 32
                                    mem[_6898 + ceil32(return_data.size)] = _7026
                                    require return_data.size >= _6962 + (32 * _7026) + 32
                                    t = _6898 + _6962 + 32
                                    u = _6898 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _7026:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _7026 - 1 < _7026
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7026 - 1) + _6898 + ceil32(return_data.size) + 32]
                        idx = idx + 1
                        continue 
                    _2105 = mem[64]
                    mem[mem[64]] = 160
                    _2201 = mem[192]
                    mem[mem[64] + 160] = mem[192]
                    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                    mem[mem[64] + 32] = (32 * mem[192]) + 192
                    _4209 = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2201) + 192] = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2201) + 224 len 32 * _4209] = mem[(32 * stor4.length) + 256 len 32 * _4209]
                    mem[mem[64] + 64] = (32 * _2201) + (32 * _4209) + 224
                    _5641 = mem[(64 * stor4.length) + 256]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + 224] = mem[(64 * stor4.length) + 256]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + 256 len 32 * _5641] = mem[(64 * stor4.length) + 288 len 32 * _5641]
                    mem[_2105 + 96] = (32 * _2201) + (32 * _4209) + (32 * _5641) + 256
                    _6833 = mem[(98 * stor4.length) + 288]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + (32 * _5641) + 256] = mem[(98 * stor4.length) + 288]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + (32 * _5641) + 288 len 32 * _6833] = mem[(98 * stor4.length) + 320 len 32 * _6833]
                    mem[_2105 + 128] = (32 * _2201) + (32 * _4209) + (32 * _5641) + (32 * _6833) + 288
                    _7369 = mem[(131 * stor4.length) + 320]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + (32 * _5641) + (32 * _6833) + 288] = mem[(131 * stor4.length) + 320]
                    mem[_2105 + (32 * _2201) + (32 * _4209) + (32 * _5641) + (32 * _6833) + 320 len 32 * _7369] = mem[(131 * stor4.length) + 352 len 32 * _7369]
                    return memory
                      from mem[64]
                       len _2105 + (32 * _2201) + (32 * _4209) + (32 * _5641) + (32 * _6833) + (32 * _7369) + -mem[64] + 320
                mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2814 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2900 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2900:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2814 + (32 * _2900) + -mem[64] + 96]
                    if ext_call.success:
                        _4276 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4340 = mem[_4276]
                        require mem[_4276] <= test266151307()
                        require _4276 + mem[_4276] + 31 < _4276 + return_data.size
                        _4404 = mem[_4276 + mem[_4276]]
                        require mem[_4276 + mem[_4276]] <= test266151307()
                        require (32 * mem[_4276 + mem[_4276]]) + 32 >= 0 and _4276 + ceil32(return_data.size) + (32 * mem[_4276 + mem[_4276]]) + 32 <= test266151307()
                        mem[64] = _4276 + ceil32(return_data.size) + (32 * mem[_4276 + mem[_4276]]) + 32
                        mem[_4276 + ceil32(return_data.size)] = _4404
                        require return_data.size >= _4340 + (32 * _4404) + 32
                        t = _4276 + _4340 + 32
                        u = _4276 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4404:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4404 - 1 < _4404
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4404 - 1) + _4276 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4404 - 1 < _4404
                            _6323 = mem[(32 * _4404 - 1) + _4276 + ceil32(return_data.size) + 32]
                            _6324 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6323
                            mem[mem[64] + 36] = 64
                            _6378 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6378:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6324 + (32 * _6378) + -mem[64] + 96]
                            if ext_call.success:
                                _6900 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6964 = mem[_6900]
                                require mem[_6900] <= test266151307()
                                require _6900 + mem[_6900] + 31 < _6900 + return_data.size
                                _7028 = mem[_6900 + mem[_6900]]
                                require mem[_6900 + mem[_6900]] <= test266151307()
                                require (32 * mem[_6900 + mem[_6900]]) + 32 >= 0 and _6900 + ceil32(return_data.size) + (32 * mem[_6900 + mem[_6900]]) + 32 <= test266151307()
                                mem[64] = _6900 + ceil32(return_data.size) + (32 * mem[_6900 + mem[_6900]]) + 32
                                mem[_6900 + ceil32(return_data.size)] = _7028
                                require return_data.size >= _6964 + (32 * _7028) + 32
                                t = _6900 + _6964 + 32
                                u = _6900 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7028:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7028 - 1 < _7028
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7028 - 1) + _6900 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2108 = mem[64]
                mem[mem[64]] = 160
                _2204 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4211 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2204) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2204) + 224 len 32 * _4211] = mem[(32 * stor4.length) + 256 len 32 * _4211]
                mem[mem[64] + 64] = (32 * _2204) + (32 * _4211) + 224
                _5642 = mem[(64 * stor4.length) + 256]
                mem[_2108 + (32 * _2204) + (32 * _4211) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2108 + (32 * _2204) + (32 * _4211) + 256 len 32 * _5642] = mem[(64 * stor4.length) + 288 len 32 * _5642]
                mem[_2108 + 96] = (32 * _2204) + (32 * _4211) + (32 * _5642) + 256
                _6835 = mem[(98 * stor4.length) + 288]
                mem[_2108 + (32 * _2204) + (32 * _4211) + (32 * _5642) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2108 + (32 * _2204) + (32 * _4211) + (32 * _5642) + 288 len 32 * _6835] = mem[(98 * stor4.length) + 320 len 32 * _6835]
                mem[_2108 + 128] = (32 * _2204) + (32 * _4211) + (32 * _5642) + (32 * _6835) + 288
                _7370 = mem[(131 * stor4.length) + 320]
                mem[_2108 + (32 * _2204) + (32 * _4211) + (32 * _5642) + (32 * _6835) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2108 + (32 * _2204) + (32 * _4211) + (32 * _5642) + (32 * _6835) + 320 len 32 * _7370] = mem[(131 * stor4.length) + 352 len 32 * _7370]
                return memory
                  from mem[64]
                   len _2108 + (32 * _2204) + (32 * _4211) + (32 * _5642) + (32 * _6835) + (32 * _7370) + -mem[64] + 320
            mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2817 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2902 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2902:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2817 + (32 * _2902) + -mem[64] + 96]
                    if ext_call.success:
                        _4278 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4342 = mem[_4278]
                        require mem[_4278] <= test266151307()
                        require _4278 + mem[_4278] + 31 < _4278 + return_data.size
                        _4406 = mem[_4278 + mem[_4278]]
                        require mem[_4278 + mem[_4278]] <= test266151307()
                        require (32 * mem[_4278 + mem[_4278]]) + 32 >= 0 and _4278 + ceil32(return_data.size) + (32 * mem[_4278 + mem[_4278]]) + 32 <= test266151307()
                        mem[64] = _4278 + ceil32(return_data.size) + (32 * mem[_4278 + mem[_4278]]) + 32
                        mem[_4278 + ceil32(return_data.size)] = _4406
                        require return_data.size >= _4342 + (32 * _4406) + 32
                        t = _4278 + _4342 + 32
                        u = _4278 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4406:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4406 - 1 < _4406
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4406 - 1) + _4278 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4406 - 1 < _4406
                            _6325 = mem[(32 * _4406 - 1) + _4278 + ceil32(return_data.size) + 32]
                            _6326 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6325
                            mem[mem[64] + 36] = 64
                            _6379 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6379:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6326 + (32 * _6379) + -mem[64] + 96]
                            if ext_call.success:
                                _6902 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6966 = mem[_6902]
                                require mem[_6902] <= test266151307()
                                require _6902 + mem[_6902] + 31 < _6902 + return_data.size
                                _7030 = mem[_6902 + mem[_6902]]
                                require mem[_6902 + mem[_6902]] <= test266151307()
                                require (32 * mem[_6902 + mem[_6902]]) + 32 >= 0 and _6902 + ceil32(return_data.size) + (32 * mem[_6902 + mem[_6902]]) + 32 <= test266151307()
                                mem[64] = _6902 + ceil32(return_data.size) + (32 * mem[_6902 + mem[_6902]]) + 32
                                mem[_6902 + ceil32(return_data.size)] = _7030
                                require return_data.size >= _6966 + (32 * _7030) + 32
                                t = _6902 + _6966 + 32
                                u = _6902 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7030:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7030 - 1 < _7030
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7030 - 1) + _6902 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2111 = mem[64]
                mem[mem[64]] = 160
                _2207 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4213 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2207) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2207) + 224 len 32 * _4213] = mem[(32 * stor4.length) + 256 len 32 * _4213]
                mem[mem[64] + 64] = (32 * _2207) + (32 * _4213) + 224
                _5643 = mem[(64 * stor4.length) + 256]
                mem[_2111 + (32 * _2207) + (32 * _4213) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2111 + (32 * _2207) + (32 * _4213) + 256 len 32 * _5643] = mem[(64 * stor4.length) + 288 len 32 * _5643]
                mem[_2111 + 96] = (32 * _2207) + (32 * _4213) + (32 * _5643) + 256
                _6837 = mem[(98 * stor4.length) + 288]
                mem[_2111 + (32 * _2207) + (32 * _4213) + (32 * _5643) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2111 + (32 * _2207) + (32 * _4213) + (32 * _5643) + 288 len 32 * _6837] = mem[(98 * stor4.length) + 320 len 32 * _6837]
                mem[_2111 + 128] = (32 * _2207) + (32 * _4213) + (32 * _5643) + (32 * _6837) + 288
                _7371 = mem[(131 * stor4.length) + 320]
                mem[_2111 + (32 * _2207) + (32 * _4213) + (32 * _5643) + (32 * _6837) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2111 + (32 * _2207) + (32 * _4213) + (32 * _5643) + (32 * _6837) + 320 len 32 * _7371] = mem[(131 * stor4.length) + 352 len 32 * _7371]
                return memory
                  from mem[64]
                   len _2111 + (32 * _2207) + (32 * _4213) + (32 * _5643) + (32 * _6837) + (32 * _7371) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2820 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2904 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2904:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2820 + (32 * _2904) + -mem[64] + 96]
                if ext_call.success:
                    _4280 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4344 = mem[_4280]
                    require mem[_4280] <= test266151307()
                    require _4280 + mem[_4280] + 31 < _4280 + return_data.size
                    _4408 = mem[_4280 + mem[_4280]]
                    require mem[_4280 + mem[_4280]] <= test266151307()
                    require (32 * mem[_4280 + mem[_4280]]) + 32 >= 0 and _4280 + ceil32(return_data.size) + (32 * mem[_4280 + mem[_4280]]) + 32 <= test266151307()
                    mem[64] = _4280 + ceil32(return_data.size) + (32 * mem[_4280 + mem[_4280]]) + 32
                    mem[_4280 + ceil32(return_data.size)] = _4408
                    require return_data.size >= _4344 + (32 * _4408) + 32
                    t = _4280 + _4344 + 32
                    u = _4280 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4408:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4408 - 1 < _4408
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4408 - 1) + _4280 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4408 - 1 < _4408
                        _6327 = mem[(32 * _4408 - 1) + _4280 + ceil32(return_data.size) + 32]
                        _6328 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6327
                        mem[mem[64] + 36] = 64
                        _6380 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6380:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6328 + (32 * _6380) + -mem[64] + 96]
                        if ext_call.success:
                            _6904 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6968 = mem[_6904]
                            require mem[_6904] <= test266151307()
                            require _6904 + mem[_6904] + 31 < _6904 + return_data.size
                            _7032 = mem[_6904 + mem[_6904]]
                            require mem[_6904 + mem[_6904]] <= test266151307()
                            require (32 * mem[_6904 + mem[_6904]]) + 32 >= 0 and _6904 + ceil32(return_data.size) + (32 * mem[_6904 + mem[_6904]]) + 32 <= test266151307()
                            mem[64] = _6904 + ceil32(return_data.size) + (32 * mem[_6904 + mem[_6904]]) + 32
                            mem[_6904 + ceil32(return_data.size)] = _7032
                            require return_data.size >= _6968 + (32 * _7032) + 32
                            t = _6904 + _6968 + 32
                            u = _6904 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7032:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7032 - 1 < _7032
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7032 - 1) + _6904 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2114 = mem[64]
            mem[mem[64]] = 160
            _2210 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4215 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2210) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2210) + 224 len 32 * _4215] = mem[(32 * stor4.length) + 256 len 32 * _4215]
            mem[mem[64] + 64] = (32 * _2210) + (32 * _4215) + 224
            _5644 = mem[(64 * stor4.length) + 256]
            mem[_2114 + (32 * _2210) + (32 * _4215) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2114 + (32 * _2210) + (32 * _4215) + 256 len 32 * _5644] = mem[(64 * stor4.length) + 288 len 32 * _5644]
            mem[_2114 + 96] = (32 * _2210) + (32 * _4215) + (32 * _5644) + 256
            _6839 = mem[(98 * stor4.length) + 288]
            mem[_2114 + (32 * _2210) + (32 * _4215) + (32 * _5644) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2114 + (32 * _2210) + (32 * _4215) + (32 * _5644) + 288 len 32 * _6839] = mem[(98 * stor4.length) + 320 len 32 * _6839]
            mem[_2114 + 128] = (32 * _2210) + (32 * _4215) + (32 * _5644) + (32 * _6839) + 288
            _7372 = mem[(131 * stor4.length) + 320]
            mem[_2114 + (32 * _2210) + (32 * _4215) + (32 * _5644) + (32 * _6839) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2114 + (32 * _2210) + (32 * _4215) + (32 * _5644) + (32 * _6839) + 320 len 32 * _7372] = mem[(131 * stor4.length) + 352 len 32 * _7372]
            return memory
              from mem[64]
               len _2114 + (32 * _2210) + (32 * _4215) + (32 * _5644) + (32 * _6839) + (32 * _7372) + -mem[64] + 320
        mem[(64 * stor4.length) + 288 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 288] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2823 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2906 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2906:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2823 + (32 * _2906) + -mem[64] + 96]
                    if ext_call.success:
                        _4282 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4346 = mem[_4282]
                        require mem[_4282] <= test266151307()
                        require _4282 + mem[_4282] + 31 < _4282 + return_data.size
                        _4410 = mem[_4282 + mem[_4282]]
                        require mem[_4282 + mem[_4282]] <= test266151307()
                        require (32 * mem[_4282 + mem[_4282]]) + 32 >= 0 and _4282 + ceil32(return_data.size) + (32 * mem[_4282 + mem[_4282]]) + 32 <= test266151307()
                        mem[64] = _4282 + ceil32(return_data.size) + (32 * mem[_4282 + mem[_4282]]) + 32
                        mem[_4282 + ceil32(return_data.size)] = _4410
                        require return_data.size >= _4346 + (32 * _4410) + 32
                        t = _4282 + _4346 + 32
                        u = _4282 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4410:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4410 - 1 < _4410
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4410 - 1) + _4282 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4410 - 1 < _4410
                            _6329 = mem[(32 * _4410 - 1) + _4282 + ceil32(return_data.size) + 32]
                            _6330 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6329
                            mem[mem[64] + 36] = 64
                            _6381 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6381:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6330 + (32 * _6381) + -mem[64] + 96]
                            if ext_call.success:
                                _6906 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6970 = mem[_6906]
                                require mem[_6906] <= test266151307()
                                require _6906 + mem[_6906] + 31 < _6906 + return_data.size
                                _7034 = mem[_6906 + mem[_6906]]
                                require mem[_6906 + mem[_6906]] <= test266151307()
                                require (32 * mem[_6906 + mem[_6906]]) + 32 >= 0 and _6906 + ceil32(return_data.size) + (32 * mem[_6906 + mem[_6906]]) + 32 <= test266151307()
                                mem[64] = _6906 + ceil32(return_data.size) + (32 * mem[_6906 + mem[_6906]]) + 32
                                mem[_6906 + ceil32(return_data.size)] = _7034
                                require return_data.size >= _6970 + (32 * _7034) + 32
                                t = _6906 + _6970 + 32
                                u = _6906 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7034:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7034 - 1 < _7034
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7034 - 1) + _6906 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2117 = mem[64]
                mem[mem[64]] = 160
                _2213 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4217 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2213) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2213) + 224 len 32 * _4217] = mem[(32 * stor4.length) + 256 len 32 * _4217]
                mem[mem[64] + 64] = (32 * _2213) + (32 * _4217) + 224
                _5645 = mem[(64 * stor4.length) + 256]
                mem[_2117 + (32 * _2213) + (32 * _4217) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2117 + (32 * _2213) + (32 * _4217) + 256 len 32 * _5645] = mem[(64 * stor4.length) + 288 len 32 * _5645]
                mem[_2117 + 96] = (32 * _2213) + (32 * _4217) + (32 * _5645) + 256
                _6841 = mem[(98 * stor4.length) + 288]
                mem[_2117 + (32 * _2213) + (32 * _4217) + (32 * _5645) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2117 + (32 * _2213) + (32 * _4217) + (32 * _5645) + 288 len 32 * _6841] = mem[(98 * stor4.length) + 320 len 32 * _6841]
                mem[_2117 + 128] = (32 * _2213) + (32 * _4217) + (32 * _5645) + (32 * _6841) + 288
                _7373 = mem[(131 * stor4.length) + 320]
                mem[_2117 + (32 * _2213) + (32 * _4217) + (32 * _5645) + (32 * _6841) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2117 + (32 * _2213) + (32 * _4217) + (32 * _5645) + (32 * _6841) + 320 len 32 * _7373] = mem[(131 * stor4.length) + 352 len 32 * _7373]
                return memory
                  from mem[64]
                   len _2117 + (32 * _2213) + (32 * _4217) + (32 * _5645) + (32 * _6841) + (32 * _7373) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2826 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2908 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2908:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2826 + (32 * _2908) + -mem[64] + 96]
                if ext_call.success:
                    _4284 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4348 = mem[_4284]
                    require mem[_4284] <= test266151307()
                    require _4284 + mem[_4284] + 31 < _4284 + return_data.size
                    _4412 = mem[_4284 + mem[_4284]]
                    require mem[_4284 + mem[_4284]] <= test266151307()
                    require (32 * mem[_4284 + mem[_4284]]) + 32 >= 0 and _4284 + ceil32(return_data.size) + (32 * mem[_4284 + mem[_4284]]) + 32 <= test266151307()
                    mem[64] = _4284 + ceil32(return_data.size) + (32 * mem[_4284 + mem[_4284]]) + 32
                    mem[_4284 + ceil32(return_data.size)] = _4412
                    require return_data.size >= _4348 + (32 * _4412) + 32
                    t = _4284 + _4348 + 32
                    u = _4284 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4412:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4412 - 1 < _4412
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4412 - 1) + _4284 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4412 - 1 < _4412
                        _6331 = mem[(32 * _4412 - 1) + _4284 + ceil32(return_data.size) + 32]
                        _6332 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6331
                        mem[mem[64] + 36] = 64
                        _6382 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6382:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6332 + (32 * _6382) + -mem[64] + 96]
                        if ext_call.success:
                            _6908 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6972 = mem[_6908]
                            require mem[_6908] <= test266151307()
                            require _6908 + mem[_6908] + 31 < _6908 + return_data.size
                            _7036 = mem[_6908 + mem[_6908]]
                            require mem[_6908 + mem[_6908]] <= test266151307()
                            require (32 * mem[_6908 + mem[_6908]]) + 32 >= 0 and _6908 + ceil32(return_data.size) + (32 * mem[_6908 + mem[_6908]]) + 32 <= test266151307()
                            mem[64] = _6908 + ceil32(return_data.size) + (32 * mem[_6908 + mem[_6908]]) + 32
                            mem[_6908 + ceil32(return_data.size)] = _7036
                            require return_data.size >= _6972 + (32 * _7036) + 32
                            t = _6908 + _6972 + 32
                            u = _6908 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7036:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7036 - 1 < _7036
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7036 - 1) + _6908 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2120 = mem[64]
            mem[mem[64]] = 160
            _2216 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4219 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2216) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2216) + 224 len 32 * _4219] = mem[(32 * stor4.length) + 256 len 32 * _4219]
            mem[mem[64] + 64] = (32 * _2216) + (32 * _4219) + 224
            _5646 = mem[(64 * stor4.length) + 256]
            mem[_2120 + (32 * _2216) + (32 * _4219) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2120 + (32 * _2216) + (32 * _4219) + 256 len 32 * _5646] = mem[(64 * stor4.length) + 288 len 32 * _5646]
            mem[_2120 + 96] = (32 * _2216) + (32 * _4219) + (32 * _5646) + 256
            _6843 = mem[(98 * stor4.length) + 288]
            mem[_2120 + (32 * _2216) + (32 * _4219) + (32 * _5646) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2120 + (32 * _2216) + (32 * _4219) + (32 * _5646) + 288 len 32 * _6843] = mem[(98 * stor4.length) + 320 len 32 * _6843]
            mem[_2120 + 128] = (32 * _2216) + (32 * _4219) + (32 * _5646) + (32 * _6843) + 288
            _7374 = mem[(131 * stor4.length) + 320]
            mem[_2120 + (32 * _2216) + (32 * _4219) + (32 * _5646) + (32 * _6843) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2120 + (32 * _2216) + (32 * _4219) + (32 * _5646) + (32 * _6843) + 320 len 32 * _7374] = mem[(131 * stor4.length) + 352 len 32 * _7374]
            return memory
              from mem[64]
               len _2120 + (32 * _2216) + (32 * _4219) + (32 * _5646) + (32 * _6843) + (32 * _7374) + -mem[64] + 320
        mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(131 * stor4.length) + 320] = stor4.length
        mem[64] = (164 * stor4.length) + 352
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2829 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2910 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2910:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2829 + (32 * _2910) + -mem[64] + 96]
                if ext_call.success:
                    _4286 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4350 = mem[_4286]
                    require mem[_4286] <= test266151307()
                    require _4286 + mem[_4286] + 31 < _4286 + return_data.size
                    _4414 = mem[_4286 + mem[_4286]]
                    require mem[_4286 + mem[_4286]] <= test266151307()
                    require (32 * mem[_4286 + mem[_4286]]) + 32 >= 0 and _4286 + ceil32(return_data.size) + (32 * mem[_4286 + mem[_4286]]) + 32 <= test266151307()
                    mem[64] = _4286 + ceil32(return_data.size) + (32 * mem[_4286 + mem[_4286]]) + 32
                    mem[_4286 + ceil32(return_data.size)] = _4414
                    require return_data.size >= _4350 + (32 * _4414) + 32
                    t = _4286 + _4350 + 32
                    u = _4286 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4414:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4414 - 1 < _4414
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4414 - 1) + _4286 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4414 - 1 < _4414
                        _6333 = mem[(32 * _4414 - 1) + _4286 + ceil32(return_data.size) + 32]
                        _6334 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6333
                        mem[mem[64] + 36] = 64
                        _6383 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6383:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6334 + (32 * _6383) + -mem[64] + 96]
                        if ext_call.success:
                            _6910 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6974 = mem[_6910]
                            require mem[_6910] <= test266151307()
                            require _6910 + mem[_6910] + 31 < _6910 + return_data.size
                            _7038 = mem[_6910 + mem[_6910]]
                            require mem[_6910 + mem[_6910]] <= test266151307()
                            require (32 * mem[_6910 + mem[_6910]]) + 32 >= 0 and _6910 + ceil32(return_data.size) + (32 * mem[_6910 + mem[_6910]]) + 32 <= test266151307()
                            mem[64] = _6910 + ceil32(return_data.size) + (32 * mem[_6910 + mem[_6910]]) + 32
                            mem[_6910 + ceil32(return_data.size)] = _7038
                            require return_data.size >= _6974 + (32 * _7038) + 32
                            t = _6910 + _6974 + 32
                            u = _6910 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7038:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7038 - 1 < _7038
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7038 - 1) + _6910 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2123 = mem[64]
            mem[mem[64]] = 160
            _2219 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4221 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2219) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2219) + 224 len 32 * _4221] = mem[(32 * stor4.length) + 256 len 32 * _4221]
            mem[mem[64] + 64] = (32 * _2219) + (32 * _4221) + 224
            _5647 = mem[(64 * stor4.length) + 256]
            mem[_2123 + (32 * _2219) + (32 * _4221) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2123 + (32 * _2219) + (32 * _4221) + 256 len 32 * _5647] = mem[(64 * stor4.length) + 288 len 32 * _5647]
            mem[_2123 + 96] = (32 * _2219) + (32 * _4221) + (32 * _5647) + 256
            _6845 = mem[(98 * stor4.length) + 288]
            mem[_2123 + (32 * _2219) + (32 * _4221) + (32 * _5647) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2123 + (32 * _2219) + (32 * _4221) + (32 * _5647) + 288 len 32 * _6845] = mem[(98 * stor4.length) + 320 len 32 * _6845]
            mem[_2123 + 128] = (32 * _2219) + (32 * _4221) + (32 * _5647) + (32 * _6845) + 288
            _7375 = mem[(131 * stor4.length) + 320]
            mem[_2123 + (32 * _2219) + (32 * _4221) + (32 * _5647) + (32 * _6845) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2123 + (32 * _2219) + (32 * _4221) + (32 * _5647) + (32 * _6845) + 320 len 32 * _7375] = mem[(131 * stor4.length) + 352 len 32 * _7375]
            return memory
              from mem[64]
               len _2123 + (32 * _2219) + (32 * _4221) + (32 * _5647) + (32 * _6845) + (32 * _7375) + -mem[64] + 320
        mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[192]
            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require idx < mem[(32 * stor4.length) + 224]
            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require idx < mem[(64 * stor4.length) + 256]
            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require idx < mem[(98 * stor4.length) + 288]
            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
            _2832 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _2912 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _2912:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2832 + (32 * _2912) + -mem[64] + 96]
            if ext_call.success:
                _4288 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4352 = mem[_4288]
                require mem[_4288] <= test266151307()
                require _4288 + mem[_4288] + 31 < _4288 + return_data.size
                _4416 = mem[_4288 + mem[_4288]]
                require mem[_4288 + mem[_4288]] <= test266151307()
                require (32 * mem[_4288 + mem[_4288]]) + 32 >= 0 and _4288 + ceil32(return_data.size) + (32 * mem[_4288 + mem[_4288]]) + 32 <= test266151307()
                mem[64] = _4288 + ceil32(return_data.size) + (32 * mem[_4288 + mem[_4288]]) + 32
                mem[_4288 + ceil32(return_data.size)] = _4416
                require return_data.size >= _4352 + (32 * _4416) + 32
                t = _4288 + _4352 + 32
                u = _4288 + ceil32(return_data.size) + 32
                s = 0
                while s < _4416:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _4416 - 1 < _4416
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4416 - 1) + _4288 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _4416 - 1 < _4416
                    _6335 = mem[(32 * _4416 - 1) + _4288 + ceil32(return_data.size) + 32]
                    _6336 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6335
                    mem[mem[64] + 36] = 64
                    _6384 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _6384:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6336 + (32 * _6384) + -mem[64] + 96]
                    if ext_call.success:
                        _6912 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6976 = mem[_6912]
                        require mem[_6912] <= test266151307()
                        require _6912 + mem[_6912] + 31 < _6912 + return_data.size
                        _7040 = mem[_6912 + mem[_6912]]
                        require mem[_6912 + mem[_6912]] <= test266151307()
                        require (32 * mem[_6912 + mem[_6912]]) + 32 >= 0 and _6912 + ceil32(return_data.size) + (32 * mem[_6912 + mem[_6912]]) + 32 <= test266151307()
                        mem[64] = _6912 + ceil32(return_data.size) + (32 * mem[_6912 + mem[_6912]]) + 32
                        mem[_6912 + ceil32(return_data.size)] = _7040
                        require return_data.size >= _6976 + (32 * _7040) + 32
                        t = _6912 + _6976 + 32
                        u = _6912 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _7040:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _7040 - 1 < _7040
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7040 - 1) + _6912 + ceil32(return_data.size) + 32]
            idx = idx + 1
            continue 
        _2126 = mem[64]
        mem[mem[64]] = 160
        _2222 = mem[192]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        mem[mem[64] + 32] = (32 * mem[192]) + 192
        _4223 = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2222) + 192] = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2222) + 224 len 32 * _4223] = mem[(32 * stor4.length) + 256 len 32 * _4223]
        mem[mem[64] + 64] = (32 * _2222) + (32 * _4223) + 224
        _5648 = mem[(64 * stor4.length) + 256]
        mem[_2126 + (32 * _2222) + (32 * _4223) + 224] = mem[(64 * stor4.length) + 256]
        mem[_2126 + (32 * _2222) + (32 * _4223) + 256 len 32 * _5648] = mem[(64 * stor4.length) + 288 len 32 * _5648]
        mem[_2126 + 96] = (32 * _2222) + (32 * _4223) + (32 * _5648) + 256
        _6847 = mem[(98 * stor4.length) + 288]
        mem[_2126 + (32 * _2222) + (32 * _4223) + (32 * _5648) + 256] = mem[(98 * stor4.length) + 288]
        mem[_2126 + (32 * _2222) + (32 * _4223) + (32 * _5648) + 288 len 32 * _6847] = mem[(98 * stor4.length) + 320 len 32 * _6847]
        mem[_2126 + 128] = (32 * _2222) + (32 * _4223) + (32 * _5648) + (32 * _6847) + 288
        _7376 = mem[(131 * stor4.length) + 320]
        mem[_2126 + (32 * _2222) + (32 * _4223) + (32 * _5648) + (32 * _6847) + 288] = mem[(131 * stor4.length) + 320]
        mem[_2126 + (32 * _2222) + (32 * _4223) + (32 * _5648) + (32 * _6847) + 320 len 32 * _7376] = mem[(131 * stor4.length) + 352 len 32 * _7376]
        return memory
          from mem[64]
           len _2126 + (32 * _2222) + (32 * _4223) + (32 * _5648) + (32 * _6847) + (32 * _7376) + -mem[64] + 320
    mem[224 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(32 * stor4.length) + 224] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(64 * stor4.length) + 256] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(98 * stor4.length) + 288] = stor4.length
            if not stor4.length:
                require stor4.length <= test266151307()
                mem[(131 * stor4.length) + 320] = stor4.length
                mem[64] = (164 * stor4.length) + 352
                if not stor4.length:
                    idx = 0
                    while idx < stor4.length:
                        require idx < mem[192]
                        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                        require idx < stor5.length
                        require idx < mem[(32 * stor4.length) + 224]
                        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                        require idx < stor6.length
                        require idx < mem[(64 * stor4.length) + 256]
                        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                        require idx < stor7.length
                        require idx < mem[(98 * stor4.length) + 288]
                        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                        _2835 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = 64
                        _2914 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _2914:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2835 + (32 * _2914) + -mem[64] + 96]
                        if ext_call.success:
                            _4290 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4354 = mem[_4290]
                            require mem[_4290] <= test266151307()
                            require _4290 + mem[_4290] + 31 < _4290 + return_data.size
                            _4418 = mem[_4290 + mem[_4290]]
                            require mem[_4290 + mem[_4290]] <= test266151307()
                            require (32 * mem[_4290 + mem[_4290]]) + 32 >= 0 and _4290 + ceil32(return_data.size) + (32 * mem[_4290 + mem[_4290]]) + 32 <= test266151307()
                            mem[64] = _4290 + ceil32(return_data.size) + (32 * mem[_4290 + mem[_4290]]) + 32
                            mem[_4290 + ceil32(return_data.size)] = _4418
                            require return_data.size >= _4354 + (32 * _4418) + 32
                            t = _4290 + _4354 + 32
                            u = _4290 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _4418:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require idx < stor7.length
                            mem[0] = 7
                            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                                require _4418 - 1 < _4418
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4418 - 1) + _4290 + ceil32(return_data.size) + 32]
                            else:
                                require idx < stor6.length
                                require idx < stor7.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                                require mem[96]
                                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                                require 1 < mem[96]
                                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                                require idx < stor5.length
                                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                                mem[0] = 1
                                require _4418 - 1 < _4418
                                _6337 = mem[(32 * _4418 - 1) + _4290 + ceil32(return_data.size) + 32]
                                _6338 = mem[64]
                                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6337
                                mem[mem[64] + 36] = 64
                                _6385 = mem[96]
                                mem[mem[64] + 68] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 100
                                while s < _6385:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6338 + (32 * _6385) + -mem[64] + 96]
                                if ext_call.success:
                                    _6914 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6978 = mem[_6914]
                                    require mem[_6914] <= test266151307()
                                    require _6914 + mem[_6914] + 31 < _6914 + return_data.size
                                    _7042 = mem[_6914 + mem[_6914]]
                                    require mem[_6914 + mem[_6914]] <= test266151307()
                                    require (32 * mem[_6914 + mem[_6914]]) + 32 >= 0 and _6914 + ceil32(return_data.size) + (32 * mem[_6914 + mem[_6914]]) + 32 <= test266151307()
                                    mem[64] = _6914 + ceil32(return_data.size) + (32 * mem[_6914 + mem[_6914]]) + 32
                                    mem[_6914 + ceil32(return_data.size)] = _7042
                                    require return_data.size >= _6978 + (32 * _7042) + 32
                                    t = _6914 + _6978 + 32
                                    u = _6914 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _7042:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    require _7042 - 1 < _7042
                                    require idx < mem[(131 * stor4.length) + 320]
                                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7042 - 1) + _6914 + ceil32(return_data.size) + 32]
                        idx = idx + 1
                        continue 
                    _2129 = mem[64]
                    mem[mem[64]] = 160
                    _2225 = mem[192]
                    mem[mem[64] + 160] = mem[192]
                    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                    mem[mem[64] + 32] = (32 * mem[192]) + 192
                    _4225 = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2225) + 192] = mem[(32 * stor4.length) + 224]
                    mem[mem[64] + (32 * _2225) + 224 len 32 * _4225] = mem[(32 * stor4.length) + 256 len 32 * _4225]
                    mem[mem[64] + 64] = (32 * _2225) + (32 * _4225) + 224
                    _5649 = mem[(64 * stor4.length) + 256]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + 224] = mem[(64 * stor4.length) + 256]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + 256 len 32 * _5649] = mem[(64 * stor4.length) + 288 len 32 * _5649]
                    mem[_2129 + 96] = (32 * _2225) + (32 * _4225) + (32 * _5649) + 256
                    _6849 = mem[(98 * stor4.length) + 288]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + (32 * _5649) + 256] = mem[(98 * stor4.length) + 288]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + (32 * _5649) + 288 len 32 * _6849] = mem[(98 * stor4.length) + 320 len 32 * _6849]
                    mem[_2129 + 128] = (32 * _2225) + (32 * _4225) + (32 * _5649) + (32 * _6849) + 288
                    _7377 = mem[(131 * stor4.length) + 320]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + (32 * _5649) + (32 * _6849) + 288] = mem[(131 * stor4.length) + 320]
                    mem[_2129 + (32 * _2225) + (32 * _4225) + (32 * _5649) + (32 * _6849) + 320 len 32 * _7377] = mem[(131 * stor4.length) + 352 len 32 * _7377]
                    return memory
                      from mem[64]
                       len _2129 + (32 * _2225) + (32 * _4225) + (32 * _5649) + (32 * _6849) + (32 * _7377) + -mem[64] + 320
                mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2838 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2916 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2916:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2838 + (32 * _2916) + -mem[64] + 96]
                    if ext_call.success:
                        _4292 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4356 = mem[_4292]
                        require mem[_4292] <= test266151307()
                        require _4292 + mem[_4292] + 31 < _4292 + return_data.size
                        _4420 = mem[_4292 + mem[_4292]]
                        require mem[_4292 + mem[_4292]] <= test266151307()
                        require (32 * mem[_4292 + mem[_4292]]) + 32 >= 0 and _4292 + ceil32(return_data.size) + (32 * mem[_4292 + mem[_4292]]) + 32 <= test266151307()
                        mem[64] = _4292 + ceil32(return_data.size) + (32 * mem[_4292 + mem[_4292]]) + 32
                        mem[_4292 + ceil32(return_data.size)] = _4420
                        require return_data.size >= _4356 + (32 * _4420) + 32
                        t = _4292 + _4356 + 32
                        u = _4292 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4420:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4420 - 1 < _4420
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4420 - 1) + _4292 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4420 - 1 < _4420
                            _6339 = mem[(32 * _4420 - 1) + _4292 + ceil32(return_data.size) + 32]
                            _6340 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6339
                            mem[mem[64] + 36] = 64
                            _6386 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6386:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6340 + (32 * _6386) + -mem[64] + 96]
                            if ext_call.success:
                                _6916 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6980 = mem[_6916]
                                require mem[_6916] <= test266151307()
                                require _6916 + mem[_6916] + 31 < _6916 + return_data.size
                                _7044 = mem[_6916 + mem[_6916]]
                                require mem[_6916 + mem[_6916]] <= test266151307()
                                require (32 * mem[_6916 + mem[_6916]]) + 32 >= 0 and _6916 + ceil32(return_data.size) + (32 * mem[_6916 + mem[_6916]]) + 32 <= test266151307()
                                mem[64] = _6916 + ceil32(return_data.size) + (32 * mem[_6916 + mem[_6916]]) + 32
                                mem[_6916 + ceil32(return_data.size)] = _7044
                                require return_data.size >= _6980 + (32 * _7044) + 32
                                t = _6916 + _6980 + 32
                                u = _6916 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7044:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7044 - 1 < _7044
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7044 - 1) + _6916 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2132 = mem[64]
                mem[mem[64]] = 160
                _2228 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4227 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2228) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2228) + 224 len 32 * _4227] = mem[(32 * stor4.length) + 256 len 32 * _4227]
                mem[mem[64] + 64] = (32 * _2228) + (32 * _4227) + 224
                _5650 = mem[(64 * stor4.length) + 256]
                mem[_2132 + (32 * _2228) + (32 * _4227) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2132 + (32 * _2228) + (32 * _4227) + 256 len 32 * _5650] = mem[(64 * stor4.length) + 288 len 32 * _5650]
                mem[_2132 + 96] = (32 * _2228) + (32 * _4227) + (32 * _5650) + 256
                _6851 = mem[(98 * stor4.length) + 288]
                mem[_2132 + (32 * _2228) + (32 * _4227) + (32 * _5650) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2132 + (32 * _2228) + (32 * _4227) + (32 * _5650) + 288 len 32 * _6851] = mem[(98 * stor4.length) + 320 len 32 * _6851]
                mem[_2132 + 128] = (32 * _2228) + (32 * _4227) + (32 * _5650) + (32 * _6851) + 288
                _7378 = mem[(131 * stor4.length) + 320]
                mem[_2132 + (32 * _2228) + (32 * _4227) + (32 * _5650) + (32 * _6851) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2132 + (32 * _2228) + (32 * _4227) + (32 * _5650) + (32 * _6851) + 320 len 32 * _7378] = mem[(131 * stor4.length) + 352 len 32 * _7378]
                return memory
                  from mem[64]
                   len _2132 + (32 * _2228) + (32 * _4227) + (32 * _5650) + (32 * _6851) + (32 * _7378) + -mem[64] + 320
            mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2841 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2918 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2918:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2841 + (32 * _2918) + -mem[64] + 96]
                    if ext_call.success:
                        _4294 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4358 = mem[_4294]
                        require mem[_4294] <= test266151307()
                        require _4294 + mem[_4294] + 31 < _4294 + return_data.size
                        _4422 = mem[_4294 + mem[_4294]]
                        require mem[_4294 + mem[_4294]] <= test266151307()
                        require (32 * mem[_4294 + mem[_4294]]) + 32 >= 0 and _4294 + ceil32(return_data.size) + (32 * mem[_4294 + mem[_4294]]) + 32 <= test266151307()
                        mem[64] = _4294 + ceil32(return_data.size) + (32 * mem[_4294 + mem[_4294]]) + 32
                        mem[_4294 + ceil32(return_data.size)] = _4422
                        require return_data.size >= _4358 + (32 * _4422) + 32
                        t = _4294 + _4358 + 32
                        u = _4294 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4422:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4422 - 1 < _4422
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4422 - 1) + _4294 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4422 - 1 < _4422
                            _6341 = mem[(32 * _4422 - 1) + _4294 + ceil32(return_data.size) + 32]
                            _6342 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6341
                            mem[mem[64] + 36] = 64
                            _6387 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6387:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6342 + (32 * _6387) + -mem[64] + 96]
                            if ext_call.success:
                                _6918 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6982 = mem[_6918]
                                require mem[_6918] <= test266151307()
                                require _6918 + mem[_6918] + 31 < _6918 + return_data.size
                                _7046 = mem[_6918 + mem[_6918]]
                                require mem[_6918 + mem[_6918]] <= test266151307()
                                require (32 * mem[_6918 + mem[_6918]]) + 32 >= 0 and _6918 + ceil32(return_data.size) + (32 * mem[_6918 + mem[_6918]]) + 32 <= test266151307()
                                mem[64] = _6918 + ceil32(return_data.size) + (32 * mem[_6918 + mem[_6918]]) + 32
                                mem[_6918 + ceil32(return_data.size)] = _7046
                                require return_data.size >= _6982 + (32 * _7046) + 32
                                t = _6918 + _6982 + 32
                                u = _6918 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7046:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7046 - 1 < _7046
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7046 - 1) + _6918 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2135 = mem[64]
                mem[mem[64]] = 160
                _2231 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4229 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2231) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2231) + 224 len 32 * _4229] = mem[(32 * stor4.length) + 256 len 32 * _4229]
                mem[mem[64] + 64] = (32 * _2231) + (32 * _4229) + 224
                _5651 = mem[(64 * stor4.length) + 256]
                mem[_2135 + (32 * _2231) + (32 * _4229) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2135 + (32 * _2231) + (32 * _4229) + 256 len 32 * _5651] = mem[(64 * stor4.length) + 288 len 32 * _5651]
                mem[_2135 + 96] = (32 * _2231) + (32 * _4229) + (32 * _5651) + 256
                _6853 = mem[(98 * stor4.length) + 288]
                mem[_2135 + (32 * _2231) + (32 * _4229) + (32 * _5651) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2135 + (32 * _2231) + (32 * _4229) + (32 * _5651) + 288 len 32 * _6853] = mem[(98 * stor4.length) + 320 len 32 * _6853]
                mem[_2135 + 128] = (32 * _2231) + (32 * _4229) + (32 * _5651) + (32 * _6853) + 288
                _7379 = mem[(131 * stor4.length) + 320]
                mem[_2135 + (32 * _2231) + (32 * _4229) + (32 * _5651) + (32 * _6853) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2135 + (32 * _2231) + (32 * _4229) + (32 * _5651) + (32 * _6853) + 320 len 32 * _7379] = mem[(131 * stor4.length) + 352 len 32 * _7379]
                return memory
                  from mem[64]
                   len _2135 + (32 * _2231) + (32 * _4229) + (32 * _5651) + (32 * _6853) + (32 * _7379) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2844 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2920 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2920:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2844 + (32 * _2920) + -mem[64] + 96]
                if ext_call.success:
                    _4296 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4360 = mem[_4296]
                    require mem[_4296] <= test266151307()
                    require _4296 + mem[_4296] + 31 < _4296 + return_data.size
                    _4424 = mem[_4296 + mem[_4296]]
                    require mem[_4296 + mem[_4296]] <= test266151307()
                    require (32 * mem[_4296 + mem[_4296]]) + 32 >= 0 and _4296 + ceil32(return_data.size) + (32 * mem[_4296 + mem[_4296]]) + 32 <= test266151307()
                    mem[64] = _4296 + ceil32(return_data.size) + (32 * mem[_4296 + mem[_4296]]) + 32
                    mem[_4296 + ceil32(return_data.size)] = _4424
                    require return_data.size >= _4360 + (32 * _4424) + 32
                    t = _4296 + _4360 + 32
                    u = _4296 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4424:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4424 - 1 < _4424
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4424 - 1) + _4296 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4424 - 1 < _4424
                        _6343 = mem[(32 * _4424 - 1) + _4296 + ceil32(return_data.size) + 32]
                        _6344 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6343
                        mem[mem[64] + 36] = 64
                        _6388 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6388:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6344 + (32 * _6388) + -mem[64] + 96]
                        if ext_call.success:
                            _6920 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6984 = mem[_6920]
                            require mem[_6920] <= test266151307()
                            require _6920 + mem[_6920] + 31 < _6920 + return_data.size
                            _7048 = mem[_6920 + mem[_6920]]
                            require mem[_6920 + mem[_6920]] <= test266151307()
                            require (32 * mem[_6920 + mem[_6920]]) + 32 >= 0 and _6920 + ceil32(return_data.size) + (32 * mem[_6920 + mem[_6920]]) + 32 <= test266151307()
                            mem[64] = _6920 + ceil32(return_data.size) + (32 * mem[_6920 + mem[_6920]]) + 32
                            mem[_6920 + ceil32(return_data.size)] = _7048
                            require return_data.size >= _6984 + (32 * _7048) + 32
                            t = _6920 + _6984 + 32
                            u = _6920 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7048:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7048 - 1 < _7048
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7048 - 1) + _6920 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2138 = mem[64]
            mem[mem[64]] = 160
            _2234 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4231 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2234) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2234) + 224 len 32 * _4231] = mem[(32 * stor4.length) + 256 len 32 * _4231]
            mem[mem[64] + 64] = (32 * _2234) + (32 * _4231) + 224
            _5652 = mem[(64 * stor4.length) + 256]
            mem[_2138 + (32 * _2234) + (32 * _4231) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2138 + (32 * _2234) + (32 * _4231) + 256 len 32 * _5652] = mem[(64 * stor4.length) + 288 len 32 * _5652]
            mem[_2138 + 96] = (32 * _2234) + (32 * _4231) + (32 * _5652) + 256
            _6855 = mem[(98 * stor4.length) + 288]
            mem[_2138 + (32 * _2234) + (32 * _4231) + (32 * _5652) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2138 + (32 * _2234) + (32 * _4231) + (32 * _5652) + 288 len 32 * _6855] = mem[(98 * stor4.length) + 320 len 32 * _6855]
            mem[_2138 + 128] = (32 * _2234) + (32 * _4231) + (32 * _5652) + (32 * _6855) + 288
            _7380 = mem[(131 * stor4.length) + 320]
            mem[_2138 + (32 * _2234) + (32 * _4231) + (32 * _5652) + (32 * _6855) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2138 + (32 * _2234) + (32 * _4231) + (32 * _5652) + (32 * _6855) + 320 len 32 * _7380] = mem[(131 * stor4.length) + 352 len 32 * _7380]
            return memory
              from mem[64]
               len _2138 + (32 * _2234) + (32 * _4231) + (32 * _5652) + (32 * _6855) + (32 * _7380) + -mem[64] + 320
        mem[(64 * stor4.length) + 288 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 288] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2847 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2922 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2922:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2847 + (32 * _2922) + -mem[64] + 96]
                    if ext_call.success:
                        _4298 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4362 = mem[_4298]
                        require mem[_4298] <= test266151307()
                        require _4298 + mem[_4298] + 31 < _4298 + return_data.size
                        _4426 = mem[_4298 + mem[_4298]]
                        require mem[_4298 + mem[_4298]] <= test266151307()
                        require (32 * mem[_4298 + mem[_4298]]) + 32 >= 0 and _4298 + ceil32(return_data.size) + (32 * mem[_4298 + mem[_4298]]) + 32 <= test266151307()
                        mem[64] = _4298 + ceil32(return_data.size) + (32 * mem[_4298 + mem[_4298]]) + 32
                        mem[_4298 + ceil32(return_data.size)] = _4426
                        require return_data.size >= _4362 + (32 * _4426) + 32
                        t = _4298 + _4362 + 32
                        u = _4298 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4426:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4426 - 1 < _4426
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4426 - 1) + _4298 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4426 - 1 < _4426
                            _6345 = mem[(32 * _4426 - 1) + _4298 + ceil32(return_data.size) + 32]
                            _6346 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6345
                            mem[mem[64] + 36] = 64
                            _6389 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6389:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6346 + (32 * _6389) + -mem[64] + 96]
                            if ext_call.success:
                                _6922 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6986 = mem[_6922]
                                require mem[_6922] <= test266151307()
                                require _6922 + mem[_6922] + 31 < _6922 + return_data.size
                                _7050 = mem[_6922 + mem[_6922]]
                                require mem[_6922 + mem[_6922]] <= test266151307()
                                require (32 * mem[_6922 + mem[_6922]]) + 32 >= 0 and _6922 + ceil32(return_data.size) + (32 * mem[_6922 + mem[_6922]]) + 32 <= test266151307()
                                mem[64] = _6922 + ceil32(return_data.size) + (32 * mem[_6922 + mem[_6922]]) + 32
                                mem[_6922 + ceil32(return_data.size)] = _7050
                                require return_data.size >= _6986 + (32 * _7050) + 32
                                t = _6922 + _6986 + 32
                                u = _6922 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7050:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7050 - 1 < _7050
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7050 - 1) + _6922 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2141 = mem[64]
                mem[mem[64]] = 160
                _2237 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4233 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2237) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2237) + 224 len 32 * _4233] = mem[(32 * stor4.length) + 256 len 32 * _4233]
                mem[mem[64] + 64] = (32 * _2237) + (32 * _4233) + 224
                _5653 = mem[(64 * stor4.length) + 256]
                mem[_2141 + (32 * _2237) + (32 * _4233) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2141 + (32 * _2237) + (32 * _4233) + 256 len 32 * _5653] = mem[(64 * stor4.length) + 288 len 32 * _5653]
                mem[_2141 + 96] = (32 * _2237) + (32 * _4233) + (32 * _5653) + 256
                _6857 = mem[(98 * stor4.length) + 288]
                mem[_2141 + (32 * _2237) + (32 * _4233) + (32 * _5653) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2141 + (32 * _2237) + (32 * _4233) + (32 * _5653) + 288 len 32 * _6857] = mem[(98 * stor4.length) + 320 len 32 * _6857]
                mem[_2141 + 128] = (32 * _2237) + (32 * _4233) + (32 * _5653) + (32 * _6857) + 288
                _7381 = mem[(131 * stor4.length) + 320]
                mem[_2141 + (32 * _2237) + (32 * _4233) + (32 * _5653) + (32 * _6857) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2141 + (32 * _2237) + (32 * _4233) + (32 * _5653) + (32 * _6857) + 320 len 32 * _7381] = mem[(131 * stor4.length) + 352 len 32 * _7381]
                return memory
                  from mem[64]
                   len _2141 + (32 * _2237) + (32 * _4233) + (32 * _5653) + (32 * _6857) + (32 * _7381) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2850 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2924 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2924:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2850 + (32 * _2924) + -mem[64] + 96]
                if ext_call.success:
                    _4300 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4364 = mem[_4300]
                    require mem[_4300] <= test266151307()
                    require _4300 + mem[_4300] + 31 < _4300 + return_data.size
                    _4428 = mem[_4300 + mem[_4300]]
                    require mem[_4300 + mem[_4300]] <= test266151307()
                    require (32 * mem[_4300 + mem[_4300]]) + 32 >= 0 and _4300 + ceil32(return_data.size) + (32 * mem[_4300 + mem[_4300]]) + 32 <= test266151307()
                    mem[64] = _4300 + ceil32(return_data.size) + (32 * mem[_4300 + mem[_4300]]) + 32
                    mem[_4300 + ceil32(return_data.size)] = _4428
                    require return_data.size >= _4364 + (32 * _4428) + 32
                    t = _4300 + _4364 + 32
                    u = _4300 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4428:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4428 - 1 < _4428
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4428 - 1) + _4300 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4428 - 1 < _4428
                        _6347 = mem[(32 * _4428 - 1) + _4300 + ceil32(return_data.size) + 32]
                        _6348 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6347
                        mem[mem[64] + 36] = 64
                        _6390 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6390:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6348 + (32 * _6390) + -mem[64] + 96]
                        if ext_call.success:
                            _6924 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6988 = mem[_6924]
                            require mem[_6924] <= test266151307()
                            require _6924 + mem[_6924] + 31 < _6924 + return_data.size
                            _7052 = mem[_6924 + mem[_6924]]
                            require mem[_6924 + mem[_6924]] <= test266151307()
                            require (32 * mem[_6924 + mem[_6924]]) + 32 >= 0 and _6924 + ceil32(return_data.size) + (32 * mem[_6924 + mem[_6924]]) + 32 <= test266151307()
                            mem[64] = _6924 + ceil32(return_data.size) + (32 * mem[_6924 + mem[_6924]]) + 32
                            mem[_6924 + ceil32(return_data.size)] = _7052
                            require return_data.size >= _6988 + (32 * _7052) + 32
                            t = _6924 + _6988 + 32
                            u = _6924 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7052:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7052 - 1 < _7052
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7052 - 1) + _6924 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2144 = mem[64]
            mem[mem[64]] = 160
            _2240 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4235 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2240) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2240) + 224 len 32 * _4235] = mem[(32 * stor4.length) + 256 len 32 * _4235]
            mem[mem[64] + 64] = (32 * _2240) + (32 * _4235) + 224
            _5654 = mem[(64 * stor4.length) + 256]
            mem[_2144 + (32 * _2240) + (32 * _4235) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2144 + (32 * _2240) + (32 * _4235) + 256 len 32 * _5654] = mem[(64 * stor4.length) + 288 len 32 * _5654]
            mem[_2144 + 96] = (32 * _2240) + (32 * _4235) + (32 * _5654) + 256
            _6859 = mem[(98 * stor4.length) + 288]
            mem[_2144 + (32 * _2240) + (32 * _4235) + (32 * _5654) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2144 + (32 * _2240) + (32 * _4235) + (32 * _5654) + 288 len 32 * _6859] = mem[(98 * stor4.length) + 320 len 32 * _6859]
            mem[_2144 + 128] = (32 * _2240) + (32 * _4235) + (32 * _5654) + (32 * _6859) + 288
            _7382 = mem[(131 * stor4.length) + 320]
            mem[_2144 + (32 * _2240) + (32 * _4235) + (32 * _5654) + (32 * _6859) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2144 + (32 * _2240) + (32 * _4235) + (32 * _5654) + (32 * _6859) + 320 len 32 * _7382] = mem[(131 * stor4.length) + 352 len 32 * _7382]
            return memory
              from mem[64]
               len _2144 + (32 * _2240) + (32 * _4235) + (32 * _5654) + (32 * _6859) + (32 * _7382) + -mem[64] + 320
        mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(131 * stor4.length) + 320] = stor4.length
        mem[64] = (164 * stor4.length) + 352
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2853 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2926 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2926:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2853 + (32 * _2926) + -mem[64] + 96]
                if ext_call.success:
                    _4302 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4366 = mem[_4302]
                    require mem[_4302] <= test266151307()
                    require _4302 + mem[_4302] + 31 < _4302 + return_data.size
                    _4430 = mem[_4302 + mem[_4302]]
                    require mem[_4302 + mem[_4302]] <= test266151307()
                    require (32 * mem[_4302 + mem[_4302]]) + 32 >= 0 and _4302 + ceil32(return_data.size) + (32 * mem[_4302 + mem[_4302]]) + 32 <= test266151307()
                    mem[64] = _4302 + ceil32(return_data.size) + (32 * mem[_4302 + mem[_4302]]) + 32
                    mem[_4302 + ceil32(return_data.size)] = _4430
                    require return_data.size >= _4366 + (32 * _4430) + 32
                    t = _4302 + _4366 + 32
                    u = _4302 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4430:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4430 - 1 < _4430
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4430 - 1) + _4302 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4430 - 1 < _4430
                        _6349 = mem[(32 * _4430 - 1) + _4302 + ceil32(return_data.size) + 32]
                        _6350 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6349
                        mem[mem[64] + 36] = 64
                        _6391 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6391:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6350 + (32 * _6391) + -mem[64] + 96]
                        if ext_call.success:
                            _6926 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6990 = mem[_6926]
                            require mem[_6926] <= test266151307()
                            require _6926 + mem[_6926] + 31 < _6926 + return_data.size
                            _7054 = mem[_6926 + mem[_6926]]
                            require mem[_6926 + mem[_6926]] <= test266151307()
                            require (32 * mem[_6926 + mem[_6926]]) + 32 >= 0 and _6926 + ceil32(return_data.size) + (32 * mem[_6926 + mem[_6926]]) + 32 <= test266151307()
                            mem[64] = _6926 + ceil32(return_data.size) + (32 * mem[_6926 + mem[_6926]]) + 32
                            mem[_6926 + ceil32(return_data.size)] = _7054
                            require return_data.size >= _6990 + (32 * _7054) + 32
                            t = _6926 + _6990 + 32
                            u = _6926 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7054:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7054 - 1 < _7054
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7054 - 1) + _6926 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2147 = mem[64]
            mem[mem[64]] = 160
            _2243 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4237 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2243) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2243) + 224 len 32 * _4237] = mem[(32 * stor4.length) + 256 len 32 * _4237]
            mem[mem[64] + 64] = (32 * _2243) + (32 * _4237) + 224
            _5655 = mem[(64 * stor4.length) + 256]
            mem[_2147 + (32 * _2243) + (32 * _4237) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2147 + (32 * _2243) + (32 * _4237) + 256 len 32 * _5655] = mem[(64 * stor4.length) + 288 len 32 * _5655]
            mem[_2147 + 96] = (32 * _2243) + (32 * _4237) + (32 * _5655) + 256
            _6861 = mem[(98 * stor4.length) + 288]
            mem[_2147 + (32 * _2243) + (32 * _4237) + (32 * _5655) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2147 + (32 * _2243) + (32 * _4237) + (32 * _5655) + 288 len 32 * _6861] = mem[(98 * stor4.length) + 320 len 32 * _6861]
            mem[_2147 + 128] = (32 * _2243) + (32 * _4237) + (32 * _5655) + (32 * _6861) + 288
            _7383 = mem[(131 * stor4.length) + 320]
            mem[_2147 + (32 * _2243) + (32 * _4237) + (32 * _5655) + (32 * _6861) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2147 + (32 * _2243) + (32 * _4237) + (32 * _5655) + (32 * _6861) + 320 len 32 * _7383] = mem[(131 * stor4.length) + 352 len 32 * _7383]
            return memory
              from mem[64]
               len _2147 + (32 * _2243) + (32 * _4237) + (32 * _5655) + (32 * _6861) + (32 * _7383) + -mem[64] + 320
        mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[192]
            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require idx < mem[(32 * stor4.length) + 224]
            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require idx < mem[(64 * stor4.length) + 256]
            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require idx < mem[(98 * stor4.length) + 288]
            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
            _2856 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _2928 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _2928:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2856 + (32 * _2928) + -mem[64] + 96]
            if ext_call.success:
                _4304 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4368 = mem[_4304]
                require mem[_4304] <= test266151307()
                require _4304 + mem[_4304] + 31 < _4304 + return_data.size
                _4432 = mem[_4304 + mem[_4304]]
                require mem[_4304 + mem[_4304]] <= test266151307()
                require (32 * mem[_4304 + mem[_4304]]) + 32 >= 0 and _4304 + ceil32(return_data.size) + (32 * mem[_4304 + mem[_4304]]) + 32 <= test266151307()
                mem[64] = _4304 + ceil32(return_data.size) + (32 * mem[_4304 + mem[_4304]]) + 32
                mem[_4304 + ceil32(return_data.size)] = _4432
                require return_data.size >= _4368 + (32 * _4432) + 32
                t = _4304 + _4368 + 32
                u = _4304 + ceil32(return_data.size) + 32
                s = 0
                while s < _4432:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _4432 - 1 < _4432
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4432 - 1) + _4304 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _4432 - 1 < _4432
                    _6351 = mem[(32 * _4432 - 1) + _4304 + ceil32(return_data.size) + 32]
                    _6352 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6351
                    mem[mem[64] + 36] = 64
                    _6392 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _6392:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6352 + (32 * _6392) + -mem[64] + 96]
                    if ext_call.success:
                        _6928 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6992 = mem[_6928]
                        require mem[_6928] <= test266151307()
                        require _6928 + mem[_6928] + 31 < _6928 + return_data.size
                        _7056 = mem[_6928 + mem[_6928]]
                        require mem[_6928 + mem[_6928]] <= test266151307()
                        require (32 * mem[_6928 + mem[_6928]]) + 32 >= 0 and _6928 + ceil32(return_data.size) + (32 * mem[_6928 + mem[_6928]]) + 32 <= test266151307()
                        mem[64] = _6928 + ceil32(return_data.size) + (32 * mem[_6928 + mem[_6928]]) + 32
                        mem[_6928 + ceil32(return_data.size)] = _7056
                        require return_data.size >= _6992 + (32 * _7056) + 32
                        t = _6928 + _6992 + 32
                        u = _6928 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _7056:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _7056 - 1 < _7056
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7056 - 1) + _6928 + ceil32(return_data.size) + 32]
            idx = idx + 1
            continue 
        _2150 = mem[64]
        mem[mem[64]] = 160
        _2246 = mem[192]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        mem[mem[64] + 32] = (32 * mem[192]) + 192
        _4239 = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2246) + 192] = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2246) + 224 len 32 * _4239] = mem[(32 * stor4.length) + 256 len 32 * _4239]
        mem[mem[64] + 64] = (32 * _2246) + (32 * _4239) + 224
        _5656 = mem[(64 * stor4.length) + 256]
        mem[_2150 + (32 * _2246) + (32 * _4239) + 224] = mem[(64 * stor4.length) + 256]
        mem[_2150 + (32 * _2246) + (32 * _4239) + 256 len 32 * _5656] = mem[(64 * stor4.length) + 288 len 32 * _5656]
        mem[_2150 + 96] = (32 * _2246) + (32 * _4239) + (32 * _5656) + 256
        _6863 = mem[(98 * stor4.length) + 288]
        mem[_2150 + (32 * _2246) + (32 * _4239) + (32 * _5656) + 256] = mem[(98 * stor4.length) + 288]
        mem[_2150 + (32 * _2246) + (32 * _4239) + (32 * _5656) + 288 len 32 * _6863] = mem[(98 * stor4.length) + 320 len 32 * _6863]
        mem[_2150 + 128] = (32 * _2246) + (32 * _4239) + (32 * _5656) + (32 * _6863) + 288
        _7384 = mem[(131 * stor4.length) + 320]
        mem[_2150 + (32 * _2246) + (32 * _4239) + (32 * _5656) + (32 * _6863) + 288] = mem[(131 * stor4.length) + 320]
        mem[_2150 + (32 * _2246) + (32 * _4239) + (32 * _5656) + (32 * _6863) + 320 len 32 * _7384] = mem[(131 * stor4.length) + 352 len 32 * _7384]
        return memory
          from mem[64]
           len _2150 + (32 * _2246) + (32 * _4239) + (32 * _5656) + (32 * _6863) + (32 * _7384) + -mem[64] + 320
    mem[(32 * stor4.length) + 256 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(64 * stor4.length) + 256] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(98 * stor4.length) + 288] = stor4.length
        if not stor4.length:
            require stor4.length <= test266151307()
            mem[(131 * stor4.length) + 320] = stor4.length
            mem[64] = (164 * stor4.length) + 352
            if not stor4.length:
                idx = 0
                while idx < stor4.length:
                    require idx < mem[192]
                    mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                    require idx < stor5.length
                    require idx < mem[(32 * stor4.length) + 224]
                    mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                    require idx < stor6.length
                    require idx < mem[(64 * stor4.length) + 256]
                    mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                    require idx < stor7.length
                    require idx < mem[(98 * stor4.length) + 288]
                    mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                    _2859 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = 64
                    _2930 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2930:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2859 + (32 * _2930) + -mem[64] + 96]
                    if ext_call.success:
                        _4306 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4370 = mem[_4306]
                        require mem[_4306] <= test266151307()
                        require _4306 + mem[_4306] + 31 < _4306 + return_data.size
                        _4434 = mem[_4306 + mem[_4306]]
                        require mem[_4306 + mem[_4306]] <= test266151307()
                        require (32 * mem[_4306 + mem[_4306]]) + 32 >= 0 and _4306 + ceil32(return_data.size) + (32 * mem[_4306 + mem[_4306]]) + 32 <= test266151307()
                        mem[64] = _4306 + ceil32(return_data.size) + (32 * mem[_4306 + mem[_4306]]) + 32
                        mem[_4306 + ceil32(return_data.size)] = _4434
                        require return_data.size >= _4370 + (32 * _4434) + 32
                        t = _4306 + _4370 + 32
                        u = _4306 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _4434:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require idx < stor7.length
                        mem[0] = 7
                        if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                            require _4434 - 1 < _4434
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4434 - 1) + _4306 + ceil32(return_data.size) + 32]
                        else:
                            require idx < stor6.length
                            require idx < stor7.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                            require mem[96]
                            mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                            require 1 < mem[96]
                            mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                            require idx < stor5.length
                            require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                            mem[0] = 1
                            require _4434 - 1 < _4434
                            _6353 = mem[(32 * _4434 - 1) + _4306 + ceil32(return_data.size) + 32]
                            _6354 = mem[64]
                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6353
                            mem[mem[64] + 36] = 64
                            _6393 = mem[96]
                            mem[mem[64] + 68] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 100
                            while s < _6393:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _6354 + (32 * _6393) + -mem[64] + 96]
                            if ext_call.success:
                                _6930 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6994 = mem[_6930]
                                require mem[_6930] <= test266151307()
                                require _6930 + mem[_6930] + 31 < _6930 + return_data.size
                                _7058 = mem[_6930 + mem[_6930]]
                                require mem[_6930 + mem[_6930]] <= test266151307()
                                require (32 * mem[_6930 + mem[_6930]]) + 32 >= 0 and _6930 + ceil32(return_data.size) + (32 * mem[_6930 + mem[_6930]]) + 32 <= test266151307()
                                mem[64] = _6930 + ceil32(return_data.size) + (32 * mem[_6930 + mem[_6930]]) + 32
                                mem[_6930 + ceil32(return_data.size)] = _7058
                                require return_data.size >= _6994 + (32 * _7058) + 32
                                t = _6930 + _6994 + 32
                                u = _6930 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _7058:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                require _7058 - 1 < _7058
                                require idx < mem[(131 * stor4.length) + 320]
                                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7058 - 1) + _6930 + ceil32(return_data.size) + 32]
                    idx = idx + 1
                    continue 
                _2153 = mem[64]
                mem[mem[64]] = 160
                _2249 = mem[192]
                mem[mem[64] + 160] = mem[192]
                mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
                mem[mem[64] + 32] = (32 * mem[192]) + 192
                _4241 = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2249) + 192] = mem[(32 * stor4.length) + 224]
                mem[mem[64] + (32 * _2249) + 224 len 32 * _4241] = mem[(32 * stor4.length) + 256 len 32 * _4241]
                mem[mem[64] + 64] = (32 * _2249) + (32 * _4241) + 224
                _5657 = mem[(64 * stor4.length) + 256]
                mem[_2153 + (32 * _2249) + (32 * _4241) + 224] = mem[(64 * stor4.length) + 256]
                mem[_2153 + (32 * _2249) + (32 * _4241) + 256 len 32 * _5657] = mem[(64 * stor4.length) + 288 len 32 * _5657]
                mem[_2153 + 96] = (32 * _2249) + (32 * _4241) + (32 * _5657) + 256
                _6865 = mem[(98 * stor4.length) + 288]
                mem[_2153 + (32 * _2249) + (32 * _4241) + (32 * _5657) + 256] = mem[(98 * stor4.length) + 288]
                mem[_2153 + (32 * _2249) + (32 * _4241) + (32 * _5657) + 288 len 32 * _6865] = mem[(98 * stor4.length) + 320 len 32 * _6865]
                mem[_2153 + 128] = (32 * _2249) + (32 * _4241) + (32 * _5657) + (32 * _6865) + 288
                _7385 = mem[(131 * stor4.length) + 320]
                mem[_2153 + (32 * _2249) + (32 * _4241) + (32 * _5657) + (32 * _6865) + 288] = mem[(131 * stor4.length) + 320]
                mem[_2153 + (32 * _2249) + (32 * _4241) + (32 * _5657) + (32 * _6865) + 320 len 32 * _7385] = mem[(131 * stor4.length) + 352 len 32 * _7385]
                return memory
                  from mem[64]
                   len _2153 + (32 * _2249) + (32 * _4241) + (32 * _5657) + (32 * _6865) + (32 * _7385) + -mem[64] + 320
            mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2862 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2932 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2932:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2862 + (32 * _2932) + -mem[64] + 96]
                if ext_call.success:
                    _4308 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4372 = mem[_4308]
                    require mem[_4308] <= test266151307()
                    require _4308 + mem[_4308] + 31 < _4308 + return_data.size
                    _4436 = mem[_4308 + mem[_4308]]
                    require mem[_4308 + mem[_4308]] <= test266151307()
                    require (32 * mem[_4308 + mem[_4308]]) + 32 >= 0 and _4308 + ceil32(return_data.size) + (32 * mem[_4308 + mem[_4308]]) + 32 <= test266151307()
                    mem[64] = _4308 + ceil32(return_data.size) + (32 * mem[_4308 + mem[_4308]]) + 32
                    mem[_4308 + ceil32(return_data.size)] = _4436
                    require return_data.size >= _4372 + (32 * _4436) + 32
                    t = _4308 + _4372 + 32
                    u = _4308 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4436:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4436 - 1 < _4436
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4436 - 1) + _4308 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4436 - 1 < _4436
                        _6355 = mem[(32 * _4436 - 1) + _4308 + ceil32(return_data.size) + 32]
                        _6356 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6355
                        mem[mem[64] + 36] = 64
                        _6394 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6394:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6356 + (32 * _6394) + -mem[64] + 96]
                        if ext_call.success:
                            _6932 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6996 = mem[_6932]
                            require mem[_6932] <= test266151307()
                            require _6932 + mem[_6932] + 31 < _6932 + return_data.size
                            _7060 = mem[_6932 + mem[_6932]]
                            require mem[_6932 + mem[_6932]] <= test266151307()
                            require (32 * mem[_6932 + mem[_6932]]) + 32 >= 0 and _6932 + ceil32(return_data.size) + (32 * mem[_6932 + mem[_6932]]) + 32 <= test266151307()
                            mem[64] = _6932 + ceil32(return_data.size) + (32 * mem[_6932 + mem[_6932]]) + 32
                            mem[_6932 + ceil32(return_data.size)] = _7060
                            require return_data.size >= _6996 + (32 * _7060) + 32
                            t = _6932 + _6996 + 32
                            u = _6932 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7060:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7060 - 1 < _7060
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7060 - 1) + _6932 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2156 = mem[64]
            mem[mem[64]] = 160
            _2252 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4243 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2252) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2252) + 224 len 32 * _4243] = mem[(32 * stor4.length) + 256 len 32 * _4243]
            mem[mem[64] + 64] = (32 * _2252) + (32 * _4243) + 224
            _5658 = mem[(64 * stor4.length) + 256]
            mem[_2156 + (32 * _2252) + (32 * _4243) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2156 + (32 * _2252) + (32 * _4243) + 256 len 32 * _5658] = mem[(64 * stor4.length) + 288 len 32 * _5658]
            mem[_2156 + 96] = (32 * _2252) + (32 * _4243) + (32 * _5658) + 256
            _6867 = mem[(98 * stor4.length) + 288]
            mem[_2156 + (32 * _2252) + (32 * _4243) + (32 * _5658) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2156 + (32 * _2252) + (32 * _4243) + (32 * _5658) + 288 len 32 * _6867] = mem[(98 * stor4.length) + 320 len 32 * _6867]
            mem[_2156 + 128] = (32 * _2252) + (32 * _4243) + (32 * _5658) + (32 * _6867) + 288
            _7386 = mem[(131 * stor4.length) + 320]
            mem[_2156 + (32 * _2252) + (32 * _4243) + (32 * _5658) + (32 * _6867) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2156 + (32 * _2252) + (32 * _4243) + (32 * _5658) + (32 * _6867) + 320 len 32 * _7386] = mem[(131 * stor4.length) + 352 len 32 * _7386]
            return memory
              from mem[64]
               len _2156 + (32 * _2252) + (32 * _4243) + (32 * _5658) + (32 * _6867) + (32 * _7386) + -mem[64] + 320
        mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        require stor4.length <= test266151307()
        mem[(131 * stor4.length) + 320] = stor4.length
        mem[64] = (164 * stor4.length) + 352
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2865 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2934 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2934:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2865 + (32 * _2934) + -mem[64] + 96]
                if ext_call.success:
                    _4310 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4374 = mem[_4310]
                    require mem[_4310] <= test266151307()
                    require _4310 + mem[_4310] + 31 < _4310 + return_data.size
                    _4438 = mem[_4310 + mem[_4310]]
                    require mem[_4310 + mem[_4310]] <= test266151307()
                    require (32 * mem[_4310 + mem[_4310]]) + 32 >= 0 and _4310 + ceil32(return_data.size) + (32 * mem[_4310 + mem[_4310]]) + 32 <= test266151307()
                    mem[64] = _4310 + ceil32(return_data.size) + (32 * mem[_4310 + mem[_4310]]) + 32
                    mem[_4310 + ceil32(return_data.size)] = _4438
                    require return_data.size >= _4374 + (32 * _4438) + 32
                    t = _4310 + _4374 + 32
                    u = _4310 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4438:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4438 - 1 < _4438
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4438 - 1) + _4310 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4438 - 1 < _4438
                        _6357 = mem[(32 * _4438 - 1) + _4310 + ceil32(return_data.size) + 32]
                        _6358 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6357
                        mem[mem[64] + 36] = 64
                        _6395 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6395:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6358 + (32 * _6395) + -mem[64] + 96]
                        if ext_call.success:
                            _6934 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6998 = mem[_6934]
                            require mem[_6934] <= test266151307()
                            require _6934 + mem[_6934] + 31 < _6934 + return_data.size
                            _7062 = mem[_6934 + mem[_6934]]
                            require mem[_6934 + mem[_6934]] <= test266151307()
                            require (32 * mem[_6934 + mem[_6934]]) + 32 >= 0 and _6934 + ceil32(return_data.size) + (32 * mem[_6934 + mem[_6934]]) + 32 <= test266151307()
                            mem[64] = _6934 + ceil32(return_data.size) + (32 * mem[_6934 + mem[_6934]]) + 32
                            mem[_6934 + ceil32(return_data.size)] = _7062
                            require return_data.size >= _6998 + (32 * _7062) + 32
                            t = _6934 + _6998 + 32
                            u = _6934 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7062:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7062 - 1 < _7062
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7062 - 1) + _6934 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2159 = mem[64]
            mem[mem[64]] = 160
            _2255 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4245 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2255) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2255) + 224 len 32 * _4245] = mem[(32 * stor4.length) + 256 len 32 * _4245]
            mem[mem[64] + 64] = (32 * _2255) + (32 * _4245) + 224
            _5659 = mem[(64 * stor4.length) + 256]
            mem[_2159 + (32 * _2255) + (32 * _4245) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2159 + (32 * _2255) + (32 * _4245) + 256 len 32 * _5659] = mem[(64 * stor4.length) + 288 len 32 * _5659]
            mem[_2159 + 96] = (32 * _2255) + (32 * _4245) + (32 * _5659) + 256
            _6869 = mem[(98 * stor4.length) + 288]
            mem[_2159 + (32 * _2255) + (32 * _4245) + (32 * _5659) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2159 + (32 * _2255) + (32 * _4245) + (32 * _5659) + 288 len 32 * _6869] = mem[(98 * stor4.length) + 320 len 32 * _6869]
            mem[_2159 + 128] = (32 * _2255) + (32 * _4245) + (32 * _5659) + (32 * _6869) + 288
            _7387 = mem[(131 * stor4.length) + 320]
            mem[_2159 + (32 * _2255) + (32 * _4245) + (32 * _5659) + (32 * _6869) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2159 + (32 * _2255) + (32 * _4245) + (32 * _5659) + (32 * _6869) + 320 len 32 * _7387] = mem[(131 * stor4.length) + 352 len 32 * _7387]
            return memory
              from mem[64]
               len _2159 + (32 * _2255) + (32 * _4245) + (32 * _5659) + (32 * _6869) + (32 * _7387) + -mem[64] + 320
        mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[192]
            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require idx < mem[(32 * stor4.length) + 224]
            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require idx < mem[(64 * stor4.length) + 256]
            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require idx < mem[(98 * stor4.length) + 288]
            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
            _2868 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _2936 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _2936:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2868 + (32 * _2936) + -mem[64] + 96]
            if ext_call.success:
                _4312 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4376 = mem[_4312]
                require mem[_4312] <= test266151307()
                require _4312 + mem[_4312] + 31 < _4312 + return_data.size
                _4440 = mem[_4312 + mem[_4312]]
                require mem[_4312 + mem[_4312]] <= test266151307()
                require (32 * mem[_4312 + mem[_4312]]) + 32 >= 0 and _4312 + ceil32(return_data.size) + (32 * mem[_4312 + mem[_4312]]) + 32 <= test266151307()
                mem[64] = _4312 + ceil32(return_data.size) + (32 * mem[_4312 + mem[_4312]]) + 32
                mem[_4312 + ceil32(return_data.size)] = _4440
                require return_data.size >= _4376 + (32 * _4440) + 32
                t = _4312 + _4376 + 32
                u = _4312 + ceil32(return_data.size) + 32
                s = 0
                while s < _4440:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _4440 - 1 < _4440
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4440 - 1) + _4312 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _4440 - 1 < _4440
                    _6359 = mem[(32 * _4440 - 1) + _4312 + ceil32(return_data.size) + 32]
                    _6360 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6359
                    mem[mem[64] + 36] = 64
                    _6396 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _6396:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6360 + (32 * _6396) + -mem[64] + 96]
                    if ext_call.success:
                        _6936 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7000 = mem[_6936]
                        require mem[_6936] <= test266151307()
                        require _6936 + mem[_6936] + 31 < _6936 + return_data.size
                        _7064 = mem[_6936 + mem[_6936]]
                        require mem[_6936 + mem[_6936]] <= test266151307()
                        require (32 * mem[_6936 + mem[_6936]]) + 32 >= 0 and _6936 + ceil32(return_data.size) + (32 * mem[_6936 + mem[_6936]]) + 32 <= test266151307()
                        mem[64] = _6936 + ceil32(return_data.size) + (32 * mem[_6936 + mem[_6936]]) + 32
                        mem[_6936 + ceil32(return_data.size)] = _7064
                        require return_data.size >= _7000 + (32 * _7064) + 32
                        t = _6936 + _7000 + 32
                        u = _6936 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _7064:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _7064 - 1 < _7064
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7064 - 1) + _6936 + ceil32(return_data.size) + 32]
            idx = idx + 1
            continue 
        _2162 = mem[64]
        mem[mem[64]] = 160
        _2258 = mem[192]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        mem[mem[64] + 32] = (32 * mem[192]) + 192
        _4247 = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2258) + 192] = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2258) + 224 len 32 * _4247] = mem[(32 * stor4.length) + 256 len 32 * _4247]
        mem[mem[64] + 64] = (32 * _2258) + (32 * _4247) + 224
        _5660 = mem[(64 * stor4.length) + 256]
        mem[_2162 + (32 * _2258) + (32 * _4247) + 224] = mem[(64 * stor4.length) + 256]
        mem[_2162 + (32 * _2258) + (32 * _4247) + 256 len 32 * _5660] = mem[(64 * stor4.length) + 288 len 32 * _5660]
        mem[_2162 + 96] = (32 * _2258) + (32 * _4247) + (32 * _5660) + 256
        _6871 = mem[(98 * stor4.length) + 288]
        mem[_2162 + (32 * _2258) + (32 * _4247) + (32 * _5660) + 256] = mem[(98 * stor4.length) + 288]
        mem[_2162 + (32 * _2258) + (32 * _4247) + (32 * _5660) + 288 len 32 * _6871] = mem[(98 * stor4.length) + 320 len 32 * _6871]
        mem[_2162 + 128] = (32 * _2258) + (32 * _4247) + (32 * _5660) + (32 * _6871) + 288
        _7388 = mem[(131 * stor4.length) + 320]
        mem[_2162 + (32 * _2258) + (32 * _4247) + (32 * _5660) + (32 * _6871) + 288] = mem[(131 * stor4.length) + 320]
        mem[_2162 + (32 * _2258) + (32 * _4247) + (32 * _5660) + (32 * _6871) + 320 len 32 * _7388] = mem[(131 * stor4.length) + 352 len 32 * _7388]
        return memory
          from mem[64]
           len _2162 + (32 * _2258) + (32 * _4247) + (32 * _5660) + (32 * _6871) + (32 * _7388) + -mem[64] + 320
    mem[(64 * stor4.length) + 288 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(98 * stor4.length) + 288] = stor4.length
    if not stor4.length:
        require stor4.length <= test266151307()
        mem[(131 * stor4.length) + 320] = stor4.length
        mem[64] = (164 * stor4.length) + 352
        if not stor4.length:
            idx = 0
            while idx < stor4.length:
                require idx < mem[192]
                mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
                require idx < stor5.length
                require idx < mem[(32 * stor4.length) + 224]
                mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
                require idx < stor6.length
                require idx < mem[(64 * stor4.length) + 256]
                mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
                require idx < stor7.length
                require idx < mem[(98 * stor4.length) + 288]
                mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
                _2871 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 64
                _2938 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _2938:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2871 + (32 * _2938) + -mem[64] + 96]
                if ext_call.success:
                    _4314 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4378 = mem[_4314]
                    require mem[_4314] <= test266151307()
                    require _4314 + mem[_4314] + 31 < _4314 + return_data.size
                    _4442 = mem[_4314 + mem[_4314]]
                    require mem[_4314 + mem[_4314]] <= test266151307()
                    require (32 * mem[_4314 + mem[_4314]]) + 32 >= 0 and _4314 + ceil32(return_data.size) + (32 * mem[_4314 + mem[_4314]]) + 32 <= test266151307()
                    mem[64] = _4314 + ceil32(return_data.size) + (32 * mem[_4314 + mem[_4314]]) + 32
                    mem[_4314 + ceil32(return_data.size)] = _4442
                    require return_data.size >= _4378 + (32 * _4442) + 32
                    t = _4314 + _4378 + 32
                    u = _4314 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _4442:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require idx < stor7.length
                    mem[0] = 7
                    if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                        require _4442 - 1 < _4442
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4442 - 1) + _4314 + ceil32(return_data.size) + 32]
                    else:
                        require idx < stor6.length
                        require idx < stor7.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                        require mem[96]
                        mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                        require 1 < mem[96]
                        mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                        require idx < stor5.length
                        require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                        mem[0] = 1
                        require _4442 - 1 < _4442
                        _6361 = mem[(32 * _4442 - 1) + _4314 + ceil32(return_data.size) + 32]
                        _6362 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _6361
                        mem[mem[64] + 36] = 64
                        _6397 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 100
                        while s < _6397:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _6362 + (32 * _6397) + -mem[64] + 96]
                        if ext_call.success:
                            _6938 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _7002 = mem[_6938]
                            require mem[_6938] <= test266151307()
                            require _6938 + mem[_6938] + 31 < _6938 + return_data.size
                            _7066 = mem[_6938 + mem[_6938]]
                            require mem[_6938 + mem[_6938]] <= test266151307()
                            require (32 * mem[_6938 + mem[_6938]]) + 32 >= 0 and _6938 + ceil32(return_data.size) + (32 * mem[_6938 + mem[_6938]]) + 32 <= test266151307()
                            mem[64] = _6938 + ceil32(return_data.size) + (32 * mem[_6938 + mem[_6938]]) + 32
                            mem[_6938 + ceil32(return_data.size)] = _7066
                            require return_data.size >= _7002 + (32 * _7066) + 32
                            t = _6938 + _7002 + 32
                            u = _6938 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _7066:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            require _7066 - 1 < _7066
                            require idx < mem[(131 * stor4.length) + 320]
                            mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7066 - 1) + _6938 + ceil32(return_data.size) + 32]
                idx = idx + 1
                continue 
            _2165 = mem[64]
            mem[mem[64]] = 160
            _2261 = mem[192]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
            mem[mem[64] + 32] = (32 * mem[192]) + 192
            _4249 = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2261) + 192] = mem[(32 * stor4.length) + 224]
            mem[mem[64] + (32 * _2261) + 224 len 32 * _4249] = mem[(32 * stor4.length) + 256 len 32 * _4249]
            mem[mem[64] + 64] = (32 * _2261) + (32 * _4249) + 224
            _5661 = mem[(64 * stor4.length) + 256]
            mem[_2165 + (32 * _2261) + (32 * _4249) + 224] = mem[(64 * stor4.length) + 256]
            mem[_2165 + (32 * _2261) + (32 * _4249) + 256 len 32 * _5661] = mem[(64 * stor4.length) + 288 len 32 * _5661]
            mem[_2165 + 96] = (32 * _2261) + (32 * _4249) + (32 * _5661) + 256
            _6873 = mem[(98 * stor4.length) + 288]
            mem[_2165 + (32 * _2261) + (32 * _4249) + (32 * _5661) + 256] = mem[(98 * stor4.length) + 288]
            mem[_2165 + (32 * _2261) + (32 * _4249) + (32 * _5661) + 288 len 32 * _6873] = mem[(98 * stor4.length) + 320 len 32 * _6873]
            mem[_2165 + 128] = (32 * _2261) + (32 * _4249) + (32 * _5661) + (32 * _6873) + 288
            _7389 = mem[(131 * stor4.length) + 320]
            mem[_2165 + (32 * _2261) + (32 * _4249) + (32 * _5661) + (32 * _6873) + 288] = mem[(131 * stor4.length) + 320]
            mem[_2165 + (32 * _2261) + (32 * _4249) + (32 * _5661) + (32 * _6873) + 320 len 32 * _7389] = mem[(131 * stor4.length) + 352 len 32 * _7389]
            return memory
              from mem[64]
               len _2165 + (32 * _2261) + (32 * _4249) + (32 * _5661) + (32 * _6873) + (32 * _7389) + -mem[64] + 320
        mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
        idx = 0
        while idx < stor4.length:
            require idx < mem[192]
            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require idx < mem[(32 * stor4.length) + 224]
            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require idx < mem[(64 * stor4.length) + 256]
            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require idx < mem[(98 * stor4.length) + 288]
            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
            _2874 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _2940 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _2940:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2874 + (32 * _2940) + -mem[64] + 96]
            if ext_call.success:
                _4316 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4380 = mem[_4316]
                require mem[_4316] <= test266151307()
                require _4316 + mem[_4316] + 31 < _4316 + return_data.size
                _4444 = mem[_4316 + mem[_4316]]
                require mem[_4316 + mem[_4316]] <= test266151307()
                require (32 * mem[_4316 + mem[_4316]]) + 32 >= 0 and _4316 + ceil32(return_data.size) + (32 * mem[_4316 + mem[_4316]]) + 32 <= test266151307()
                mem[64] = _4316 + ceil32(return_data.size) + (32 * mem[_4316 + mem[_4316]]) + 32
                mem[_4316 + ceil32(return_data.size)] = _4444
                require return_data.size >= _4380 + (32 * _4444) + 32
                t = _4316 + _4380 + 32
                u = _4316 + ceil32(return_data.size) + 32
                s = 0
                while s < _4444:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _4444 - 1 < _4444
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4444 - 1) + _4316 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _4444 - 1 < _4444
                    _6363 = mem[(32 * _4444 - 1) + _4316 + ceil32(return_data.size) + 32]
                    _6364 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6363
                    mem[mem[64] + 36] = 64
                    _6398 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _6398:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6364 + (32 * _6398) + -mem[64] + 96]
                    if ext_call.success:
                        _6940 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7004 = mem[_6940]
                        require mem[_6940] <= test266151307()
                        require _6940 + mem[_6940] + 31 < _6940 + return_data.size
                        _7068 = mem[_6940 + mem[_6940]]
                        require mem[_6940 + mem[_6940]] <= test266151307()
                        require (32 * mem[_6940 + mem[_6940]]) + 32 >= 0 and _6940 + ceil32(return_data.size) + (32 * mem[_6940 + mem[_6940]]) + 32 <= test266151307()
                        mem[64] = _6940 + ceil32(return_data.size) + (32 * mem[_6940 + mem[_6940]]) + 32
                        mem[_6940 + ceil32(return_data.size)] = _7068
                        require return_data.size >= _7004 + (32 * _7068) + 32
                        t = _6940 + _7004 + 32
                        u = _6940 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _7068:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _7068 - 1 < _7068
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7068 - 1) + _6940 + ceil32(return_data.size) + 32]
            idx = idx + 1
            continue 
        _2168 = mem[64]
        mem[mem[64]] = 160
        _2264 = mem[192]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        mem[mem[64] + 32] = (32 * mem[192]) + 192
        _4251 = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2264) + 192] = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2264) + 224 len 32 * _4251] = mem[(32 * stor4.length) + 256 len 32 * _4251]
        mem[mem[64] + 64] = (32 * _2264) + (32 * _4251) + 224
        _5662 = mem[(64 * stor4.length) + 256]
        mem[_2168 + (32 * _2264) + (32 * _4251) + 224] = mem[(64 * stor4.length) + 256]
        mem[_2168 + (32 * _2264) + (32 * _4251) + 256 len 32 * _5662] = mem[(64 * stor4.length) + 288 len 32 * _5662]
        mem[_2168 + 96] = (32 * _2264) + (32 * _4251) + (32 * _5662) + 256
        _6875 = mem[(98 * stor4.length) + 288]
        mem[_2168 + (32 * _2264) + (32 * _4251) + (32 * _5662) + 256] = mem[(98 * stor4.length) + 288]
        mem[_2168 + (32 * _2264) + (32 * _4251) + (32 * _5662) + 288 len 32 * _6875] = mem[(98 * stor4.length) + 320 len 32 * _6875]
        mem[_2168 + 128] = (32 * _2264) + (32 * _4251) + (32 * _5662) + (32 * _6875) + 288
        _7390 = mem[(131 * stor4.length) + 320]
        mem[_2168 + (32 * _2264) + (32 * _4251) + (32 * _5662) + (32 * _6875) + 288] = mem[(131 * stor4.length) + 320]
        mem[_2168 + (32 * _2264) + (32 * _4251) + (32 * _5662) + (32 * _6875) + 320 len 32 * _7390] = mem[(131 * stor4.length) + 352 len 32 * _7390]
        return memory
          from mem[64]
           len _2168 + (32 * _2264) + (32 * _4251) + (32 * _5662) + (32 * _6875) + (32 * _7390) + -mem[64] + 320
    mem[(98 * stor4.length) + 320 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    require stor4.length <= test266151307()
    mem[(131 * stor4.length) + 320] = stor4.length
    mem[64] = (164 * stor4.length) + 352
    if not stor4.length:
        idx = 0
        while idx < stor4.length:
            require idx < mem[192]
            mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
            require idx < stor5.length
            require idx < mem[(32 * stor4.length) + 224]
            mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
            require idx < stor6.length
            require idx < mem[(64 * stor4.length) + 256]
            mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
            require idx < stor7.length
            require idx < mem[(98 * stor4.length) + 288]
            mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
            _2877 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            _2942 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _2942:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
            staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2877 + (32 * _2942) + -mem[64] + 96]
            if ext_call.success:
                _4318 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4382 = mem[_4318]
                require mem[_4318] <= test266151307()
                require _4318 + mem[_4318] + 31 < _4318 + return_data.size
                _4446 = mem[_4318 + mem[_4318]]
                require mem[_4318 + mem[_4318]] <= test266151307()
                require (32 * mem[_4318 + mem[_4318]]) + 32 >= 0 and _4318 + ceil32(return_data.size) + (32 * mem[_4318 + mem[_4318]]) + 32 <= test266151307()
                mem[64] = _4318 + ceil32(return_data.size) + (32 * mem[_4318 + mem[_4318]]) + 32
                mem[_4318 + ceil32(return_data.size)] = _4446
                require return_data.size >= _4382 + (32 * _4446) + 32
                t = _4318 + _4382 + 32
                u = _4318 + ceil32(return_data.size) + 32
                s = 0
                while s < _4446:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require idx < stor7.length
                mem[0] = 7
                if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                    require _4446 - 1 < _4446
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4446 - 1) + _4318 + ceil32(return_data.size) + 32]
                else:
                    require idx < stor6.length
                    require idx < stor7.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                    require mem[96]
                    mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                    require 1 < mem[96]
                    mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                    require idx < stor5.length
                    require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                    mem[0] = 1
                    require _4446 - 1 < _4446
                    _6365 = mem[(32 * _4446 - 1) + _4318 + ceil32(return_data.size) + 32]
                    _6366 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _6365
                    mem[mem[64] + 36] = 64
                    _6399 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _6399:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                    staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _6366 + (32 * _6399) + -mem[64] + 96]
                    if ext_call.success:
                        _6942 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _7006 = mem[_6942]
                        require mem[_6942] <= test266151307()
                        require _6942 + mem[_6942] + 31 < _6942 + return_data.size
                        _7070 = mem[_6942 + mem[_6942]]
                        require mem[_6942 + mem[_6942]] <= test266151307()
                        require (32 * mem[_6942 + mem[_6942]]) + 32 >= 0 and _6942 + ceil32(return_data.size) + (32 * mem[_6942 + mem[_6942]]) + 32 <= test266151307()
                        mem[64] = _6942 + ceil32(return_data.size) + (32 * mem[_6942 + mem[_6942]]) + 32
                        mem[_6942 + ceil32(return_data.size)] = _7070
                        require return_data.size >= _7006 + (32 * _7070) + 32
                        t = _6942 + _7006 + 32
                        u = _6942 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _7070:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require _7070 - 1 < _7070
                        require idx < mem[(131 * stor4.length) + 320]
                        mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7070 - 1) + _6942 + ceil32(return_data.size) + 32]
            idx = idx + 1
            continue 
        _2171 = mem[64]
        mem[mem[64]] = 160
        _2267 = mem[192]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
        mem[mem[64] + 32] = (32 * mem[192]) + 192
        _4253 = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2267) + 192] = mem[(32 * stor4.length) + 224]
        mem[mem[64] + (32 * _2267) + 224 len 32 * _4253] = mem[(32 * stor4.length) + 256 len 32 * _4253]
        mem[mem[64] + 64] = (32 * _2267) + (32 * _4253) + 224
        _5663 = mem[(64 * stor4.length) + 256]
        mem[_2171 + (32 * _2267) + (32 * _4253) + 224] = mem[(64 * stor4.length) + 256]
        mem[_2171 + (32 * _2267) + (32 * _4253) + 256 len 32 * _5663] = mem[(64 * stor4.length) + 288 len 32 * _5663]
        mem[_2171 + 96] = (32 * _2267) + (32 * _4253) + (32 * _5663) + 256
        _6877 = mem[(98 * stor4.length) + 288]
        mem[_2171 + (32 * _2267) + (32 * _4253) + (32 * _5663) + 256] = mem[(98 * stor4.length) + 288]
        mem[_2171 + (32 * _2267) + (32 * _4253) + (32 * _5663) + 288 len 32 * _6877] = mem[(98 * stor4.length) + 320 len 32 * _6877]
        mem[_2171 + 128] = (32 * _2267) + (32 * _4253) + (32 * _5663) + (32 * _6877) + 288
        _7391 = mem[(131 * stor4.length) + 320]
        mem[_2171 + (32 * _2267) + (32 * _4253) + (32 * _5663) + (32 * _6877) + 288] = mem[(131 * stor4.length) + 320]
        mem[_2171 + (32 * _2267) + (32 * _4253) + (32 * _5663) + (32 * _6877) + 320 len 32 * _7391] = mem[(131 * stor4.length) + 352 len 32 * _7391]
        return memory
          from mem[64]
           len _2171 + (32 * _2267) + (32 * _4253) + (32 * _5663) + (32 * _6877) + (32 * _7391) + -mem[64] + 320
    mem[(131 * stor4.length) + 352 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        require idx < mem[192]
        mem[(32 * idx) + 224] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor5.length
        require idx < mem[(32 * stor4.length) + 224]
        mem[(32 * idx) + (32 * stor4.length) + 256] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        require idx < stor6.length
        require idx < mem[(64 * stor4.length) + 256]
        mem[(32 * idx) + (64 * stor4.length) + 288] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]
        require idx < stor7.length
        require idx < mem[(98 * stor4.length) + 288]
        mem[(32 * idx) + (98 * stor4.length) + 320] = stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]
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
        _2880 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        _2944 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _2944:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0))
        staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2880 + (32 * _2944) + -mem[64] + 96]
        if ext_call.success:
            _4320 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4384 = mem[_4320]
            require mem[_4320] <= test266151307()
            require _4320 + mem[_4320] + 31 < _4320 + return_data.size
            _4448 = mem[_4320 + mem[_4320]]
            require mem[_4320 + mem[_4320]] <= test266151307()
            require (32 * mem[_4320 + mem[_4320]]) + 32 >= 0 and _4320 + ceil32(return_data.size) + (32 * mem[_4320 + mem[_4320]]) + 32 <= test266151307()
            mem[64] = _4320 + ceil32(return_data.size) + (32 * mem[_4320 + mem[_4320]]) + 32
            mem[_4320 + ceil32(return_data.size)] = _4448
            require return_data.size >= _4384 + (32 * _4448) + 32
            t = _4320 + _4384 + 32
            u = _4320 + ceil32(return_data.size) + 32
            s = 0
            while s < _4448:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require idx < stor7.length
            mem[0] = 7
            if 99 == stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                require _4448 - 1 < _4448
                require idx < mem[(131 * stor4.length) + 320]
                mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _4448 - 1) + _4320 + ceil32(return_data.size) + 32]
            else:
                require idx < stor6.length
                require idx < stor7.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)] < tokens.length
                require mem[96]
                mem[128] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]].field_0)
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)] < tokens.length
                require 1 < mem[96]
                mem[160] = address(tokens[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]].field_0)
                require idx < stor5.length
                require stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)] < contracts.length
                mem[0] = 1
                require _4448 - 1 < _4448
                _6367 = mem[(32 * _4448 - 1) + _4320 + ceil32(return_data.size) + 32]
                _6368 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _6367
                mem[mem[64] + 36] = 64
                _6400 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _6400:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0))
                staticcall address(contracts[stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]].field_0).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _6368 + (32 * _6400) + -mem[64] + 96]
                if ext_call.success:
                    _6944 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7008 = mem[_6944]
                    require mem[_6944] <= test266151307()
                    require _6944 + mem[_6944] + 31 < _6944 + return_data.size
                    _7072 = mem[_6944 + mem[_6944]]
                    require mem[_6944 + mem[_6944]] <= test266151307()
                    require (32 * mem[_6944 + mem[_6944]]) + 32 >= 0 and _6944 + ceil32(return_data.size) + (32 * mem[_6944 + mem[_6944]]) + 32 <= test266151307()
                    mem[64] = _6944 + ceil32(return_data.size) + (32 * mem[_6944 + mem[_6944]]) + 32
                    mem[_6944 + ceil32(return_data.size)] = _7072
                    require return_data.size >= _7008 + (32 * _7072) + 32
                    t = _6944 + _7008 + 32
                    u = _6944 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7072:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require _7072 - 1 < _7072
                    require idx < mem[(131 * stor4.length) + 320]
                    mem[(32 * idx) + (131 * stor4.length) + 352] = mem[(32 * _7072 - 1) + _6944 + ceil32(return_data.size) + 32]
        idx = idx + 1
        continue 
    _2174 = mem[64]
    mem[mem[64]] = 160
    _2270 = mem[192]
    mem[mem[64] + 160] = mem[192]
    mem[mem[64] + 192 len 32 * mem[192]] = mem[224 len 32 * mem[192]]
    mem[mem[64] + 32] = (32 * mem[192]) + 192
    _4255 = mem[(32 * stor4.length) + 224]
    mem[mem[64] + (32 * _2270) + 192] = mem[(32 * stor4.length) + 224]
    mem[mem[64] + (32 * _2270) + 224 len 32 * _4255] = mem[(32 * stor4.length) + 256 len 32 * _4255]
    mem[mem[64] + 64] = (32 * _2270) + (32 * _4255) + 224
    _5664 = mem[(64 * stor4.length) + 256]
    mem[_2174 + (32 * _2270) + (32 * _4255) + 224] = mem[(64 * stor4.length) + 256]
    mem[_2174 + (32 * _2270) + (32 * _4255) + 256 len 32 * _5664] = mem[(64 * stor4.length) + 288 len 32 * _5664]
    mem[_2174 + 96] = (32 * _2270) + (32 * _4255) + (32 * _5664) + 256
    _6879 = mem[(98 * stor4.length) + 288]
    mem[_2174 + (32 * _2270) + (32 * _4255) + (32 * _5664) + 256] = mem[(98 * stor4.length) + 288]
    mem[_2174 + (32 * _2270) + (32 * _4255) + (32 * _5664) + 288 len 32 * _6879] = mem[(98 * stor4.length) + 320 len 32 * _6879]
    mem[_2174 + 128] = (32 * _2270) + (32 * _4255) + (32 * _5664) + (32 * _6879) + 288
    _7392 = mem[(131 * stor4.length) + 320]
    mem[_2174 + (32 * _2270) + (32 * _4255) + (32 * _5664) + (32 * _6879) + 288] = mem[(131 * stor4.length) + 320]
    mem[_2174 + (32 * _2270) + (32 * _4255) + (32 * _5664) + (32 * _6879) + 320 len 32 * _7392] = mem[(131 * stor4.length) + 352 len 32 * _7392]
    return memory
      from mem[64]
       len _2174 + (32 * _2270) + (32 * _4255) + (32 * _5664) + (32 * _6879) + (32 * _7392) + -mem[64] + 320
}



}
