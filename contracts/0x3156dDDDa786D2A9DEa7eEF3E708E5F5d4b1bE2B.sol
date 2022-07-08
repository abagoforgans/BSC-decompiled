contract main {




// =====================  Runtime code  =====================


const PCT_BASE = 10^18


address owner;
address HEROAddress;
address EXCHANGEAddress;
address feeRecipientAddress;
array of uint256 stor4;
array of uint256 stor5;
mapping of uint256 stor6;
mapping of struct sub_4e5919ef;
mapping of uint256 stor8;
mapping of struct stor9;

function HERO() payable {
    return HEROAddress
}

function feeRecipient() payable {
    return feeRecipientAddress
}

function sub_4e5919ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4e5919ef[arg1].field_0, sub_4e5919ef[arg1].field_256
}

function owner() payable {
    return owner
}

function EXCHANGE() payable {
    return EXCHANGEAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4745aee8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[arg1][2][arg2].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    stor9[arg1][2][arg2].field_0 += arg3
    if stor9[arg1].field_256 > -arg3 - 1:
        revert with 'NH{q', 17
    stor9[arg1].field_256 += arg3
}

function put(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(HEROAddress)
    staticcall HEROAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only Owner'
    if arg2 <= 0:
        revert with 0, 'Price Invalid'
    require ext_code.size(HEROAddress)
    call HEROAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4e5919ef[arg1].field_0 = msg.sender
    sub_4e5919ef[arg1].field_256 = arg2
    if not stor6[arg1]:
        stor5.length++
        stor5[stor5.length] = arg1
        stor6[arg1] = stor5.length
}

function pull(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_4e5919ef[arg1].field_0 != msg.sender:
        revert with 0, 'Only Creator'
    require ext_code.size(HEROAddress)
    call HEROAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4e5919ef[arg1].field_0 = 0
    sub_4e5919ef[arg1].field_256 = 0
    if stor6[arg1]:
        if stor6[arg1] < 1:
            revert with 'NH{q', 17
        if stor5.length < 1:
            revert with 'NH{q', 17
        if stor5.length - 1 != stor6[arg1] - 1:
            if stor5.length - 1 >= stor5.length:
                revert with 'NH{q', 50
            if stor6[arg1] - 1 >= stor5.length:
                revert with 'NH{q', 50
            stor5[stor6[arg1]] = stor5[stor5.length]
            stor6[stor5[stor5.length]] = stor6[arg1]
        if not stor5.length:
            revert with 'NH{q', 49
        stor5[stor5.length] = 0
        stor5.length--
        stor6[arg1] = 0
}

function removeOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(HEROAddress)
    staticcall HEROAddress.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if stor6[arg1]:
            if stor6[arg1] < 1:
                revert with 'NH{q', 17
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor5.length - 1 != stor6[arg1] - 1:
                if stor5.length - 1 >= stor5.length:
                    revert with 'NH{q', 50
                if stor6[arg1] - 1 >= stor5.length:
                    revert with 'NH{q', 50
                stor5[stor6[arg1]] = stor5[stor5.length]
                stor6[stor5[stor5.length]] = stor6[arg1]
            if not stor5.length:
                revert with 'NH{q', 49
            stor5[stor5.length] = 0
            stor5.length--
            stor6[arg1] = 0
        sub_4e5919ef[arg1].field_0 = 0
        sub_4e5919ef[arg1].field_256 = 0
}

