contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c85a679(?)
#
address governanceAddress;
array of uint8 stor1;
array of uint256 stor2;
array of uint8 stor3;
address nFTTokenAddress;
address taxesAddress;
address sub_980389e0Address;
address sub_9caa4932Address;
array of struct sub_db4ff64c;
mapping of struct stor9;
array of struct sub_8e47a4d7;
mapping of uint8 stor11;
mapping of struct stor12;
mapping of struct sub_6e0bf5a2;
mapping of struct stor14;
mapping of address stor99;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
}

function governance() payable {
    return governanceAddress
}

function off() payable {
    return uint8(stor2.length)
}

function sub_6d466ed7(?) payable {
    return stor3.length
}

function sub_6e0bf5a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_6e0bf5a2[arg1[all]].field_0, 
           uint256(sub_6e0bf5a2[arg1[all]].field_256),
           uint256(sub_6e0bf5a2[arg1[all]].field_512),
           bool(uint8(sub_6e0bf5a2[arg1[all]].field_768))
}

function taxes() payable {
    return taxesAddress
}

function sub_8e47a4d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8e47a4d7.length
    return sub_8e47a4d7[arg1].field_0
}

function sub_980389e0(?) payable {
    return sub_980389e0Address
}

function sub_9caa4932(?) payable {
    return sub_9caa4932Address
}

function NFTToken() payable {
    return nFTTokenAddress
}

function sub_db4ff64c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_db4ff64c.length
    return uint256(sub_db4ff64c[arg1].field_0)
}

function sub_eaa1a3ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function delAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'not setter'
    uint8(stor1[address(arg1)]) = 0
    emit 0x6039ed77: arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'not setter'
    uint8(stor1[address(arg1)]) = 1
    emit _addAdmin(arg1);
}

function setOfficial(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    sub_980389e0Address = arg1
    emit 0x7c5b4f62: arg1
}

function sub_bd0cabb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    taxesAddress = address(arg1)
    emit 0x4c58f1f5: address(arg1)
}

function sub_1cf475df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    uint8(stor2.length) = uint8(arg1)
    emit 0x29660c70: uint8(arg1)
}

function sub_b5608f36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    sub_9caa4932Address = address(arg1)
    emit 0x813bfe87: sub_9caa4932Address
}

function sub_90d8c031(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x2c1ee4ba: address(arg2), arg3, address(arg1)
}

function sub_733a174d(?) payable {
    if sub_db4ff64c.length:
        mem[128] = uint256(sub_db4ff64c.field_0)
        idx = 128
        s = 0
        while (32 * sub_db4ff64c.length) + 96 > idx:
            mem[idx + 32] = uint256(sub_db4ff64c[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_db4ff64c.length, data=mem[128 len 32 * sub_db4ff64c.length])
    mem[(32 * sub_db4ff64c.length) + 128] = 32
    mem[(32 * sub_db4ff64c.length) + 160] = sub_db4ff64c.length
    mem[(32 * sub_db4ff64c.length) + 192 len 32 * sub_db4ff64c.length] = mem[128 len 32 * sub_db4ff64c.length]
    return memory
      from (32 * sub_db4ff64c.length) + 128
       len (96 * sub_db4ff64c.length) + 64
}

function sub_cce7e251(?) payable {
    mem[64] = (32 * sub_8e47a4d7.length) + 128
    mem[96] = sub_8e47a4d7.length
    if not sub_8e47a4d7.length:
        mem[(32 * sub_8e47a4d7.length) + 128] = 32
        mem[(32 * sub_8e47a4d7.length) + 160] = sub_8e47a4d7.length
        idx = 0
        s = 128
        t = (32 * sub_8e47a4d7.length) + 192
        while idx < sub_8e47a4d7.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_8e47a4d7.length) + 128
           len (96 * sub_8e47a4d7.length) + 64
    mem[128] = address(sub_8e47a4d7.field_0)
    idx = 128
    s = 0
    while (32 * sub_8e47a4d7.length) + 96 > idx:
        mem[idx + 32] = sub_8e47a4d7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8e47a4d7.length) + 128] = 32
    mem[(32 * sub_8e47a4d7.length) + 160] = sub_8e47a4d7.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_8e47a4d7.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_8e47a4d7.length) + -mem[64] + 192
}

