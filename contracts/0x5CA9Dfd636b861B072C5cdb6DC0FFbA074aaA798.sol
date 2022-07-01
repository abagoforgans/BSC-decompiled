contract main {




// =====================  Runtime code  =====================


#
#  - sub_9e866231(?)
#  - sub_a1aede1b(?)
#
mapping of uint8 stor0;
array of uint256 stor1;
array of uint256 stor3;
mapping of struct stor4;
array of struct stor5;

function sub_3955a2bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    stor0[address(arg1)] = 1
}

function sub_4c89159b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require stor0[msg.sender]
    uint8(stor3.length) = uint8(arg1)
    uint8(stor3.length.field_8) = 0
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawPartial(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7d8ac155(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[msg.sender]
    if uint8(stor3.length.field_16):
        revert with 0, 'M'
    if uint256(stor4[address(arg1)].field_512) != 0:
        if uint256(stor4[address(arg1)].field_768) > block.timestamp:
            if not uint256(stor4[address(arg1)].field_512):
                revert with 0, 17
            uint256(stor4[address(arg1)].field_512)--
}

function sub_d2885592(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require stor0[msg.sender]
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[msg.sender]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5d097ae2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if uint8(stor3.length.field_16):
        revert with 0, 'M'
    if 0 == uint256(stor4[address(arg1)].field_512):
        return arg2
    if uint16(stor4[address(arg1)].field_1296) > arg3:
        return arg2
    if uint256(stor4[address(arg1)].field_768) <= block.timestamp:
        return arg2
    if arg2 and uint16(stor4[address(arg1)].field_1280) > -1 / arg2:
        revert with 0, 17
    if arg2 < arg2 * uint16(stor4[address(arg1)].field_1280) / 1000:
        revert with 0, 17
    if 0 == uint256(stor4[address(arg1)].field_256):
        return (arg2 - (arg2 * uint16(stor4[address(arg1)].field_1280) / 1000))
    if arg2 - (arg2 * uint16(stor4[address(arg1)].field_1280) / 1000) <= uint256(stor4[address(arg1)].field_256):
        return 0
    if arg2 - (arg2 * uint16(stor4[address(arg1)].field_1280) / 1000) < uint256(stor4[address(arg1)].field_256):
        revert with 0, 17
    return (arg2 - (arg2 * uint16(stor4[address(arg1)].field_1280) / 1000) - uint256(stor4[address(arg1)].field_256))
}

function exists(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if 0 == uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        return uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) != 0
    if uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) <= block.timestamp:
        return (uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > block.timestamp)
    if uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        return bool(uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0))
    return bool(stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
}

function sub_e4fa90f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require stor0[msg.sender]
    if uint8(stor3.length.field_16):
        revert with 0, 'M'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) >= stor2.length:
        revert with 0, 50
    if bool(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0):
        if bool(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0) == uint255(uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)) * 0.5 < 32:
            revert with 0, 34
        uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0) = 0
        if 31 < uint255(uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)) * 0.5:
            idx = 0
            while (uint255(uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0) == stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_1 % 128 < 32:
            revert with 0, 34
        uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_0) = 0
        if 31 < stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_1 % 128:
            idx = 0
            while stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor2[uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) + idx].field_0) = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
    stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = 0
    uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
    uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
    uint256(stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
    uint32(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) = 0
}