function checkList() payable {
    mem[64] = 96
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[mem[64] + 4] = stor5[idx]
        require ext_code.size(HEROAddress)
        staticcall HEROAddress.exists(uint256 arg1) with:
                gas gas_remaining wei
               args stor5[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == bool(mem[_20])
        if not mem[_20]:
            if stor6[stor5[idx]]:
                if stor6[stor5[idx]] < 1:
                    revert with 'NH{q', 17
                if stor5.length < 1:
                    revert with 'NH{q', 17
                if stor5.length - 1 != stor6[stor5[idx]] - 1:
                    if stor5.length - 1 >= stor5.length:
                        revert with 'NH{q', 50
                    if stor6[stor5[idx]] - 1 >= stor5.length:
                        revert with 'NH{q', 50
                    stor5[stor6[stor5[idx]]] = stor5[stor5.length]
                    stor6[stor5[stor5.length]] = stor6[stor5[idx]]
                if not stor5.length:
                    revert with 'NH{q', 49
                stor5[stor5.length] = 0
                stor5.length--
                stor6[stor5[idx]] = 0
            mem[0] = stor5[idx]
            mem[32] = 7
            sub_4e5919ef[stor5[idx]].field_0 = 0
            sub_4e5919ef[stor5[idx]].field_256 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function exchange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_4e5919ef[arg1].field_256 <= 0:
        revert with 0, 'Order Not Exists'
    if sub_4e5919ef[arg1].field_256 and 95 > -1 / sub_4e5919ef[arg1].field_256:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = sub_4e5919ef[arg1].field_0
    mem[164] = 95 * sub_4e5919ef[arg1].field_256 / 100
    require ext_code.size(EXCHANGEAddress)
    call EXCHANGEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_4e5919ef[arg1].field_0, 95 * sub_4e5919ef[arg1].field_256 / 100
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer Invalid'
    mem[0] = arg1
    mem[32] = 7
    if sub_4e5919ef[arg1].field_256 and 5 > -1 / sub_4e5919ef[arg1].field_256:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = feeRecipientAddress
    mem[ceil32(return_data.size) + 164] = 5 * sub_4e5919ef[arg1].field_256 / 100
    require ext_code.size(EXCHANGEAddress)
    call EXCHANGEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeRecipientAddress, 5 * sub_4e5919ef[arg1].field_256 / 100
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer Invalid'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = arg1
    require ext_code.size(HEROAddress)
    call HEROAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x3daff66b00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(HEROAddress)
    staticcall HEROAddress.0x3daff66b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _24 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _25 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _24 + 128
    s = (4 * ceil32(return_data.size)) + 128
    while idx < (2 * ceil32(return_data.size)) + _24 + (32 * _25) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= _25:
        revert with 'NH{q', 50
    if 1 >= _25:
        revert with 'NH{q', 50
    emit 0xe19d80f6: arg1, mem[(4 * ceil32(return_data.size)) + 128], mem[(4 * ceil32(return_data.size)) + 160], sub_4e5919ef[arg1].field_256, sub_4e5919ef[arg1].field_0, msg.sender
    sub_4e5919ef[arg1].field_0 = 0
    sub_4e5919ef[arg1].field_256 = 0
    if stor6[arg1]:
        if stor6[arg1] < 1:
            revert with 'NH{q', 17
        if stor5.length < 1:
            revert with 'NH{q', 17
        if stor5.length - 1 != stor6[arg1] - 1:
            if stor5.length - 1 >= stor5.length:
                revert with 'NH{q', 50
            if stor6[arg1] - 1 >= stor5.length:
                revert with 'NH{q', 50
            stor5[stor6[arg1]] = stor5[stor5.length]
            stor6[stor5[stor5.length]] = stor6[arg1]
        if not stor5.length:
            revert with 'NH{q', 49
        stor5[stor5.length] = 0
        stor5.length--
        stor6[arg1] = 0
}

function buy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tx.origin != msg.sender:
        revert with 0, 'The caller is not an EOA'
    if stor9[arg1].field_0 and arg2 > -1 / stor9[arg1].field_0:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = feeRecipientAddress
    mem[164] = stor9[arg1].field_0 * arg2
    require ext_code.size(EXCHANGEAddress)
    call EXCHANGEAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeRecipientAddress, stor9[arg1].field_0 * arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer Invalid'
    mem[0] = arg1
    mem[32] = 9
    if stor9[arg1].field_256 < arg2:
        revert with 0, 'Insufficient quantity left'
    idx = 0
    while idx < arg2:
        _137 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[0] = arg1
        mem[32] = 9
        if stor9[arg1].field_256 > -2:
            revert with 'NH{q', 17
        if block.timestamp > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 128] = block.timestamp + idx
        mem[mem[64] + 160] = address(msg.sender)
        mem[mem[64] + 96] = 52
        mem[64] = mem[64] + 180
        _142 = sha3(mem[_137 + 128 len 52])
        if not stor9[arg1].field_256 + 1:
            revert with 'NH{q', 18
        s = 0
        t = 0
        while s < 5:
            mem[0] = s
            mem[32] = sha3(arg1, 9) + 2
            if t > -stor9[arg1][2][s].field_0 - 1:
                revert with 'NH{q', 17
            if _142 % stor9[arg1].field_256 + 1 > t + stor9[arg1][2][s].field_0:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t + stor9[arg1][2][s].field_0
                continue 
            mem[0] = s
            mem[32] = 8
            if block.timestamp > -idx - 1:
                revert with 'NH{q', 17
            _208 = mem[64]
            mem[mem[64] + 32] = block.timestamp + idx
            mem[mem[64] + 64] = address(msg.sender)
            _225 = mem[64]
            mem[mem[64]] = 52
            mem[64] = mem[64] + 84
            if not stor8[s]:
                revert with 'NH{q', 18
            if s != 4:
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                if 1 >= mem[_137]:
                    revert with 'NH{q', 50
                mem[_137 + 64] = sha3(mem[_225 + 32 len mem[_225]]) % stor8[s]
                mem[_137 + 32] = s
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                if s != 4:
                    if stor9[arg1].field_256 < 1:
                        revert with 'NH{q', 17
                    stor9[arg1].field_256--
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    if stor9[arg1][2][s].field_0 < 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    mem[0] = s
                    mem[32] = sha3(arg1, 9) + 2
                    stor9[arg1][2][s].field_0--
                    mem[_208 + 84] = 0xde836ebd00000000000000000000000000000000000000000000000000000000
                    mem[_208 + 88] = msg.sender
                    mem[_208 + 120] = 64
                    _260 = mem[_137]
                    mem[_208 + 152] = mem[_137]
                    s = 0
                    t = _137 + 32
                    u = _208 + 184
                    while s < _260:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(HEROAddress)
                    call HEROAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _208 + (32 * _260) + -mem[64] + 180]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if 1 >= mem[_137]:
                    revert with 'NH{q', 50
                _238 = mem[_137 + 64]
                if mem[_137 + 64] >= stor4.length:
                    revert with 'NH{q', 50
                mem[0] = 4
                if stor4[_238] < 1:
                    revert with 'NH{q', 17
                if 1 >= mem[_137]:
                    revert with 'NH{q', 50
                if mem[_137 + 64] >= stor4.length:
                    revert with 'NH{q', 50
                stor4[mem[_137 + 64]] = stor4[_238] - 1
                if stor9[arg1].field_256 < 1:
                    revert with 'NH{q', 17
                stor9[arg1].field_256--
                mem[0] = arg1
                mem[32] = 9
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                if stor9[arg1][2][s].field_0 < 1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 9
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                mem[0] = s
                mem[32] = sha3(arg1, 9) + 2
                stor9[arg1][2][s].field_0--
                mem[_208 + 84] = 0xde836ebd00000000000000000000000000000000000000000000000000000000
                mem[_208 + 88] = msg.sender
                mem[_208 + 120] = 64
                _268 = mem[_137]
                mem[_208 + 152] = mem[_137]
                s = 0
                t = _137 + 32
                u = _208 + 184
                while s < _268:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(HEROAddress)
                call HEROAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _208 + (32 * _268) + -mem[64] + 180]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _268 == -1:
                    revert with 'NH{q', 17
                s = _268 + 1
                continue 
            if sha3(mem[_225 + 32 len mem[_225]]) % stor8[s] >= stor4.length:
                revert with 'NH{q', 50
            mem[0] = 4
            if not stor4[var188001]:
                if var202003 > -2:
                    revert with 'NH{q', 17
                # nil
            else:
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                if 1 >= mem[_137]:
                    revert with 'NH{q', 50
                mem[_137 + 64] = var188007
                mem[_137 + 32] = s
                if 0 >= mem[_137]:
                    revert with 'NH{q', 50
                if s != 4:
                    if stor9[arg1].field_256 < 1:
                        revert with 'NH{q', 17
                    stor9[arg1].field_256--
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    if stor9[arg1][2][s].field_0 < 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    mem[0] = s
                    mem[32] = sha3(arg1, 9) + 2
                    stor9[arg1][2][s].field_0--
                    mem[_208 + 84] = 0xde836ebd00000000000000000000000000000000000000000000000000000000
                    mem[_208 + 88] = msg.sender
                    mem[_208 + 120] = 64
                    _358 = mem[_137]
                    mem[_208 + 152] = mem[_137]
                    s = 0
                    t = _137 + 32
                    u = _208 + 184
                    while s < _358:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(HEROAddress)
                    call HEROAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _208 + (32 * _358) + -mem[64] + 180]
                else:
                    if 1 >= mem[_137]:
                        revert with 'NH{q', 50
                    if var188007 >= stor4.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    if stor4[var188007] < 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_137]:
                        revert with 'NH{q', 50
                    if var188007 >= stor4.length:
                        revert with 'NH{q', 50
                    stor4[var188007]--
                    if stor9[arg1].field_256 < 1:
                        revert with 'NH{q', 17
                    stor9[arg1].field_256--
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    if stor9[arg1][2][s].field_0 < 1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 9
                    if 0 >= mem[_137]:
                        revert with 'NH{q', 50
                    mem[0] = s
                    mem[32] = sha3(arg1, 9) + 2
                    stor9[arg1][2][s].field_0--
                    mem[_208 + 84] = 0xde836ebd00000000000000000000000000000000000000000000000000000000
                    mem[_208 + 88] = msg.sender
                    mem[_208 + 120] = 64
                    _380 = mem[_137]
                    mem[_208 + 152] = mem[_137]
                    s = 0
                    t = _137 + 32
                    u = _208 + 184
                    while s < _380:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(HEROAddress)
                    call HEROAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _208 + (32 * _380) + -mem[64] + 180]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        if 0 >= mem[_137]:
            revert with 'NH{q', 50
        if 1 >= mem[_137]:
            revert with 'NH{q', 50
        mem[_137 + 64] = 0
        mem[_137 + 32] = 0
        if 0 >= mem[_137]:
            revert with 'NH{q', 50
        if stor9[arg1].field_256 < 1:
            revert with 'NH{q', 17
        stor9[arg1].field_256--
        mem[0] = arg1
        mem[32] = 9
        if 0 >= mem[_137]:
            revert with 'NH{q', 50
        if stor9[arg1][2][0].field_0 < 1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 9
        if 0 >= mem[_137]:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[32] = sha3(arg1, 9) + 2
        stor9[arg1][2][0].field_0--
        _213 = mem[64]
        mem[mem[64]] = 0xde836ebd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        _219 = mem[_137]
        mem[mem[64] + 68] = mem[_137]
        s = 0
        t = _137 + 32
        u = mem[64] + 100
        while s < _219:
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(HEROAddress)
        call HEROAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _213 + (32 * _219) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_56562328(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor5.length
    mem[64] = (32 * stor5.length) + 128
    if not stor5.length:
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            mem[mem[64] + 4] = stor5[idx]
            require ext_code.size(HEROAddress)
            staticcall HEROAddress.exists(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor5[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_130] == bool(mem[_130])
            if mem[_130]:
                if not address(arg1):
                    mem[mem[64]] = 0x3daff66b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor5[idx]
                    require ext_code.size(HEROAddress)
                    staticcall HEROAddress.0x3daff66b with:
                            gas gas_remaining wei
                           args stor5[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _155 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _158 = mem[_155]
                    require mem[_155] <= test266151307()
                    require _155 + mem[_155] + 31 < _155 + return_data.size
                    _163 = mem[_155 + mem[_155]]
                    if mem[_155 + mem[_155]] > test266151307():
                        revert with 'NH{q', 65
                    if _155 + ceil32(return_data.size) + floor32(mem[_155 + mem[_155]]) + 1 > test266151307() or floor32(mem[_155 + mem[_155]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _155 + ceil32(return_data.size) + floor32(mem[_155 + mem[_155]]) + 1
                    mem[_155 + ceil32(return_data.size)] = _163
                    require _158 + (32 * _163) + 32 <= return_data.size
                    s = _155 + _158 + 32
                    t = _155 + ceil32(return_data.size) + 32
                    while s < _155 + _158 + (32 * _163) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    _241 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_241] = stor5[idx]
                    if 0 >= _163:
                        revert with 'NH{q', 50
                    mem[_241 + 32] = mem[_155 + ceil32(return_data.size) + 32]
                    if 1 >= _163:
                        revert with 'NH{q', 50
                    mem[_241 + 64] = mem[_155 + ceil32(return_data.size) + 64]
                    if 2 >= _163:
                        revert with 'NH{q', 50
                    mem[_241 + 96] = mem[_155 + ceil32(return_data.size) + 96]
                    if 3 >= _163:
                        revert with 'NH{q', 50
                    mem[_241 + 128] = mem[_155 + ceil32(return_data.size) + 128]
                    mem[0] = stor5[idx]
                    mem[32] = 7
                    _261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_261] = sub_4e5919ef[stor5[idx]].field_0
                    mem[_261 + 32] = sub_4e5919ef[stor5[idx]].field_256
                    mem[_241 + 160] = _261
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = _241
                else:
                    mem[0] = stor5[idx]
                    mem[32] = 7
                    if sub_4e5919ef[stor5[idx]].field_0 == address(arg1):
                        mem[mem[64]] = 0x3daff66b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor5[idx]
                        require ext_code.size(HEROAddress)
                        staticcall HEROAddress.0x3daff66b with:
                                gas gas_remaining wei
                               args stor5[idx]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _157 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _161 = mem[_157]
                        require mem[_157] <= test266151307()
                        require _157 + mem[_157] + 31 < _157 + return_data.size
                        _165 = mem[_157 + mem[_157]]
                        if mem[_157 + mem[_157]] > test266151307():
                            revert with 'NH{q', 65
                        if _157 + ceil32(return_data.size) + floor32(mem[_157 + mem[_157]]) + 1 > test266151307() or floor32(mem[_157 + mem[_157]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _157 + ceil32(return_data.size) + floor32(mem[_157 + mem[_157]]) + 1
                        mem[_157 + ceil32(return_data.size)] = _165
                        require _161 + (32 * _165) + 32 <= return_data.size
                        s = _157 + _161 + 32
                        t = _157 + ceil32(return_data.size) + 32
                        while s < _157 + _161 + (32 * _165) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        _243 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_243] = stor5[idx]
                        if 0 >= _165:
                            revert with 'NH{q', 50
                        mem[_243 + 32] = mem[_157 + ceil32(return_data.size) + 32]
                        if 1 >= _165:
                            revert with 'NH{q', 50
                        mem[_243 + 64] = mem[_157 + ceil32(return_data.size) + 64]
                        if 2 >= _165:
                            revert with 'NH{q', 50
                        mem[_243 + 96] = mem[_157 + ceil32(return_data.size) + 96]
                        if 3 >= _165:
                            revert with 'NH{q', 50
                        mem[_243 + 128] = mem[_157 + ceil32(return_data.size) + 128]
                        mem[0] = stor5[idx]
                        mem[32] = 7
                        _264 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_264] = sub_4e5919ef[stor5[idx]].field_0
                        mem[_264 + 32] = sub_4e5919ef[stor5[idx]].field_256
                        mem[_243 + 160] = _264
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = _243
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[64] = mem[64] + 32
        mem[_119 + 32] = 32
        _124 = mem[_119]
        mem[_119 + 64] = mem[_119]
        idx = 0
        s = _119 + 32
        t = _119 + 96
        while idx < mem[_119]:
            _235 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_235 + 32]
            mem[t + 64] = mem[_235 + 64]
            mem[t + 96] = mem[_235 + 96]
            mem[t + 128] = mem[_235 + 128]
            _278 = mem[_235 + 160]
            mem[t + 160] = mem[mem[_235 + 160] + 12 len 20]
            mem[t + 192] = mem[_278 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _119 + (224 * _124) + -mem[64] + 96
    mem[(32 * stor5.length) + 128] = 0
    mem[(32 * stor5.length) + 160] = 0
    mem[(32 * stor5.length) + 192] = 0
    mem[(32 * stor5.length) + 224] = 0
    mem[(32 * stor5.length) + 256] = 0
    mem[64] = (32 * stor5.length) + 384
    mem[(32 * stor5.length) + 320] = 0
    mem[(32 * stor5.length) + 352] = 0
    mem[(32 * stor5.length) + 288] = (32 * stor5.length) + 320
    mem[var28002] = (32 * stor5.length) + 128
    s = (32 * stor5.length) + 288
    s = (32 * stor5.length) + 128
    s = var28002
    idx = var28003
    while idx - 1:
        _331 = mem[64]
        mem[64] = mem[64] + 192
        mem[_331] = 0
        mem[_331 + 32] = 0
        mem[_331 + 64] = 0
        mem[_331 + 96] = 0
        mem[_331 + 128] = 0
        mem[64] = mem[64] + 64
        mem[(32 * stor5.length) + 320] = 0
        mem[(32 * stor5.length) + 352] = 0
        mem[_331 + 160] = (32 * stor5.length) + 320
        mem[s + 32] = _331
        s = _331 + 160
        s = _331
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[mem[64] + 4] = stor5[idx]
        require ext_code.size(HEROAddress)
        staticcall HEROAddress.exists(uint256 arg1) with:
                gas gas_remaining wei
               args stor5[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_395] == bool(mem[_395])
        if mem[_395]:
            if not address(arg1):
                mem[mem[64]] = 0x3daff66b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = stor5[idx]
                require ext_code.size(HEROAddress)
                staticcall HEROAddress.0x3daff66b with:
                        gas gas_remaining wei
                       args stor5[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_409]
                require mem[_409] <= test266151307()
                require _409 + mem[_409] + 31 < _409 + return_data.size
                _415 = mem[_409 + mem[_409]]
                if mem[_409 + mem[_409]] > test266151307():
                    revert with 'NH{q', 65
                if _409 + ceil32(return_data.size) + floor32(mem[_409 + mem[_409]]) + 1 > test266151307() or floor32(mem[_409 + mem[_409]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _409 + ceil32(return_data.size) + floor32(mem[_409 + mem[_409]]) + 1
                mem[_409 + ceil32(return_data.size)] = _415
                require _411 + (32 * _415) + 32 <= return_data.size
                s = _409 + _411 + 32
                t = _409 + ceil32(return_data.size) + 32
                while s < _409 + _411 + (32 * _415) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                _451 = mem[64]
                mem[64] = mem[64] + 192
                mem[_451] = stor5[idx]
                if 0 >= _415:
                    revert with 'NH{q', 50
                mem[_451 + 32] = mem[_409 + ceil32(return_data.size) + 32]
                if 1 >= _415:
                    revert with 'NH{q', 50
                mem[_451 + 64] = mem[_409 + ceil32(return_data.size) + 64]
                if 2 >= _415:
                    revert with 'NH{q', 50
                mem[_451 + 96] = mem[_409 + ceil32(return_data.size) + 96]
                if 3 >= _415:
                    revert with 'NH{q', 50
                mem[_451 + 128] = mem[_409 + ceil32(return_data.size) + 128]
                mem[0] = stor5[idx]
                mem[32] = 7
                _470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_470] = sub_4e5919ef[stor5[idx]].field_0
                mem[_470 + 32] = sub_4e5919ef[stor5[idx]].field_256
                mem[_451 + 160] = _470
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = _451
            else:
                mem[0] = stor5[idx]
                mem[32] = 7
                if sub_4e5919ef[stor5[idx]].field_0 == address(arg1):
                    mem[mem[64]] = 0x3daff66b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor5[idx]
                    require ext_code.size(HEROAddress)
                    staticcall HEROAddress.0x3daff66b with:
                            gas gas_remaining wei
                           args stor5[idx]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _410 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _413 = mem[_410]
                    require mem[_410] <= test266151307()
                    require _410 + mem[_410] + 31 < _410 + return_data.size
                    _416 = mem[_410 + mem[_410]]
                    if mem[_410 + mem[_410]] > test266151307():
                        revert with 'NH{q', 65
                    if _410 + ceil32(return_data.size) + floor32(mem[_410 + mem[_410]]) + 1 > test266151307() or floor32(mem[_410 + mem[_410]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _410 + ceil32(return_data.size) + floor32(mem[_410 + mem[_410]]) + 1
                    mem[_410 + ceil32(return_data.size)] = _416
                    require _413 + (32 * _416) + 32 <= return_data.size
                    s = _410 + _413 + 32
                    t = _410 + ceil32(return_data.size) + 32
                    while s < _410 + _413 + (32 * _416) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    _453 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_453] = stor5[idx]
                    if 0 >= _416:
                        revert with 'NH{q', 50
                    mem[_453 + 32] = mem[_410 + ceil32(return_data.size) + 32]
                    if 1 >= _416:
                        revert with 'NH{q', 50
                    mem[_453 + 64] = mem[_410 + ceil32(return_data.size) + 64]
                    if 2 >= _416:
                        revert with 'NH{q', 50
                    mem[_453 + 96] = mem[_410 + ceil32(return_data.size) + 96]
                    if 3 >= _416:
                        revert with 'NH{q', 50
                    mem[_453 + 128] = mem[_410 + ceil32(return_data.size) + 128]
                    mem[0] = stor5[idx]
                    mem[32] = 7
                    _473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_473] = sub_4e5919ef[stor5[idx]].field_0
                    mem[_473 + 32] = sub_4e5919ef[stor5[idx]].field_256
                    mem[_453 + 160] = _473
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[128] = _453
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _389 = mem[64]
    mem[64] = mem[64] + 32
    mem[_389 + 32] = 32
    _393 = mem[_389]
    mem[_389 + 64] = mem[_389]
    idx = 0
    s = _389 + 32
    t = _389 + 96
    while idx < mem[_389]:
        _446 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_446 + 32]
        mem[t + 64] = mem[_446 + 64]
        mem[t + 96] = mem[_446 + 96]
        mem[t + 128] = mem[_446 + 128]
        _479 = mem[_446 + 160]
        mem[t + 160] = mem[mem[_446 + 160] + 12 len 20]
        mem[t + 192] = mem[_479 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _389 + (224 * _393) + -mem[64] + 96
}



}