function sub_2dc7d078(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == bool(arg5)
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    if not stor11[address(arg2)]:
        sub_8e47a4d7.length++
        sub_8e47a4d7[sub_8e47a4d7.length].field_0 = address(arg2)
        if bool(stor14[address(arg2)].field_0):
            if bool(stor14[address(arg2)].field_0) == uint255(stor14[address(arg2)].field_1) < 32:
                revert with 'NH{q', 34
            if arg1.length:
                uint256(stor14[address(arg2)][].field_0) = Array(len=arg1.length, data=arg1[all])
            else:
                uint256(stor14[address(arg2)].field_0) = 0
                idx = 0
                while uint255(stor14[address(arg2)].field_1) + 31 / 32 > idx:
                    uint256(stor14[address(arg2)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor14[address(arg2)].field_0) == stor14[address(arg2)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                uint256(stor14[address(arg2)][].field_0) = Array(len=arg1.length, data=arg1[all])
            else:
                uint256(stor14[address(arg2)].field_0) = 0
                idx = 0
                while stor14[address(arg2)].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor14[address(arg2)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        stor11[address(arg2)] = 1
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 13)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256] = uint64(arg2) << 96
    uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 13))]) = arg3
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 13))].field_0) = arg4
    stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 13))] = uint8(bool(arg5))
    emit 0x6d900862: 160, address(arg2), arg3, arg4, bool(arg5), arg1.length, arg1[all], 0
}