function sub_a3c4a695(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if ceil32(arg1.length) <= arg1.length:
        _139 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        if ceil32(arg1.length) <= arg1.length:
            _273 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
            if ceil32(arg1.length) <= arg1.length:
                _401 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                return uint16(stor5[_139].field_0), 
                       stor1[_273],
                       uint256(stor2[_401].field_0),
                       uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
            _414 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
            return uint16(stor5[_139].field_0), 
                   stor1[_273],
                   uint256(stor2[_414].field_0),
                   uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
        _280 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        if ceil32(arg1.length) <= arg1.length:
            _404 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
            return uint16(stor5[_139].field_0), 
                   stor1[_280],
                   uint256(stor2[_404].field_0),
                   uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
        _418 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        return uint16(stor5[_139].field_0), 
               stor1[_280],
               uint256(stor2[_418].field_0),
               uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    _142 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if ceil32(arg1.length) <= arg1.length:
        _276 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        if ceil32(arg1.length) <= arg1.length:
            _407 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
            return uint16(stor5[_142].field_0), 
                   stor1[_276],
                   uint256(stor2[_407].field_0),
                   uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
        _422 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        return uint16(stor5[_142].field_0), 
               stor1[_276],
               uint256(stor2[_422].field_0),
               uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    _284 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if ceil32(arg1.length) <= arg1.length:
        _410 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        return uint16(stor5[_142].field_0), 
               stor1[_284],
               uint256(stor2[_410].field_0),
               uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
    _426 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    return uint16(stor5[_142].field_0), 
           stor1[_284],
           uint256(stor2[_426].field_0),
           uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0)
}