function sub_c57cc179(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor14[arg1].field_0):
            if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor14[arg1].field_1):
                if 31 < uint255(stor14[arg1].field_1):
                    mem[128] = uint256(stor14[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor14[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor14[arg1].field_1)), data=mem[128 len ceil32(uint255(stor14[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        else:
            if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor14[arg1].field_1 % 128:
                if 31 < stor14[arg1].field_1 % 128:
                    mem[128] = uint256(stor14[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor14[arg1].field_1)), data=mem[128 len ceil32(uint255(stor14[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        mem[ceil32(uint255(stor14[arg1].field_1)) + 192 len ceil32(uint255(stor14[arg1].field_1))] = mem[128 len ceil32(uint255(stor14[arg1].field_1))]
        if ceil32(uint255(stor14[arg1].field_1)) > uint255(stor14[arg1].field_1):
            mem[ceil32(uint255(stor14[arg1].field_1)) + uint255(stor14[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor14[arg1].field_1)), data=mem[128 len ceil32(uint255(stor14[arg1].field_1))], mem[(2 * ceil32(uint255(stor14[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor14[arg1].field_1))]), 
    if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor14[arg1].field_1):
            if 31 < uint255(stor14[arg1].field_1):
                mem[128] = uint256(stor14[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor14[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor14[arg1].field_1 % 128:
            if 31 < stor14[arg1].field_1 % 128:
                mem[128] = uint256(stor14[arg1].field_0)
                idx = 128
                s = 0
                while stor14[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor14[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    mem[ceil32(stor14[arg1].field_1 % 128) + 192 len ceil32(stor14[arg1].field_1 % 128)] = mem[128 len ceil32(stor14[arg1].field_1 % 128)]
    if ceil32(stor14[arg1].field_1 % 128) > stor14[arg1].field_1 % 128:
        mem[ceil32(stor14[arg1].field_1 % 128) + stor14[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)], mem[(2 * ceil32(stor14[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor14[arg1].field_1 % 128)]), 
}

function sub_bd9df75d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not uint8(stor1[address(msg.sender)]):
        revert with 0, 'onlyAdmin'
    if bool(stor14[address(arg1)].field_0):
        if bool(stor14[address(arg1)].field_0) == uint255(stor14[address(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor14[address(arg1)].field_0):
            mem[96] = Mask(248, 8, uint256(stor14[address(arg1)].field_0))
            mem[uint255(stor14[address(arg1)].field_1) + 96] = 13
            stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14)))))), ('mem', ('range', 128, ('type', 255, ('field', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14))))))))] = uint8(bool(arg2))
        else:
            if bool(stor14[address(arg1)].field_0) != 1:
                stor3[sha3(mem[96 len -64])] = uint8(bool(arg2))
            else:
                idx = 0
                s = 0
                while idx < uint255(stor14[address(arg1)].field_1):
                    mem[idx + 96] = uint256(stor14[address(arg1)][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[uint255(stor14[address(arg1)].field_1) + 96] = 13
                stor3[sha3(mem[96 len uint255(stor14[address(arg1)].field_1) + 32])] = uint8(bool(arg2))
    else:
        if bool(stor14[address(arg1)].field_0) == stor14[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor14[address(arg1)].field_0):
            mem[96] = Mask(248, 8, uint256(stor14[address(arg1)].field_0))
            mem[stor14[address(arg1)].field_1 % 128 + 96] = 13
            stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14)))))), ('mem', ('range', 128, ('type', 7, ('field', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14))))))))] = uint8(bool(arg2))
        else:
            if bool(stor14[address(arg1)].field_0) != 1:
                stor3[sha3(mem[96 len -64])] = uint8(bool(arg2))
            else:
                idx = 0
                s = 0
                while idx < stor14[address(arg1)].field_1 % 128:
                    mem[idx + 96] = uint256(stor14[address(arg1)][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor14[address(arg1)].field_1 % 128 + 96] = 13
                stor3[sha3(mem[96 len stor14[address(arg1)].field_1 % 128 + 32])] = uint8(bool(arg2))
    if bool(stor14[address(arg1)].field_0):
        if bool(stor14[address(arg1)].field_0) == uint255(stor14[address(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor14[address(arg1)].field_0):
            mem[96] = Mask(248, 8, uint256(stor14[address(arg1)].field_0))
            mem[uint255(stor14[address(arg1)].field_1) + 96] = 13
            emit 0x2398f1f8: address(arg1), bool(stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14)))))), ('mem', ('range', 128, ('type', 255, ('field', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14))))))))])
        else:
            if bool(stor14[address(arg1)].field_0) != 1:
                emit 0x2398f1f8: address(arg1), bool(stor3[sha3(mem[96 len -64])])
            else:
                idx = 0
                s = 0
                while idx < uint255(stor14[address(arg1)].field_1):
                    mem[idx + 96] = uint256(stor14[address(arg1)][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[uint255(stor14[address(arg1)].field_1) + 96] = 13
                emit 0x2398f1f8: address(arg1), bool(stor3[sha3(mem[96 len uint255(stor14[address(arg1)].field_1) + 32])])
    else:
        if bool(stor14[address(arg1)].field_0) == stor14[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor14[address(arg1)].field_0):
            mem[96] = Mask(248, 8, uint256(stor14[address(arg1)].field_0))
            mem[stor14[address(arg1)].field_1 % 128 + 96] = 13
            emit 0x2398f1f8: address(arg1), bool(stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14)))))), ('mem', ('range', 128, ('type', 7, ('field', 1, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14))))))))])
        else:
            if bool(stor14[address(arg1)].field_0) != 1:
                emit 0x2398f1f8: address(arg1), bool(stor3[sha3(mem[96 len -64])])
            else:
                idx = 0
                s = 0
                while idx < stor14[address(arg1)].field_1 % 128:
                    mem[idx + 96] = uint256(stor14[address(arg1)][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor14[address(arg1)].field_1 % 128 + 96] = 13
                emit 0x2398f1f8: address(arg1), bool(stor3[sha3(mem[96 len stor14[address(arg1)].field_1 % 128 + 32])])
}

function sub_e7b2f626(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if uint8(stor2.length.field_8) != 1:
        revert with 0, 'no LOCK'
    uint8(stor2.length.field_8) = 0
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'You cannot call this with a contract'
    if uint8(stor2.length) != 1:
        revert with 0, 'Activity not open yet.'
    if bool(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('data', ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))))))))), ('cd', ('add', 4, ('param', 'arg4')))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 13))]) != 1:
        revert with 0, 'Token not available for sale.'
    if arg2 != uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('data', ('call.data', ('add', 36, ('param', 'arg3')), ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))))))))), ('cd', ('add', 4, ('param', 'arg4')))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 13))]):
        revert with 0, 'no Money'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor3.length == -1:
        revert with 'NH{q', 17
    stor3.length++
    sub_db4ff64c.length++
    uint256(sub_db4ff64c[sub_db4ff64c.length].field_0) = stor3.length
    stor9[stor3.length].field_0 = address(arg1)
    uint256(stor9[stor3.length].field_256) = arg2
    if bool(stor9[stor3.length].field_512):
        if bool(stor9[stor3.length].field_512) == uint255(stor9[stor3.length].field_513) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor9[stor3.length][2][].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            uint256(stor9[stor3.length].field_512) = 0
            idx = 0
            while uint255(stor9[stor3.length].field_513) + 31 / 32 > idx:
                uint256(stor9[stor3.length][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[stor3.length].field_512) == stor9[stor3.length].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor9[stor3.length][2][].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            uint256(stor9[stor3.length].field_512) = 0
            idx = 0
            while stor9[stor3.length].field_513 % 128 + 31 / 32 > idx:
                uint256(stor9[stor3.length][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
    if bool(stor9[stor3.length].field_768):
        if bool(stor9[stor3.length].field_768) == uint255(stor9[stor3.length].field_769) < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor9[stor3.length][3][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor9[stor3.length].field_768) = 0
            idx = 0
            while uint255(stor9[stor3.length].field_769) + 31 / 32 > idx:
                uint256(stor9[stor3.length][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[stor3.length].field_768) == stor9[stor3.length].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor9[stor3.length][3][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor9[stor3.length].field_768) = 0
            idx = 0
            while stor9[stor3.length].field_769 % 128 + 31 / 32 > idx:
                uint256(stor9[stor3.length][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
    uint8(stor9[stor3.length].field_1024) = 0
    stor9[stor3.length].field_1280 % 1 = 0
    if ceil32(arg3.length) <= arg3.length:
        emit 0x784f1001: address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 192, stor3.length, msg.sender
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 450] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 482 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 482] = 0
        emit 0x784f1001: address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 482 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 192, stor3.length, msg.sender
    uint8(stor2.length.field_8) = 1
}

function sub_9ccba454(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor9[arg1].field_512):
        if bool(stor9[arg1].field_512) == uint255(stor9[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor9[arg1].field_512):
            if bool(stor9[arg1].field_512) == uint255(stor9[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor9[arg1].field_513):
                if 31 >= uint255(stor9[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor9[arg1].field_520)
                else:
                    mem[128] = uint256(stor9[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor9[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor9[arg1].field_512) == stor9[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_513 % 128:
                if 31 >= stor9[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor9[arg1].field_520)
                else:
                    mem[128] = uint256(stor9[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while stor9[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor9[arg1].field_768):
            if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if bool(stor9[arg1].field_768):
                if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor9[arg1].field_769):
                    if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                        mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                    if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
                else:
                    if 31 >= uint255(stor9[arg1].field_769):
                        mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = uint256(stor9[arg1][3].field_0)
                        idx = ceil32(uint255(stor9[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor9[arg1].field_513)) + uint255(stor9[arg1].field_769) + 128 > idx:
                            mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                        mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                    if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
            else:
                if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor9[arg1].field_769 % 128:
                    if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                        mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                    if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
                else:
                    if 31 >= stor9[arg1].field_769 % 128:
                        mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = uint256(stor9[arg1][3].field_0)
                        idx = ceil32(uint255(stor9[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor9[arg1].field_513)) + stor9[arg1].field_769 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                        mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                    if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
            return stor9[arg1].field_0, 
                   uint256(stor9[arg1].field_256),
                   Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_513)), data=mem[128 len ceil32(uint255(stor9[arg1].field_513))], 2 * Mask(256, -1, uint255(stor9[arg1].field_769)), mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(uint255(stor9[arg1].field_769))]),
                   ceil32(uint255(stor9[arg1].field_513)) + 192,
                   uint8(stor9[arg1].field_1024)
        if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor9[arg1].field_768):
            if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor9[arg1].field_769):
                if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                    mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(stor9[arg1].field_769 % 128) + uint255(stor9[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(stor9[arg1].field_769 % 128)]
                if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= uint255(stor9[arg1].field_769):
                    mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = uint256(stor9[arg1][3].field_0)
                    idx = ceil32(uint255(stor9[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor9[arg1].field_513)) + uint255(stor9[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                    mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(stor9[arg1].field_769 % 128) + uint255(stor9[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(stor9[arg1].field_769 % 128)]
                if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
        else:
            if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor9[arg1].field_769 % 128:
                if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                    mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(stor9[arg1].field_769 % 128) + uint255(stor9[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(stor9[arg1].field_769 % 128)]
                if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= stor9[arg1].field_769 % 128:
                    mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor9[arg1].field_513)) + 160] = uint256(stor9[arg1][3].field_0)
                    idx = ceil32(uint255(stor9[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor9[arg1].field_513)) + stor9[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor9[arg1].field_513)) > uint255(stor9[arg1].field_513):
                    mem[ceil32(uint255(stor9[arg1].field_513)) + ceil32(stor9[arg1].field_769 % 128) + uint255(stor9[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(stor9[arg1].field_769 % 128)]
                if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor9[arg1].field_513))) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
        return stor9[arg1].field_0, 
               uint256(stor9[arg1].field_256),
               Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_513)), data=mem[128 len ceil32(uint255(stor9[arg1].field_513))], stor9[arg1].field_768 % 128, mem[ceil32(uint255(stor9[arg1].field_513)) + 160 len ceil32(stor9[arg1].field_769 % 128)]),
               ceil32(uint255(stor9[arg1].field_513)) + 192,
               uint8(stor9[arg1].field_1024)
    if bool(stor9[arg1].field_512) == stor9[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor9[arg1].field_512):
        if bool(stor9[arg1].field_512) == uint255(stor9[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor9[arg1].field_513):
            if 31 >= uint255(stor9[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_520)
            else:
                mem[128] = uint256(stor9[arg1][2].field_0)
                idx = 128
                s = 0
                while uint255(stor9[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor9[arg1].field_512) == stor9[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_513 % 128:
            if 31 >= stor9[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_520)
            else:
                mem[128] = uint256(stor9[arg1][2].field_0)
                idx = 128
                s = 0
                while stor9[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor9[arg1].field_768):
        if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if bool(stor9[arg1].field_768):
            if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor9[arg1].field_769):
                if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                    mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(uint255(stor9[arg1].field_769)) + stor9[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                    mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
            else:
                if 31 >= uint255(stor9[arg1].field_769):
                    mem[ceil32(stor9[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                else:
                    mem[ceil32(stor9[arg1].field_513 % 128) + 160] = uint256(stor9[arg1][3].field_0)
                    idx = ceil32(stor9[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor9[arg1].field_513 % 128) + uint255(stor9[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                    mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(uint255(stor9[arg1].field_769)) + stor9[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                    mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
        else:
            if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor9[arg1].field_769 % 128:
                if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                    mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(uint255(stor9[arg1].field_769)) + stor9[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                    mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
            else:
                if 31 >= stor9[arg1].field_769 % 128:
                    mem[ceil32(stor9[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
                else:
                    mem[ceil32(stor9[arg1].field_513 % 128) + 160] = uint256(stor9[arg1][3].field_0)
                    idx = ceil32(stor9[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor9[arg1].field_513 % 128) + stor9[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                    mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(uint255(stor9[arg1].field_769)) + stor9[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 352] = uint255(stor9[arg1].field_769)
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + 384 len ceil32(uint255(stor9[arg1].field_769))] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(uint255(stor9[arg1].field_769))]
                if ceil32(uint255(stor9[arg1].field_769)) > uint255(stor9[arg1].field_769):
                    mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(uint255(stor9[arg1].field_769)) + uint255(stor9[arg1].field_769) + 384] = 0
        return stor9[arg1].field_0, 
               uint256(stor9[arg1].field_256),
               Array(len=stor9[arg1].field_512 % 128, data=mem[128 len ceil32(stor9[arg1].field_513 % 128)], 2 * Mask(256, -1, uint255(stor9[arg1].field_769)), mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(uint255(stor9[arg1].field_769))]),
               ceil32(stor9[arg1].field_513 % 128) + 192,
               uint8(stor9[arg1].field_1024)
    if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor9[arg1].field_768):
        if bool(stor9[arg1].field_768) == uint255(stor9[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if not uint255(stor9[arg1].field_769):
            if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(stor9[arg1].field_769 % 128)]
            if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= uint255(stor9[arg1].field_769):
                mem[ceil32(stor9[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
            else:
                mem[ceil32(stor9[arg1].field_513 % 128) + 160] = uint256(stor9[arg1][3].field_0)
                idx = ceil32(stor9[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor9[arg1].field_513 % 128) + uint255(stor9[arg1].field_769) + 128 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(stor9[arg1].field_769 % 128)]
            if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
    else:
        if bool(stor9[arg1].field_768) == stor9[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if not stor9[arg1].field_769 % 128:
            if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(stor9[arg1].field_769 % 128)]
            if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= stor9[arg1].field_769 % 128:
                mem[ceil32(stor9[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor9[arg1].field_776)
            else:
                mem[ceil32(stor9[arg1].field_513 % 128) + 160] = uint256(stor9[arg1][3].field_0)
                idx = ceil32(stor9[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor9[arg1].field_513 % 128) + stor9[arg1].field_769 % 128 + 128 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor9[arg1].field_513 % 128) > stor9[arg1].field_513 % 128:
                mem[ceil32(stor9[arg1].field_513 % 128) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 352] = stor9[arg1].field_769 % 128
            mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + 384 len ceil32(stor9[arg1].field_769 % 128)] = mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(stor9[arg1].field_769 % 128)]
            if ceil32(stor9[arg1].field_769 % 128) > stor9[arg1].field_769 % 128:
                mem[(2 * ceil32(stor9[arg1].field_513 % 128)) + ceil32(stor9[arg1].field_769 % 128) + stor9[arg1].field_769 % 128 + 384] = 0
    return stor9[arg1].field_0, 
           uint256(stor9[arg1].field_256),
           Array(len=stor9[arg1].field_512 % 128, data=mem[128 len ceil32(stor9[arg1].field_513 % 128)], stor9[arg1].field_768 % 128, mem[ceil32(stor9[arg1].field_513 % 128) + 160 len ceil32(stor9[arg1].field_769 % 128)]),
           ceil32(stor9[arg1].field_513 % 128) + 192,
           uint8(stor9[arg1].field_1024)
}

function sub_94cca22b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_512):
            if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
                revert with 'NH{q', 34
            if uint255(stor12[arg1].field_513):
                if 31 >= uint255(stor12[arg1].field_513):
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = uint256(stor12[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor12[arg1].field_513) + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_513 % 128:
                if 31 >= stor12[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
                else:
                    mem[128] = uint256(stor12[arg1][2].field_0)
                    idx = 128
                    s = 0
                    while stor12[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 2].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor12[arg1].field_768):
            if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if bool(stor12[arg1].field_768):
                if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor12[arg1].field_769):
                    if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                        mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                    if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
                else:
                    if 31 >= uint255(stor12[arg1].field_769):
                        mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = uint256(stor12[arg1][3].field_0)
                        idx = ceil32(uint255(stor12[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor12[arg1].field_513)) + uint255(stor12[arg1].field_769) + 128 > idx:
                            mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                        mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                    if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
            else:
                if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor12[arg1].field_769 % 128:
                    if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                        mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                    if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
                else:
                    if 31 >= stor12[arg1].field_769 % 128:
                        mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                    else:
                        mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = uint256(stor12[arg1][3].field_0)
                        idx = ceil32(uint255(stor12[arg1].field_513)) + 160
                        s = 0
                        while ceil32(uint255(stor12[arg1].field_513)) + stor12[arg1].field_769 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                        mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_513) + 352] = 0
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                    if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                        mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
            return uint256(stor12[arg1].field_0), 
                   uint256(stor12[arg1].field_256),
                   Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_513)), data=mem[128 len ceil32(uint255(stor12[arg1].field_513))], 2 * Mask(256, -1, uint255(stor12[arg1].field_769)), mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(uint255(stor12[arg1].field_769))]),
                   ceil32(uint255(stor12[arg1].field_513)) + 192,
                   stor12[arg1].field_1024
        if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_768):
            if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor12[arg1].field_769):
                if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                    mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(stor12[arg1].field_769 % 128) + uint255(stor12[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(stor12[arg1].field_769 % 128)]
                if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= uint255(stor12[arg1].field_769):
                    mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = uint256(stor12[arg1][3].field_0)
                    idx = ceil32(uint255(stor12[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor12[arg1].field_513)) + uint255(stor12[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                    mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(stor12[arg1].field_769 % 128) + uint255(stor12[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(stor12[arg1].field_769 % 128)]
                if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
        else:
            if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor12[arg1].field_769 % 128:
                if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                    mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(stor12[arg1].field_769 % 128) + uint255(stor12[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(stor12[arg1].field_769 % 128)]
                if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
            else:
                if 31 >= stor12[arg1].field_769 % 128:
                    mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                else:
                    mem[ceil32(uint255(stor12[arg1].field_513)) + 160] = uint256(stor12[arg1][3].field_0)
                    idx = ceil32(uint255(stor12[arg1].field_513)) + 160
                    s = 0
                    while ceil32(uint255(stor12[arg1].field_513)) + stor12[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor12[arg1].field_513)) > uint255(stor12[arg1].field_513):
                    mem[ceil32(uint255(stor12[arg1].field_513)) + ceil32(stor12[arg1].field_769 % 128) + uint255(stor12[arg1].field_513) + 352] = 0
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
                mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(stor12[arg1].field_769 % 128)]
                if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                    mem[(2 * ceil32(uint255(stor12[arg1].field_513))) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
        return uint256(stor12[arg1].field_0), 
               uint256(stor12[arg1].field_256),
               Array(len=2 * Mask(256, -1, uint255(stor12[arg1].field_513)), data=mem[128 len ceil32(uint255(stor12[arg1].field_513))], stor12[arg1].field_768 % 128, mem[ceil32(uint255(stor12[arg1].field_513)) + 160 len ceil32(stor12[arg1].field_769 % 128)]),
               ceil32(uint255(stor12[arg1].field_513)) + 192,
               stor12[arg1].field_1024
    if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12[arg1].field_512):
        if bool(stor12[arg1].field_512) == uint255(stor12[arg1].field_513) < 32:
            revert with 'NH{q', 34
        if uint255(stor12[arg1].field_513):
            if 31 >= uint255(stor12[arg1].field_513):
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = uint256(stor12[arg1][2].field_0)
                idx = 128
                s = 0
                while uint255(stor12[arg1].field_513) + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor12[arg1].field_512) == stor12[arg1].field_513 % 128 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_513 % 128:
            if 31 >= stor12[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_520)
            else:
                mem[128] = uint256(stor12[arg1][2].field_0)
                idx = 128
                s = 0
                while stor12[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s + 2].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor12[arg1].field_768):
        if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if bool(stor12[arg1].field_768):
            if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
                revert with 'NH{q', 34
            if not uint255(stor12[arg1].field_769):
                if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                    mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(uint255(stor12[arg1].field_769)) + stor12[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                    mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
            else:
                if 31 >= uint255(stor12[arg1].field_769):
                    mem[ceil32(stor12[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                else:
                    mem[ceil32(stor12[arg1].field_513 % 128) + 160] = uint256(stor12[arg1][3].field_0)
                    idx = ceil32(stor12[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor12[arg1].field_513 % 128) + uint255(stor12[arg1].field_769) + 128 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                    mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(uint255(stor12[arg1].field_769)) + stor12[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                    mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
        else:
            if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
                revert with 'NH{q', 34
            if not stor12[arg1].field_769 % 128:
                if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                    mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(uint255(stor12[arg1].field_769)) + stor12[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                    mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
            else:
                if 31 >= stor12[arg1].field_769 % 128:
                    mem[ceil32(stor12[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
                else:
                    mem[ceil32(stor12[arg1].field_513 % 128) + 160] = uint256(stor12[arg1][3].field_0)
                    idx = ceil32(stor12[arg1].field_513 % 128) + 160
                    s = 0
                    while ceil32(stor12[arg1].field_513 % 128) + stor12[arg1].field_769 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                    mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(uint255(stor12[arg1].field_769)) + stor12[arg1].field_513 % 128 + 352] = 0
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 352] = uint255(stor12[arg1].field_769)
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + 384 len ceil32(uint255(stor12[arg1].field_769))] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(uint255(stor12[arg1].field_769))]
                if ceil32(uint255(stor12[arg1].field_769)) > uint255(stor12[arg1].field_769):
                    mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(uint255(stor12[arg1].field_769)) + uint255(stor12[arg1].field_769) + 384] = 0
        return uint256(stor12[arg1].field_0), 
               uint256(stor12[arg1].field_256),
               Array(len=stor12[arg1].field_512 % 128, data=mem[128 len ceil32(stor12[arg1].field_513 % 128)], 2 * Mask(256, -1, uint255(stor12[arg1].field_769)), mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(uint255(stor12[arg1].field_769))]),
               ceil32(stor12[arg1].field_513 % 128) + 192,
               stor12[arg1].field_1024
    if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor12[arg1].field_768):
        if bool(stor12[arg1].field_768) == uint255(stor12[arg1].field_769) < 32:
            revert with 'NH{q', 34
        if not uint255(stor12[arg1].field_769):
            if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(stor12[arg1].field_769 % 128)]
            if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= uint255(stor12[arg1].field_769):
                mem[ceil32(stor12[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
            else:
                mem[ceil32(stor12[arg1].field_513 % 128) + 160] = uint256(stor12[arg1][3].field_0)
                idx = ceil32(stor12[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor12[arg1].field_513 % 128) + uint255(stor12[arg1].field_769) + 128 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(stor12[arg1].field_769 % 128)]
            if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
    else:
        if bool(stor12[arg1].field_768) == stor12[arg1].field_769 % 128 < 32:
            revert with 'NH{q', 34
        if not stor12[arg1].field_769 % 128:
            if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(stor12[arg1].field_769 % 128)]
            if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
        else:
            if 31 >= stor12[arg1].field_769 % 128:
                mem[ceil32(stor12[arg1].field_513 % 128) + 160] = 256 * Mask(248, 0, stor12[arg1].field_776)
            else:
                mem[ceil32(stor12[arg1].field_513 % 128) + 160] = uint256(stor12[arg1][3].field_0)
                idx = ceil32(stor12[arg1].field_513 % 128) + 160
                s = 0
                while ceil32(stor12[arg1].field_513 % 128) + stor12[arg1].field_769 % 128 + 128 > idx:
                    mem[idx + 32] = uint256(stor12[arg1][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor12[arg1].field_513 % 128) > stor12[arg1].field_513 % 128:
                mem[ceil32(stor12[arg1].field_513 % 128) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_513 % 128 + 352] = 0
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 352] = stor12[arg1].field_769 % 128
            mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + 384 len ceil32(stor12[arg1].field_769 % 128)] = mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(stor12[arg1].field_769 % 128)]
            if ceil32(stor12[arg1].field_769 % 128) > stor12[arg1].field_769 % 128:
                mem[(2 * ceil32(stor12[arg1].field_513 % 128)) + ceil32(stor12[arg1].field_769 % 128) + stor12[arg1].field_769 % 128 + 384] = 0
    return uint256(stor12[arg1].field_0), 
           uint256(stor12[arg1].field_256),
           Array(len=stor12[arg1].field_512 % 128, data=mem[128 len ceil32(stor12[arg1].field_513 % 128)], stor12[arg1].field_768 % 128, mem[ceil32(stor12[arg1].field_513 % 128) + 160 len ceil32(stor12[arg1].field_769 % 128)]),
           ceil32(stor12[arg1].field_513 % 128) + 192,
           stor12[arg1].field_1024
}



}