function sub_4fd615d7(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == uint16(arg2)
    require arg7 == uint16(arg7)
    require stor0[msg.sender]
    if uint8(stor3.length.field_16):
        revert with 0, 'M'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] != 0:
        mem[ceil32(ceil32(arg1.length)) + 97] = uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_0)
        uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_0) = mem[ceil32(ceil32(arg1.length)) + 97]
        stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))] = arg3
        uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg4
        uint256(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg5
        uint256(stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg6
        uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = 0
        uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_16) = 0
    else:
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
        if uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
            mem[ceil32(ceil32(arg1.length)) + 97] = uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_0)
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256].field_0) = mem[ceil32(ceil32(arg1.length)) + 97]
            stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))] = arg3
            uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg4
            uint256(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg5
            uint256(stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg6
            uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = 0
            uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mem', ('range', ('add', 128, ('cd', ('add', 4, ('param', 'arg1')))), ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1'))))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_16) = 0
        else:
            uint256(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, 0, stor2.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256)) << (8 * ceil32(arg1.length)) - 256].field_0) = stor2.length
            stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))] = arg3
            uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg4
            uint256(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg5
            uint256(stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = arg6
            uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_0) = 0
            uint16(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('type', ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('field', ('add', 256, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('stor', ('length', ('name', 'stor2', 2))))))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 4))].field_16) = 0
            stor2.length++
            if bool(stor2[stor2.length].field_0):
                if bool(stor2[stor2.length].field_0) == uint255(uint256(stor2[stor2.length].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if arg1.length:
                    uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
                else:
                    uint256(stor2[stor2.length].field_0) = 0
                    idx = 0
                    while (uint255(uint256(stor2[stor2.length].field_0)) * 0.5) + 31 / 32 > idx:
                        uint256(stor2[stor2.length + idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                    revert with 0, 34
                if arg1.length:
                    uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
                else:
                    uint256(stor2[stor2.length].field_0) = 0
                    idx = 0
                    while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor2[stor2.length + idx].field_0) = 0
                        idx = idx + 1
                        continue 
}

function sub_6832870c(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _171 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_171] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_171 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_171 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _171
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _172 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
    mem[_172] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = _172 + 32
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint16(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _340 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_340] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = _340 + 32
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == uint16(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _507 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_507] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = _507 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _673 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 132).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 132).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 132).length) + 1
    mem[_673] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = _673 + 32
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    _838 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 164).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 164).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 164).length) + 1
    mem[_838] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = cd[164] + 36
    s = _838 + 32
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    _1002 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 196).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 196).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 196).length) + 1
    mem[_1002] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = cd[196] + 36
    s = _1002 + 32
    while idx < cd[196] + (32 * ('cd', 196).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    if ('cd', 228).length > test266151307():
        revert with 0, 65
    _1165 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 228).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 228).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 228).length) + 1
    mem[_1165] = ('cd', 228).length
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    idx = cd[228] + 36
    s = _1165 + 32
    while idx < cd[228] + (32 * ('cd', 228).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[32] = 0
    require stor0[msg.sender]
    stor2.length = mem[96]
    mem[0] = 2
    if not mem[96]:
        idx = 0
        while sha3(2) + stor2.length > idx + sha3(mem[0]):
            if bool(stor[idx + sha3(mem[0])].field_0):
                if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx + sha3(mem[0])].field_0) = 0
                if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor2.length:
            _1646 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[_507]:
                revert with 0, 50
            mem[_1646] = mem[(32 * idx) + _507 + 32]
            if idx >= mem[_673]:
                revert with 0, 50
            mem[_1646 + 32] = mem[(32 * idx) + _673 + 32]
            if idx >= mem[_838]:
                revert with 0, 50
            mem[_1646 + 64] = mem[(32 * idx) + _838 + 32]
            if idx >= mem[_1002]:
                revert with 0, 50
            mem[_1646 + 96] = mem[(32 * idx) + _1002 + 32]
            if idx >= mem[_1165]:
                revert with 0, 50
            mem[_1646 + 128] = mem[(32 * idx) + _1165 + 32]
            if idx >= mem[_172]:
                revert with 0, 50
            mem[_1646 + 160] = mem[(32 * idx) + _172 + 62 len 2]
            if idx >= mem[_340]:
                revert with 0, 50
            mem[_1646 + 192] = mem[(32 * idx) + _340 + 62 len 2]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            _1674 = mem[64]
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(uint256(stor2[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[mem[64] + (uint255(uint256(stor2[idx].field_0)) * 0.5)] = 4
                    uint256(stor[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646]
                    stor1[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])] = mem[_1646 + 32]
                    uint256(stor2[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 64]
                    uint256(stor3[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 96]
                    uint256(stor4[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 128]
                    uint16(stor5[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 190 len 2]
                    uint16(stor5[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_16) = mem[_1646 + 222 len 2]
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[0] = 4
                        uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646]
                        stor1[sha3(mem[mem[64] len -mem[64] + 32])] = mem[_1646 + 32]
                        uint256(stor2[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 64]
                        uint256(stor3[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 96]
                        uint256(stor4[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 128]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_16) = mem[_1646 + 222 len 2]
                    else:
                        mem[0] = sha3(2) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(stor2[idx].field_0)) * 0.5:
                            mem[s + _1674] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5)] = 4
                        uint256(stor[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646]
                        stor1[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])] = mem[_1646 + 32]
                        uint256(stor2[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 64]
                        uint256(stor3[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 96]
                        uint256(stor4[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 128]
                        uint16(stor5[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1646 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len _1674 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_16) = mem[_1646 + 222 len 2]
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[mem[64] + stor2[idx].field_1 % 128] = 4
                    uint256(stor[mem[mem[64] + 32 len stor2[idx].field_1 % 128]][Mask(248, 8, uint256(stor2[idx].field_0))].field_0) = mem[_1646]
                    stor1[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))] = mem[_1646 + 32]
                    uint256(stor2[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1646 + 64]
                    uint256(stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1646 + 96]
                    uint256(stor4[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1646 + 128]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1646 + 190 len 2]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_16) = mem[_1646 + 222 len 2]
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[0] = 4
                        uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646]
                        stor1[sha3(mem[mem[64] len -mem[64] + 32])] = mem[_1646 + 32]
                        uint256(stor2[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 64]
                        uint256(stor3[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 96]
                        uint256(stor4[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 128]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1646 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_16) = mem[_1646 + 222 len 2]
                    else:
                        mem[0] = sha3(2) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor2[idx].field_1 % 128:
                            mem[s + _1674] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1674 + stor2[idx].field_1 % 128] = 4
                        uint256(stor[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1646]
                        stor1[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])] = mem[_1646 + 32]
                        uint256(stor2[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1646 + 64]
                        uint256(stor3[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1646 + 96]
                        uint256(stor4[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1646 + 128]
                        uint16(stor5[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1646 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len _1674 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_16) = mem[_1646 + 222 len 2]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            _1488 = mem[idx]
            _1489 = mem[mem[idx]]
            if bool(stor[s + sha3(mem[0])].field_0):
                if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _1489:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1489) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _1488 + 32
                    while _1488 + _1489 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1489 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = s + sha3(mem[0])
                if not _1489:
                    uint256(stor[s + sha3(mem[0])].field_0) = 0
                    t = sha3(s + sha3(mem[0]))
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1489) + 1
                    u = sha3(s + sha3(mem[0]))
                    t = _1488 + 32
                    while _1488 + _1489 + 32 > t:
                        uint256(stor[u].field_0) = mem[t]
                        u = u + 1
                        t = t + 32
                        continue 
                    t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1489 + 31) >> 5)
                    while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
            s = s + 1
            idx = idx + 32
            continue 
        idx = s
        while sha3(2) + stor2.length > idx:
            if bool(stor[idx].field_0):
                if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor[idx].field_0) = 0
                if 31 < stor[idx].field_1 % 128:
                    mem[0] = idx
                    s = sha3(idx)
                    while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor2.length:
            _1796 = mem[64]
            mem[64] = mem[64] + 224
            if idx >= mem[_507]:
                revert with 0, 50
            mem[_1796] = mem[(32 * idx) + _507 + 32]
            if idx >= mem[_673]:
                revert with 0, 50
            mem[_1796 + 32] = mem[(32 * idx) + _673 + 32]
            if idx >= mem[_838]:
                revert with 0, 50
            mem[_1796 + 64] = mem[(32 * idx) + _838 + 32]
            if idx >= mem[_1002]:
                revert with 0, 50
            mem[_1796 + 96] = mem[(32 * idx) + _1002 + 32]
            if idx >= mem[_1165]:
                revert with 0, 50
            mem[_1796 + 128] = mem[(32 * idx) + _1165 + 32]
            if idx >= mem[_172]:
                revert with 0, 50
            mem[_1796 + 160] = mem[(32 * idx) + _172 + 62 len 2]
            if idx >= mem[_340]:
                revert with 0, 50
            mem[_1796 + 192] = mem[(32 * idx) + _340 + 62 len 2]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            _1830 = mem[64]
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(uint256(stor2[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[mem[64] + (uint255(uint256(stor2[idx].field_0)) * 0.5)] = 4
                    uint256(stor[mem[mem[64] + 32 len uint255(uint256(stor2[idx].field_0)) * 0.5]][Mask(248, 8, uint256(stor2[idx].field_0))].field_0) = mem[_1796]
                    stor1[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))] = mem[_1796 + 32]
                    uint256(stor2[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))].field_0) = mem[_1796 + 64]
                    uint256(stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))].field_0) = mem[_1796 + 96]
                    uint256(stor4[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))].field_0) = mem[_1796 + 128]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))].field_0) = mem[_1796 + 190 len 2]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('mask_shl', 256, -1, -1, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))))))].field_16) = mem[_1796 + 222 len 2]
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[0] = 4
                        uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796]
                        stor1[sha3(mem[mem[64] len -mem[64] + 32])] = mem[_1796 + 32]
                        uint256(stor2[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 64]
                        uint256(stor3[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 96]
                        uint256(stor4[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 128]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_16) = mem[_1796 + 222 len 2]
                    else:
                        mem[0] = sha3(2) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(uint256(stor2[idx].field_0)) * 0.5:
                            mem[s + _1830] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5)] = 4
                        uint256(stor[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1796]
                        stor1[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])] = mem[_1796 + 32]
                        uint256(stor2[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1796 + 64]
                        uint256(stor3[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1796 + 96]
                        uint256(stor4[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1796 + 128]
                        uint16(stor5[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_0) = mem[_1796 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len _1830 + (uint255(uint256(stor2[idx].field_0)) * 0.5) + -mem[64] + 32])].field_16) = mem[_1796 + 222 len 2]
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[mem[64]] = Mask(248, 8, uint256(stor2[idx].field_0))
                    mem[mem[64] + stor2[idx].field_1 % 128] = 4
                    uint256(stor[mem[mem[64] + 32 len stor2[idx].field_1 % 128]][Mask(248, 8, uint256(stor2[idx].field_0))].field_0) = mem[_1796]
                    stor1[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))] = mem[_1796 + 32]
                    uint256(stor2[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1796 + 64]
                    uint256(stor3[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1796 + 96]
                    uint256(stor4[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1796 + 128]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_0) = mem[_1796 + 190 len 2]
                    uint16(stor5[('map', ('mask_shl', 248, 8, 0, ('type', 256, ('field', 0, ('stor', ('array', ('var', 0), ('name', 'stor2', 2)))))), ('mem', ('range', ('add', 32, ('mem', ('range', 64, 32))), ('type', 7, ('field', 1, ('stor', ('array', ('var', 0), ('name', 'stor2', 2))))))))].field_16) = mem[_1796 + 222 len 2]
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[0] = 4
                        uint256(stor[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796]
                        stor1[sha3(mem[mem[64] len -mem[64] + 32])] = mem[_1796 + 32]
                        uint256(stor2[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 64]
                        uint256(stor3[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 96]
                        uint256(stor4[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 128]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_0) = mem[_1796 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len -mem[64] + 32])].field_16) = mem[_1796 + 222 len 2]
                    else:
                        mem[0] = sha3(2) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < stor2[idx].field_1 % 128:
                            mem[s + _1830] = uint256(stor[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_1830 + stor2[idx].field_1 % 128] = 4
                        uint256(stor[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1796]
                        stor1[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])] = mem[_1796 + 32]
                        uint256(stor2[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1796 + 64]
                        uint256(stor3[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1796 + 96]
                        uint256(stor4[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1796 + 128]
                        uint16(stor5[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_0) = mem[_1796 + 190 len 2]
                        uint16(stor5[sha3(mem[mem[64] len _1830 + stor2[idx].field_1 % 128 + -mem[64] + 32])].field_16) = mem[_1796 + 222 len 2]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_a995f1eb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if uint8(stor3.length.field_16):
        revert with 0, 'M'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if 0 == uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0):
        return arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_16) > arg3:
        return arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if uint256(stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) <= block.timestamp:
        return arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                if ceil32(arg1.length) <= arg1.length:
                    _5415 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5415].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5415].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5415].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5415].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5431 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5431].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5431].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5431].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5431].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            else:
                if ceil32(arg1.length) <= arg1.length:
                    _5417 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5417].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5417].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5417].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5417].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5433 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5433].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5433].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5433].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5433].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        else:
            if ceil32(arg1.length) <= arg1.length:
                if ceil32(arg1.length) <= arg1.length:
                    _5419 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5419].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5419].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5419].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5419].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5435 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5435].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5435].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5435].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5435].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            else:
                if ceil32(arg1.length) <= arg1.length:
                    _5421 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5421].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5421].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5421].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5421].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5437 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5437].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5437].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5437].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5437].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    else:
        if ceil32(arg1.length) <= arg1.length:
            if ceil32(arg1.length) <= arg1.length:
                if ceil32(arg1.length) <= arg1.length:
                    _5423 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5423].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5423].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5423].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5423].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5439 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5439].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5439].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5439].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5439].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            else:
                if ceil32(arg1.length) <= arg1.length:
                    _5425 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5425].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5425].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5425].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5425].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5441 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5441].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5441].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5441].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5441].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        else:
            if ceil32(arg1.length) <= arg1.length:
                if ceil32(arg1.length) <= arg1.length:
                    _5427 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5427].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5427].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5427].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5427].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5443 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5443].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5443].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5443].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5443].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            else:
                if ceil32(arg1.length) <= arg1.length:
                    _5429 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5429].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5429].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5429].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5429].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                else:
                    _5445 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    if arg2 and uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) > -1 / arg2:
                        revert with 0, 17
                    if arg2 < arg2 * uint16(stor5[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0) / 1000:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if 0 == stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return (arg2 - (arg2 * uint16(stor5[_5445].field_0) / 1000))
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5445].field_0) / 1000) <= stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        return 0
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
                    if arg2 - (arg2 * uint16(stor5[_5445].field_0) / 1000) < stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + 97] = arg2 - (arg2 * uint16(stor5[_5445].field_0) / 1000) - stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}



}
