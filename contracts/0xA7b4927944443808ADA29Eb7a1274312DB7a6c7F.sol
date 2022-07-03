contract main {




// =====================  Runtime code  =====================


#
#  - sub_5264f9ed(?)
#  - unstake(uint256 arg1, uint256 arg2)
#
const sub_1468fe06(?) = block.timestamp


address _owner;
array of uint256 stor1;
array of uint256 stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
array of struct stor6;
mapping of struct stor7;
array of struct sub_bbc70e13;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function isActive() payable {
    return bool(stor9)
}

function _owner() payable {
    return _owner
}

function sub_bbc70e13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_bbc70e13.length
    return uint256(sub_bbc70e13[arg1].field_0), 
           uint16(sub_bbc70e13[arg1].field_256),
           uint16(sub_bbc70e13[arg1].field_256),
           bool(uint8(sub_bbc70e13[arg1].field_288)),
           bool(uint8(sub_bbc70e13[arg1].field_296)),
           bool(uint8(sub_bbc70e13[arg1].field_304))
}

function getLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor7[address(arg1)].field_0))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Only owner allowed'
    _owner = arg1
}

function sub_acbe01ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not arg1:
        return stor10, stor11, stor12, stor13
    return stor14, stor15, stor16, stor17
}

function setActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    stor9 = uint8(arg1)
}

function sub_e8000435(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 8
        if uint256(sub_bbc70e13[idx].field_0) == arg1:
            return idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return -1
}

function setLock(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    uint8(stor7[address(arg1)].field_0) = uint8(arg2)
}

function sub_67286b25(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    if 1 == uint8(arg1):
        return address(stor1.length)
    if uint8(arg1) != 2:
        return 0
    return address(stor2.length)
}

function sub_86443c75(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    if 1 == uint8(arg2):
        address(stor1.length) = address(arg1)
    else:
        if 2 == uint8(arg2):
            address(stor2.length) = address(arg1)
}

function sub_aca2281a(?) payable {
    require calldata.size - 4 >= 160
    require arg5 == bool(arg5)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    if arg2 <= 0:
        revert with 0, 'Denom is 0'
    if arg4 <= 0:
        revert with 0, 'Denom is 0'
    if not arg4:
        revert with 0, 18
    if not arg2:
        revert with 0, 18
    if arg1 / arg2 > arg3 / arg4:
        revert with 0, 'min should be less than max'
    if not arg5:
        stor10 = arg1
        stor11 = arg2
        stor12 = arg3
        stor13 = arg4
    else:
        stor14 = arg1
        stor15 = arg2
        stor16 = arg3
        stor17 = arg4
}

function getBalanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    if not address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
        revert with 0, 'invalid coin'
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    require ext_code.size(address(stor3[uint256(stor4[address(arg1)].field_0)].field_256))
    staticcall address(stor3[uint256(stor4[address(arg1)].field_0)].field_256).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    if address(stor3[uint256(stor4[address(arg1)].field_0)].field_256) != arg1:
        revert with 0, 'Invalid Token'
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    require ext_code.size(address(stor3[uint256(stor4[address(arg1)].field_0)].field_256))
    staticcall address(stor3[uint256(stor4[address(arg1)].field_0)].field_256).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a004caf3(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= sub_bbc70e13.length:
        revert with 0, 50
    if uint16(sub_bbc70e13[arg2].field_272) > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if arg1 and uint16(sub_bbc70e13[arg2].field_256) > -1 / arg1:
        revert with 0, 17
    if arg1 * uint16(sub_bbc70e13[arg2].field_256) and uint256(sub_bbc70e13[arg2].field_0) > -1 / arg1 * uint16(sub_bbc70e13[arg2].field_256):
        revert with 0, 17
    if not 365 * uint16(sub_bbc70e13[arg2].field_272):
        revert with 0, 18
    if arg1 > !(arg1 * uint16(sub_bbc70e13[arg2].field_256) * uint256(sub_bbc70e13[arg2].field_0) / 365 * uint16(sub_bbc70e13[arg2].field_272)):
        revert with 0, 17
    return (arg1 + (arg1 * uint16(sub_bbc70e13[arg2].field_256) * uint256(sub_bbc70e13[arg2].field_0) / 365 * uint16(sub_bbc70e13[arg2].field_272)))
}

function getStakers() payable {
    mem[64] = (32 * stor6.length) + 128
    mem[96] = stor6.length
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        idx = 0
        s = 128
        t = (32 * stor6.length) + 192
        while idx < stor6.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = address(stor6[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor6.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor6.length) + -mem[64] + 192
}

function sub_150bb957(?) payable {
    mem[64] = (32 * sub_bbc70e13.length) + 128
    mem[96] = sub_bbc70e13.length
    s = 128
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 8
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = uint256(sub_bbc70e13[idx].field_0)
        mem[_15 + 32] = uint16(sub_bbc70e13[idx].field_256)
        mem[_15 + 64] = uint16(sub_bbc70e13[idx].field_272)
        mem[_15 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
        mem[_15 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
        mem[_15 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _26 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_26 + 62 len 2]
        mem[t + 64] = mem[_26 + 94 len 2]
        mem[t + 96] = bool(mem[_26 + 96])
        mem[t + 128] = bool(mem[_26 + 128])
        mem[t + 160] = bool(mem[_26 + 160])
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    if not address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
        revert with 0, 'Invalid Token'
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    require ext_code.size(address(stor3[uint256(stor4[address(arg1)].field_0)].field_256))
    staticcall address(stor3[uint256(stor4[address(arg1)].field_0)].field_256).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance to withdraw'
    if uint256(stor4[address(arg1)].field_0) >= stor3.length:
        revert with 0, 50
    emit 0x7959a5eb: address(stor3[uint256(stor4[address(arg1)].field_0)].field_256), ext_call.return_data[0], msg.sender
    require ext_code.size(address(stor3[uint256(stor4[address(arg1)].field_0)].field_256))
    call address(stor3[uint256(stor4[address(arg1)].field_0)].field_256).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_5b8307f1(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 8
        if uint256(sub_bbc70e13[idx].field_0) != uint16(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= 0:
            revert with 0, 'This rate already exists.'
        if uint16(arg3) <= 0:
            revert with 0, 'denom cannot be 0'
        sub_bbc70e13.length++
        uint16(sub_bbc70e13[sub_bbc70e13.length].field_0) = uint16(arg1)
        Mask(240, 0, sub_bbc70e13[sub_bbc70e13.length].field_16) = 0
        uint16(storF3F7[stor8.length].field_0) = uint16(arg2)
        uint16(storF3F7[stor8.length].field_16) = uint16(arg3)
        uint8(storF3F7[stor8.length].field_32) = uint8(bool(arg4))
        uint8(storF3F7[stor8.length].field_40) = uint8(bool(arg5))
        Mask(208, 0, storF3F7[stor8.length].field_48) = 1
        Mask(200, 0, storF3F7[stor8.length].field_56) = Mask(200, 16, bool(arg5)) >> 16
        Mask(200, 0, storF3F7[stor8.length].field_56) = Mask(200, 24, bool(arg4)) >> 24
        return 1
    if uint16(arg3) <= 0:
        revert with 0, 'denom cannot be 0'
    sub_bbc70e13.length++
    uint16(sub_bbc70e13[sub_bbc70e13.length].field_0) = uint16(arg1)
    Mask(240, 0, sub_bbc70e13[sub_bbc70e13.length].field_16) = 0
    uint16(storF3F7[stor8.length].field_0) = uint16(arg2)
    uint16(storF3F7[stor8.length].field_16) = uint16(arg3)
    uint8(storF3F7[stor8.length].field_32) = uint8(bool(arg4))
    uint8(storF3F7[stor8.length].field_40) = uint8(bool(arg5))
    Mask(208, 0, storF3F7[stor8.length].field_48) = 1
    Mask(200, 0, storF3F7[stor8.length].field_56) = Mask(200, 16, bool(arg5)) >> 16
    Mask(200, 0, storF3F7[stor8.length].field_56) = Mask(200, 24, bool(arg4)) >> 24
    return 1
}

function sub_d8af0314(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 8
        if uint256(sub_bbc70e13[idx].field_0) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= 0:
            if not arg3:
                if idx >= sub_bbc70e13.length:
                    revert with 0, 50
                Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 0, bool(arg2))
            else:
                if sub_bbc70e13.length < 1:
                    revert with 0, 17
                if sub_bbc70e13.length - 1 >= sub_bbc70e13.length:
                    revert with 0, 50
                if idx >= sub_bbc70e13.length:
                    revert with 0, 50
                uint256(sub_bbc70e13[idx].field_0) = uint256(sub_bbc70e13[sub_bbc70e13.length - 1].field_0)
                uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_256)
                uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_256)
                Mask(240, 0, sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_272)
                Mask(224, 0, sub_bbc70e13[idx].field_288) = 0
                uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_256)
                uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_272)
                Mask(224, 0, sub_bbc70e13[idx].field_288) = Mask(224, 0, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_288)))
                Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_256)
                uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_272)
                uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_288)))
                Mask(216, 0, sub_bbc70e13[idx].field_296) = Mask(216, 0, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_296)))
                Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 16, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_288))) >> 16
                uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_256)
                uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[sub_bbc70e13.length - 1].field_272)
                uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_288)))
                uint8(sub_bbc70e13[idx].field_296) = uint8(bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_296)))
                Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_304)))
                Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_288))) >> 24
                Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[sub_bbc70e13.length - 1].field_296))) >> 16
                if not sub_bbc70e13.length:
                    revert with 0, 49
                uint256(sub_bbc70e13[sub_bbc70e13.length - 1].field_0) = 0
                sub_bbc70e13[sub_bbc70e13.length - 1].field_256 % 72057594037927936 = 0
                sub_bbc70e13.length--
}

function sub_6b09007d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= uint256(stor5[address(arg1)].field_0):
        revert with 0, 'Staking index out of bounds.'
    if arg2 >= uint256(stor5[address(arg1)].field_0):
        revert with 0, 50
    if bool(stor5[address(arg1)][arg2].field_256):
        if bool(stor5[address(arg1)][arg2].field_256) == uint255(stor5[address(arg1)][arg2].field_257) < 32:
            revert with 0, 34
        if bool(stor5[address(arg1)][arg2].field_256):
            if bool(stor5[address(arg1)][arg2].field_256) == uint255(stor5[address(arg1)][arg2].field_257) < 32:
                revert with 0, 34
            if uint255(stor5[address(arg1)][arg2].field_257):
                if 31 >= uint255(stor5[address(arg1)][arg2].field_257):
                    mem[768] = 256 * Mask(248, 0, stor5[address(arg1)][arg2].field_264)
                else:
                    mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0)
                    idx = 768
                    s = 0
                    while uint255(stor5[address(arg1)][arg2].field_257) + 736 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[address(arg1)][arg2].field_256) == stor5[address(arg1)][arg2].field_257 % 128 < 32:
                revert with 0, 34
            if stor5[address(arg1)][arg2].field_257 % 128:
                if 31 >= stor5[address(arg1)][arg2].field_257 % 128:
                    mem[768] = 256 * Mask(248, 0, stor5[address(arg1)][arg2].field_264)
                else:
                    mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0)
                    idx = 768
                    s = 0
                    while stor5[address(arg1)][arg2].field_257 % 128 + 736 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor5[address(arg1)][arg2].field_0), 
               320,
               uint256(stor5[address(arg1)][arg2].field_512),
               uint256(stor5[address(arg1)][arg2].field_768),
               uint8(stor5[address(arg1)][arg2].field_1024),
               address(stor5[address(arg1)][arg2].field_1024),
               uint256(stor5[address(arg1)][arg2].field_1280),
               uint256(stor5[address(arg1)][arg2].field_1536),
               uint16(stor5[address(arg1)][arg2].field_1792),
               uint16(stor5[address(arg1)][arg2].field_1792),
               2 * Mask(256, -1, uint255(stor5[address(arg1)][arg2].field_257)),
               mem[768 len ceil32(uint255(stor5[address(arg1)][arg2].field_257))]
    if bool(stor5[address(arg1)][arg2].field_256) == stor5[address(arg1)][arg2].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor5[address(arg1)][arg2].field_256):
        if bool(stor5[address(arg1)][arg2].field_256) == uint255(stor5[address(arg1)][arg2].field_257) < 32:
            revert with 0, 34
        if uint255(stor5[address(arg1)][arg2].field_257):
            if 31 >= uint255(stor5[address(arg1)][arg2].field_257):
                mem[768] = 256 * Mask(248, 0, stor5[address(arg1)][arg2].field_264)
            else:
                mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0)
                idx = 768
                s = 0
                while uint255(stor5[address(arg1)][arg2].field_257) + 736 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[address(arg1)][arg2].field_256) == stor5[address(arg1)][arg2].field_257 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][arg2].field_257 % 128:
            if 31 >= stor5[address(arg1)][arg2].field_257 % 128:
                mem[768] = 256 * Mask(248, 0, stor5[address(arg1)][arg2].field_264)
            else:
                mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_0)
                idx = 768
                s = 0
                while stor5[address(arg1)][arg2].field_257 % 128 + 736 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor5[address(arg1)][arg2].field_0), 
           320,
           uint256(stor5[address(arg1)][arg2].field_512),
           uint256(stor5[address(arg1)][arg2].field_768),
           uint8(stor5[address(arg1)][arg2].field_1024),
           address(stor5[address(arg1)][arg2].field_1024),
           uint256(stor5[address(arg1)][arg2].field_1280),
           uint256(stor5[address(arg1)][arg2].field_1536),
           uint16(stor5[address(arg1)][arg2].field_1792),
           uint16(stor5[address(arg1)][arg2].field_1792),
           stor5[address(arg1)][arg2].field_256 % 128,
           mem[768 len ceil32(stor5[address(arg1)][arg2].field_257 % 128)]
}

function sub_9807911f(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    if arg2 > 18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Decimals must be less than or equal to 18'
    if 18 == arg2:
        if 0 > !arg1:
            revert with 0, 17
        if not arg3:
            if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor11:
                revert with 0, 18
            if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor13:
                revert with 0, 18
            return arg1 >= 10^18 * stor10 / stor11, arg1 <= 10^18 * stor12 / stor13
        if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor15:
            revert with 0, 18
        if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor17:
            revert with 0, 18
        return arg1 >= 10^18 * stor14 / stor15, arg1 <= 10^18 * stor16 / stor17
    if 18 < arg2:
        revert with 0, 17
    if not -arg2 + 18:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if 0 > !arg1:
            revert with 0, 17
        if not arg3:
            if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor11:
                revert with 0, 18
            if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor13:
                revert with 0, 18
            return arg1 >= 10^18 * stor10 / stor11, arg1 <= 10^18 * stor12 / stor13
        if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor15:
            revert with 0, 18
        if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor17:
            revert with 0, 18
        return arg1 >= 10^18 * stor14 / stor15, arg1 <= 10^18 * stor16 / stor17
    if bool(bool(-arg2 + 18 < 78)) or bool(bool(-arg2 + 18 < 32)):
        if 10^(-arg2 + 18) > -1:
            revert with 0, 17
        if arg1 and 10^(-arg2 + 18) > -1 / arg1:
            revert with 0, 17
        if 0 > !(arg1 * 10^(-arg2 + 18)):
            revert with 0, 17
        if not arg3:
            if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor11:
                revert with 0, 18
            if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor13:
                revert with 0, 18
            return arg1 * 10^(-arg2 + 18) >= 10^18 * stor10 / stor11, arg1 * 10^(-arg2 + 18) <= 10^18 * stor12 / stor13
        if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor15:
            revert with 0, 18
        if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor17:
            revert with 0, 18
        return arg1 * 10^(-arg2 + 18) >= 10^18 * stor14 / stor15, arg1 * 10^(-arg2 + 18) <= 10^18 * stor16 / stor17
    if var27005 > 1:
        s = var27001
        t = var27002
        u = var27005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg1 and s * s * t > -1 / arg1:
                    revert with 0, 17
                if 0 > !(arg1 * s * s * t):
                    revert with 0, 17
                if not arg3:
                    if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor11:
                        revert with 0, 18
                    if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor13:
                        revert with 0, 18
                    return arg1 * s * s * t >= 10^18 * stor10 / stor11, arg1 * s * s * t <= 10^18 * stor12 / stor13
                if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor15:
                    revert with 0, 18
                if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor17:
                    revert with 0, 18
                return arg1 * s * s * t >= 10^18 * stor14 / stor15, arg1 * s * s * t <= 10^18 * stor16 / stor17
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg1 and s * s * s * t > -1 / arg1:
                revert with 0, 17
            if 0 > !(arg1 * s * s * s * t):
                revert with 0, 17
            if not arg3:
                if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor11:
                    revert with 0, 18
                if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor13:
                    revert with 0, 18
                return arg1 * s * s * s * t >= 10^18 * stor10 / stor11, arg1 * s * s * s * t <= 10^18 * stor12 / stor13
            if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor15:
                revert with 0, 18
            if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor17:
                revert with 0, 18
            return arg1 * s * s * s * t >= 10^18 * stor14 / stor15, arg1 * s * s * s * t <= 10^18 * stor16 / stor17
        revert with 0, 17
    if var27002 > -1 / var27001:
        revert with 0, 17
    if arg1 and var27001 * var27002 > -1 / arg1:
        revert with 0, 17
    if 0 > !(arg1 * var27001 * var27002):
        revert with 0, 17
    if not arg3:
        if stor10 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor11:
            revert with 0, 18
        if stor12 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        return arg1 * var27001 * var27002 >= 10^18 * stor10 / stor11, arg1 * var27001 * var27002 <= 10^18 * stor12 / stor13
    if stor14 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor15:
        revert with 0, 18
    if stor16 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor17:
        revert with 0, 18
    return arg1 * var27001 * var27002 >= 10^18 * stor14 / stor15, arg1 * var27001 * var27002 <= 10^18 * stor16 / stor17
}

function sub_f33c551f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    mem[64] = (32 * uint256(stor5[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor5[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor5[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 5)
        _36 = mem[64]
        mem[64] = mem[64] + 320
        mem[_36] = address(stor5[address(arg1)][idx].field_0)
        if bool(stor5[address(arg1)][idx].field_256):
            if bool(stor5[address(arg1)][idx].field_256) == uint255(stor5[address(arg1)][idx].field_257) < 32:
                revert with 0, 34
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_257)) + 32
            mem[_40] = uint255(stor5[address(arg1)][idx].field_257)
            if bool(stor5[address(arg1)][idx].field_256):
                if bool(stor5[address(arg1)][idx].field_256) == uint255(stor5[address(arg1)][idx].field_257) < 32:
                    revert with 0, 34
                if uint255(stor5[address(arg1)][idx].field_257):
                    if 31 >= uint255(stor5[address(arg1)][idx].field_257):
                        mem[_40 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 1
                        mem[_40 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 1)].field_0)
                        t = _40 + 32
                        u = sha3(mem[0])
                        while _40 + uint255(stor5[address(arg1)][idx].field_257) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_256) == stor5[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_257 % 128:
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_257 % 128:
                mem[_40 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_264)
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 1
            mem[_40 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 1)].field_0)
            t = _40 + 32
            u = sha3(mem[0])
            while _40 + stor5[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 32] = _40
            mem[_36 + 64] = uint256(stor5[address(arg1)][u].field_512)
            mem[_36 + 96] = uint256(stor5[address(arg1)][u].field_768)
            mem[_36 + 128] = uint8(stor5[address(arg1)][u].field_1024)
            mem[_36 + 160] = address(stor5[address(arg1)][u].field_1032)
            mem[_36 + 192] = uint256(stor5[address(arg1)][u].field_1280)
            mem[_36 + 224] = uint256(stor5[address(arg1)][u].field_1536)
            mem[_36 + 256] = uint16(stor5[address(arg1)][u].field_1792)
            mem[_36 + 288] = uint16(stor5[address(arg1)][u].field_1808)
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_256) == stor5[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_257 % 128) + 32
        mem[_43] = stor5[address(arg1)][idx].field_257 % 128
        if bool(stor5[address(arg1)][idx].field_256):
            if bool(stor5[address(arg1)][idx].field_256) == uint255(stor5[address(arg1)][idx].field_257) < 32:
                revert with 0, 34
            if not uint255(stor5[address(arg1)][idx].field_257):
                mem[_36 + 32] = _43
                mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[address(arg1)][idx].field_257):
                mem[_43 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_264)
                mem[_36 + 32] = _43
                mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 1
            mem[_43 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 1)].field_0)
            t = _43 + 32
            u = sha3(mem[0])
            while _43 + uint255(stor5[address(arg1)][u].field_257) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 32] = _43
            mem[_36 + 64] = uint256(stor5[address(arg1)][u].field_512)
            mem[_36 + 96] = uint256(stor5[address(arg1)][u].field_768)
            mem[_36 + 128] = uint8(stor5[address(arg1)][u].field_1024)
            mem[_36 + 160] = address(stor5[address(arg1)][u].field_1032)
            mem[_36 + 192] = uint256(stor5[address(arg1)][u].field_1280)
            mem[_36 + 224] = uint256(stor5[address(arg1)][u].field_1536)
            mem[_36 + 256] = uint16(stor5[address(arg1)][u].field_1792)
            mem[_36 + 288] = uint16(stor5[address(arg1)][u].field_1808)
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_256) == stor5[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_257 % 128:
            if 31 >= stor5[address(arg1)][idx].field_257 % 128:
                mem[_43 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 5)) + (8 * idx) + 1
                mem[_43 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor5', 5)) + (8 * idx) + 1)].field_0)
                t = _43 + 32
                u = sha3(mem[0])
                while _43 + stor5[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_36 + 32] = _43
        mem[_36 + 64] = uint256(stor5[address(arg1)][idx].field_512)
        mem[_36 + 96] = uint256(stor5[address(arg1)][idx].field_768)
        mem[_36 + 128] = uint8(stor5[address(arg1)][idx].field_1024)
        mem[_36 + 160] = address(stor5[address(arg1)][idx].field_1032)
        mem[_36 + 192] = uint256(stor5[address(arg1)][idx].field_1280)
        mem[_36 + 224] = uint256(stor5[address(arg1)][idx].field_1536)
        mem[_36 + 256] = uint16(stor5[address(arg1)][idx].field_1792)
        mem[_36 + 288] = uint16(stor5[address(arg1)][idx].field_1808)
        mem[s] = _36
        s = s + 32
        idx = idx + 1
        continue 
    _37 = mem[64]
    mem[mem[64]] = 32
    _38 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    t = 128
    u = mem[64] + 64
    v = mem[64] + (32 * mem[96]) + 64
    while idx < _38:
        mem[u] = v + -_37 - 64
        _67 = mem[t]
        mem[v] = mem[mem[t] + 12 len 20]
        _70 = mem[_67 + 32]
        mem[v + 32] = 320
        _71 = mem[_70]
        mem[v + 320] = mem[_70]
        w = 0
        while w < _71:
            mem[w + v + 352] = mem[w + _70 + 32]
            w = w + 32
            continue 
        if ceil32(_71) > _71:
            mem[_71 + v + 352] = 0
        mem[v + 64] = mem[_67 + 64]
        mem[v + 96] = mem[_67 + 96]
        mem[v + 128] = mem[_67 + 159 len 1]
        mem[v + 160] = mem[_67 + 172 len 20]
        mem[v + 192] = mem[_67 + 192]
        mem[v + 224] = mem[_67 + 224]
        mem[v + 256] = mem[_67 + 286 len 2]
        mem[v + 288] = mem[_67 + 318 len 2]
        idx = idx + 1
        t = t + 32
        u = u + 32
        v = ceil32(_71) + v + 352
        continue 
    return memory
      from mem[64]
       len v - mem[64]
}

function sub_4732f56c(?) payable {
    mem[64] = 96
    if msg.sender == _owner:
        idx = 0
        while idx < sub_bbc70e13.length:
            if 1 > !idx:
                revert with 0, 17
            s = idx + 1
            while s < sub_bbc70e13.length:
                if idx >= sub_bbc70e13.length:
                    revert with 0, 50
                mem[0] = 8
                if uint256(sub_bbc70e13[idx].field_0) > uint256(sub_bbc70e13[s].field_0):
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 8
                    _88 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_88] = uint256(sub_bbc70e13[idx].field_0)
                    mem[_88 + 32] = uint16(sub_bbc70e13[idx].field_256)
                    mem[_88 + 64] = uint16(sub_bbc70e13[idx].field_272)
                    mem[_88 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
                    mem[_88 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
                    mem[_88 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
                    if s >= sub_bbc70e13.length:
                        revert with 0, 50
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    uint256(sub_bbc70e13[idx].field_0) = uint256(sub_bbc70e13[s].field_0)
                    uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                    uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                    Mask(240, 0, sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                    Mask(224, 0, sub_bbc70e13[idx].field_288) = 0
                    uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                    uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                    Mask(224, 0, sub_bbc70e13[idx].field_288) = Mask(224, 0, bool(uint8(sub_bbc70e13[s].field_288)))
                    Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                    Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                    uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                    uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                    uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                    Mask(216, 0, sub_bbc70e13[idx].field_296) = Mask(216, 0, bool(uint8(sub_bbc70e13[s].field_296)))
                    Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                    Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                    Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 16, bool(uint8(sub_bbc70e13[s].field_288))) >> 16
                    uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                    uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                    uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                    uint8(sub_bbc70e13[idx].field_296) = uint8(bool(uint8(sub_bbc70e13[s].field_296)))
                    Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[s].field_304)))
                    Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                    Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                    Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[s].field_288))) >> 24
                    Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[s].field_296))) >> 16
                    if s >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 8
                    uint256(sub_bbc70e13[s].field_0) = uint256(sub_bbc70e13[idx].field_0)
                    uint16(sub_bbc70e13[s].field_256) = uint16(sub_bbc70e13[idx].field_256)
                    uint16(sub_bbc70e13[s].field_272) = uint16(sub_bbc70e13[idx].field_272)
                    uint8(sub_bbc70e13[s].field_288) = uint8(bool(uint8(sub_bbc70e13[idx].field_288)))
                    uint8(sub_bbc70e13[s].field_296) = uint8(bool(uint8(sub_bbc70e13[idx].field_296)))
                    Mask(208, 0, sub_bbc70e13[s].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[idx].field_304)))
                    Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[idx].field_296))) >> 16
                    Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[idx].field_288))) >> 24
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == address(stor1.length):
            idx = 0
            while idx < sub_bbc70e13.length:
                if 1 > !idx:
                    revert with 0, 17
                s = idx + 1
                while s < sub_bbc70e13.length:
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 8
                    if uint256(sub_bbc70e13[idx].field_0) > uint256(sub_bbc70e13[s].field_0):
                        if idx >= sub_bbc70e13.length:
                            revert with 0, 50
                        mem[0] = 8
                        _90 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_90] = uint256(sub_bbc70e13[idx].field_0)
                        mem[_90 + 32] = uint16(sub_bbc70e13[idx].field_256)
                        mem[_90 + 64] = uint16(sub_bbc70e13[idx].field_272)
                        mem[_90 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
                        mem[_90 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
                        mem[_90 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
                        if s >= sub_bbc70e13.length:
                            revert with 0, 50
                        if idx >= sub_bbc70e13.length:
                            revert with 0, 50
                        uint256(sub_bbc70e13[idx].field_0) = uint256(sub_bbc70e13[s].field_0)
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        Mask(240, 0, sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        Mask(224, 0, sub_bbc70e13[idx].field_288) = 0
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        Mask(224, 0, sub_bbc70e13[idx].field_288) = Mask(224, 0, bool(uint8(sub_bbc70e13[s].field_288)))
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = Mask(216, 0, bool(uint8(sub_bbc70e13[s].field_296)))
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 16, bool(uint8(sub_bbc70e13[s].field_288))) >> 16
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                        uint8(sub_bbc70e13[idx].field_296) = uint8(bool(uint8(sub_bbc70e13[s].field_296)))
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[s].field_304)))
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[s].field_288))) >> 24
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[s].field_296))) >> 16
                        if s >= sub_bbc70e13.length:
                            revert with 0, 50
                        mem[0] = 8
                        uint256(sub_bbc70e13[s].field_0) = uint256(sub_bbc70e13[idx].field_0)
                        uint16(sub_bbc70e13[s].field_256) = uint16(sub_bbc70e13[idx].field_256)
                        uint16(sub_bbc70e13[s].field_272) = uint16(sub_bbc70e13[idx].field_272)
                        uint8(sub_bbc70e13[s].field_288) = uint8(bool(uint8(sub_bbc70e13[idx].field_288)))
                        uint8(sub_bbc70e13[s].field_296) = uint8(bool(uint8(sub_bbc70e13[idx].field_296)))
                        Mask(208, 0, sub_bbc70e13[s].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[idx].field_304)))
                        Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[idx].field_296))) >> 16
                        Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[idx].field_288))) >> 24
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
            idx = 0
            while idx < sub_bbc70e13.length:
                if 1 > !idx:
                    revert with 0, 17
                s = idx + 1
                while s < sub_bbc70e13.length:
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 8
                    if uint256(sub_bbc70e13[idx].field_0) > uint256(sub_bbc70e13[s].field_0):
                        if idx >= sub_bbc70e13.length:
                            revert with 0, 50
                        mem[0] = 8
                        _92 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_92] = uint256(sub_bbc70e13[idx].field_0)
                        mem[_92 + 32] = uint16(sub_bbc70e13[idx].field_256)
                        mem[_92 + 64] = uint16(sub_bbc70e13[idx].field_272)
                        mem[_92 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
                        mem[_92 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
                        mem[_92 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
                        if s >= sub_bbc70e13.length:
                            revert with 0, 50
                        if idx >= sub_bbc70e13.length:
                            revert with 0, 50
                        uint256(sub_bbc70e13[idx].field_0) = uint256(sub_bbc70e13[s].field_0)
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        Mask(240, 0, sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        Mask(224, 0, sub_bbc70e13[idx].field_288) = 0
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        Mask(224, 0, sub_bbc70e13[idx].field_288) = Mask(224, 0, bool(uint8(sub_bbc70e13[s].field_288)))
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = 0
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                        Mask(216, 0, sub_bbc70e13[idx].field_296) = Mask(216, 0, bool(uint8(sub_bbc70e13[s].field_296)))
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = 0
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 16, bool(uint8(sub_bbc70e13[s].field_288))) >> 16
                        uint16(sub_bbc70e13[idx].field_256) = uint16(sub_bbc70e13[s].field_256)
                        uint16(sub_bbc70e13[idx].field_272) = uint16(sub_bbc70e13[s].field_272)
                        uint8(sub_bbc70e13[idx].field_288) = uint8(bool(uint8(sub_bbc70e13[s].field_288)))
                        uint8(sub_bbc70e13[idx].field_296) = uint8(bool(uint8(sub_bbc70e13[s].field_296)))
                        Mask(208, 0, sub_bbc70e13[idx].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[s].field_304)))
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = 0
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[s].field_288))) >> 24
                        Mask(200, 0, sub_bbc70e13[idx].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[s].field_296))) >> 16
                        if s >= sub_bbc70e13.length:
                            revert with 0, 50
                        mem[0] = 8
                        uint256(sub_bbc70e13[s].field_0) = uint256(sub_bbc70e13[idx].field_0)
                        uint16(sub_bbc70e13[s].field_256) = uint16(sub_bbc70e13[idx].field_256)
                        uint16(sub_bbc70e13[s].field_272) = uint16(sub_bbc70e13[idx].field_272)
                        uint8(sub_bbc70e13[s].field_288) = uint8(bool(uint8(sub_bbc70e13[idx].field_288)))
                        uint8(sub_bbc70e13[s].field_296) = uint8(bool(uint8(sub_bbc70e13[idx].field_296)))
                        Mask(208, 0, sub_bbc70e13[s].field_304) = Mask(208, 0, bool(uint8(sub_bbc70e13[idx].field_304)))
                        Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 16, bool(uint8(sub_bbc70e13[idx].field_296))) >> 16
                        Mask(200, 0, sub_bbc70e13[s].field_312) = Mask(200, 24, bool(uint8(sub_bbc70e13[idx].field_288))) >> 24
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function sub_dbcdf378(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == _owner:
        if not address(arg1):
            revert with 0, 'Contract Address invalid'
        if uint256(stor4[address(arg1)].field_0) >= stor3.length:
            revert with 0, 50
        if not address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
            revert with 0, 'Stablecoin not found'
        if uint256(stor4[address(arg1)].field_0) >= stor3.length:
            revert with 0, 50
        idx = 0
        s = 1
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = address(stor6[idx].field_0)
            mem[32] = 5
            if var30005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor6.length:
                revert with 0, 50
            mem[32] = 5
            if var34006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var36002
            if address(stor[(8 * var36001) + sha3(var36002) + 4].field_8) == address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                continue 
            if var40001 == -1:
                revert with 0, 17
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = address(stor6[idx].field_0)
            mem[32] = 5
            if var48005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor6.length:
                revert with 0, 50
            mem[32] = 5
            if var52006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var54002
            if address(stor[(8 * var54001) + sha3(var54002) + 4].field_8) != address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                if var58001 == -1:
                    revert with 0, 17
                # nil
            else:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                continue 
    else:
        if msg.sender == address(stor1.length):
            if not address(arg1):
                revert with 0, 'Contract Address invalid'
            if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                revert with 0, 50
            if not address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                revert with 0, 'Stablecoin not found'
            if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                revert with 0, 50
            idx = 0
            s = 1
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var31005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                mem[32] = 5
                if var35006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var37002
                if address(stor[(8 * var37001) + sha3(var37002) + 4].field_8) == address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    continue 
                if var41001 == -1:
                    revert with 0, 17
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var49005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                mem[32] = 5
                if var53006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var55002
                if address(stor[(8 * var55001) + sha3(var55002) + 4].field_8) != address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                    if var59001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    continue 
        else:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
            if not address(arg1):
                revert with 0, 'Contract Address invalid'
            if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                revert with 0, 50
            if not address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                revert with 0, 'Stablecoin not found'
            if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                revert with 0, 50
            idx = 0
            s = 1
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var32005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                mem[32] = 5
                if var36006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var38002
                if address(stor[(8 * var38001) + sha3(var38002) + 4].field_8) == address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    continue 
                if var42001 == -1:
                    revert with 0, 17
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var50005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                mem[32] = 5
                if var54006 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var56002
                if address(stor[(8 * var56001) + sha3(var56002) + 4].field_8) != address(stor3[uint256(stor4[address(arg1)].field_0)].field_256):
                    if var60001 == -1:
                        revert with 0, 17
                    # nil
                else:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = 0
                    continue 
    if not s:
        revert with 0, 'Stablecoin is still in use.'
    if 1 < stor3.length:
        if stor3.length < 1:
            revert with 0, 17
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        uint256(stor3[stor3.length - 1].field_0) = uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)
        if stor3.length < 1:
            revert with 0, 17
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0) >= stor3.length:
            revert with 0, 50
        uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_0) = uint256(stor3[stor3.length - 1].field_0)
        address(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_256) = address(stor3[stor3.length - 1].field_256)
        if bool(stor3[stor3.length - 1].field_512):
            if bool(stor3[stor3.length - 1].field_512) == uint255(stor3[stor3.length - 1].field_513) < 32:
                revert with 0, 34
            if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512):
                if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) == uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor3[stor3.length - 1].field_513):
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = 0
                    idx = 0
                    while uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = (2 * uint255(stor3[stor3.length - 1].field_513)) + 1
                    s = 0
                    idx = 0
                    while uint255(stor3[stor3.length - 1].field_513) + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint255(stor3[stor3.length - 1].field_513) + 31 / 32
                    while uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) == stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 < 32:
                    revert with 0, 34
                if not uint255(stor3[stor3.length - 1].field_513):
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = 0
                    idx = 0
                    while stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = (2 * uint255(stor3[stor3.length - 1].field_513)) + 1
                    s = 0
                    idx = 0
                    while uint255(stor3[stor3.length - 1].field_513) + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint255(stor3[stor3.length - 1].field_513) + 31 / 32
                    while stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor3[stor3.length - 1].field_512) == stor3[stor3.length - 1].field_513 % 128 < 32:
                revert with 0, 34
            if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512):
                if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) == uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) < 32:
                    revert with 0, 34
                if not stor3[stor3.length - 1].field_513 % 128:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = 0
                    idx = 0
                    while uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = (2 * stor3[stor3.length - 1].field_513 % 128) + 1
                    s = 0
                    idx = 0
                    while stor3[stor3.length - 1].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor3[stor3.length - 1].field_513 % 128 + 31 / 32
                    while uint255(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) == stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor3[stor3.length - 1].field_513 % 128:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = 0
                    idx = 0
                    while stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_512) = (2 * stor3[stor3.length - 1].field_513 % 128) + 1
                    s = 0
                    idx = 0
                    while stor3[stor3.length - 1].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor3[stor3.length - 1].field_513 % 128 + 31 / 32
                    while stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)) + ('name', 'stor3', 3) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
        uint8(stor3[uint256(stor3[uint256(stor4[address(arg1)].field_0)].field_0)].field_768) = uint8(stor3[stor3.length - 1].field_768)
    if not stor3.length:
        revert with 0, 49
    uint256(stor3[stor3.length - 1].field_0) = 0
    address(stor3[stor3.length - 1].field_256) = 0
    if bool(stor3[stor3.length - 1].field_512):
        if bool(stor3[stor3.length - 1].field_512) == uint255(stor3[stor3.length - 1].field_513) < 32:
            revert with 0, 34
        uint256(stor3[stor3.length - 1].field_512) = 0
        if 31 < uint255(stor3[stor3.length - 1].field_513):
            idx = 0
            while uint255(stor3[stor3.length - 1].field_513) + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[stor3.length - 1].field_512) == stor3[stor3.length - 1].field_513 % 128 < 32:
            revert with 0, 34
        uint256(stor3[stor3.length - 1].field_512) = 0
        if 31 < stor3[stor3.length - 1].field_513 % 128:
            idx = 0
            while stor3[stor3.length - 1].field_513 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor3.length - 1) + ('name', 'stor3', 3) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    uint8(stor3[stor3.length - 1].field_768) = 0
    stor3.length--
    uint256(stor4[address(arg1)].field_0) = 0
}

function sub_d1a72d73(?) payable {
    if msg.sender == _owner:
        if stor3.length > test266151307():
            revert with 0, 65
        mem[96] = stor3.length
        if not stor3.length:
            if stor3.length > test266151307():
                revert with 0, 65
            mem[(32 * stor3.length) + 128] = stor3.length
            mem[64] = (64 * stor3.length) + 160
            if not stor3.length:
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(stor3[idx].field_256))
                    staticcall address(stor3[idx].field_256).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_253]
                    if idx >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _180 = mem[64]
                mem[mem[64]] = 64
                _216 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _360 = mem[(32 * stor3.length) + 128]
                mem[_180 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
                idx = 0
                s = (32 * stor3.length) + 160
                t = _180 + (32 * _216) + 128
                while idx < _360:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _180 + (32 * _216) + (32 * _360) + -mem[64] + 128
            mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx].field_256))
                staticcall address(stor3[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_255]
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _183 = mem[64]
            mem[mem[64]] = 64
            _217 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _361 = mem[(32 * stor3.length) + 128]
            mem[_183 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _183 + (32 * _217) + 128
            while idx < _361:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _183 + (32 * _217) + (32 * _361) + -mem[64] + 128
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        if stor3.length > test266151307():
            revert with 0, 65
        mem[(32 * stor3.length) + 128] = stor3.length
        mem[64] = (64 * stor3.length) + 160
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx].field_256))
                staticcall address(stor3[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_257]
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _186 = mem[64]
            mem[mem[64]] = 64
            _218 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _362 = mem[(32 * stor3.length) + 128]
            mem[_186 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _186 + (32 * _218) + 128
            while idx < _362:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _186 + (32 * _218) + (32 * _362) + -mem[64] + 128
        mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor3[idx].field_256))
            staticcall address(stor3[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_259]
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _189 = mem[64]
        mem[mem[64]] = 64
        _219 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _363 = mem[(32 * stor3.length) + 128]
        mem[_189 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
        idx = 0
        s = (32 * stor3.length) + 160
        t = _189 + (32 * _219) + 128
        while idx < _363:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _189 + (32 * _219) + (32 * _363) + -mem[64] + 128
    if msg.sender == address(stor1.length):
        if stor3.length > test266151307():
            revert with 0, 65
        mem[96] = stor3.length
        if not stor3.length:
            if stor3.length > test266151307():
                revert with 0, 65
            mem[(32 * stor3.length) + 128] = stor3.length
            mem[64] = (64 * stor3.length) + 160
            if not stor3.length:
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(stor3[idx].field_256))
                    staticcall address(stor3[idx].field_256).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_261]
                    if idx >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 64
                _220 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _364 = mem[(32 * stor3.length) + 128]
                mem[_192 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
                idx = 0
                s = (32 * stor3.length) + 160
                t = _192 + (32 * _220) + 128
                while idx < _364:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _192 + (32 * _220) + (32 * _364) + -mem[64] + 128
            mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx].field_256))
                staticcall address(stor3[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_263]
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _195 = mem[64]
            mem[mem[64]] = 64
            _221 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _365 = mem[(32 * stor3.length) + 128]
            mem[_195 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _195 + (32 * _221) + 128
            while idx < _365:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _195 + (32 * _221) + (32 * _365) + -mem[64] + 128
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        if stor3.length > test266151307():
            revert with 0, 65
        mem[(32 * stor3.length) + 128] = stor3.length
        mem[64] = (64 * stor3.length) + 160
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx].field_256))
                staticcall address(stor3[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_265]
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _198 = mem[64]
            mem[mem[64]] = 64
            _222 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _366 = mem[(32 * stor3.length) + 128]
            mem[_198 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _198 + (32 * _222) + 128
            while idx < _366:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _198 + (32 * _222) + (32 * _366) + -mem[64] + 128
        mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor3[idx].field_256))
            staticcall address(stor3[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_267]
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _201 = mem[64]
        mem[mem[64]] = 64
        _223 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _367 = mem[(32 * stor3.length) + 128]
        mem[_201 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
        idx = 0
        s = (32 * stor3.length) + 160
        t = _201 + (32 * _223) + 128
        while idx < _367:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _201 + (32 * _223) + (32 * _367) + -mem[64] + 128
    if address(stor2.length) != msg.sender:
        revert with 0, 'Only owner or manager allowed'
    if stor3.length > test266151307():
        revert with 0, 65
    mem[96] = stor3.length
    if not stor3.length:
        if stor3.length > test266151307():
            revert with 0, 65
        mem[(32 * stor3.length) + 128] = stor3.length
        mem[64] = (64 * stor3.length) + 160
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                mem[0] = 3
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor3[idx].field_256))
                staticcall address(stor3[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_269]
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if idx >= mem[(32 * stor3.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _204 = mem[64]
            mem[mem[64]] = 64
            _224 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _368 = mem[(32 * stor3.length) + 128]
            mem[_204 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _204 + (32 * _224) + 128
            while idx < _368:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _204 + (32 * _224) + (32 * _368) + -mem[64] + 128
        mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor3[idx].field_256))
            staticcall address(stor3[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_271]
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _207 = mem[64]
        mem[mem[64]] = 64
        _225 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _369 = mem[(32 * stor3.length) + 128]
        mem[_207 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
        idx = 0
        s = (32 * stor3.length) + 160
        t = _207 + (32 * _225) + 128
        while idx < _369:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _207 + (32 * _225) + (32 * _369) + -mem[64] + 128
    mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    if stor3.length > test266151307():
        revert with 0, 65
    mem[(32 * stor3.length) + 128] = stor3.length
    mem[64] = (64 * stor3.length) + 160
    if not stor3.length:
        idx = 0
        while idx < stor3.length:
            mem[0] = 3
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor3[idx].field_256))
            staticcall address(stor3[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_273]
            if idx >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if idx >= mem[(32 * stor3.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _210 = mem[64]
        mem[mem[64]] = 64
        _226 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _370 = mem[(32 * stor3.length) + 128]
        mem[_210 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
        idx = 0
        s = (32 * stor3.length) + 160
        t = _210 + (32 * _226) + 128
        while idx < _370:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _210 + (32 * _226) + (32 * _370) + -mem[64] + 128
    mem[(32 * stor3.length) + 160 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor3[idx].field_256))
        staticcall address(stor3[idx].field_256).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_275]
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        if idx >= mem[(32 * stor3.length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor3.length) + 160] = address(stor3[idx].field_256)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _213 = mem[64]
    mem[mem[64]] = 64
    _227 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _371 = mem[(32 * stor3.length) + 128]
    mem[_213 + (32 * mem[96]) + 96] = mem[(32 * stor3.length) + 128]
    idx = 0
    s = (32 * stor3.length) + 160
    t = _213 + (32 * _227) + 128
    while idx < _371:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _213 + (32 * _227) + (32 * _371) + -mem[64] + 128
}

function getCoins() payable {
    if stor3.length > test266151307():
        revert with 0, 65
    mem[96] = stor3.length
    if not stor3.length:
        if stor3.length > test266151307():
            revert with 0, 65
        mem[(32 * stor3.length) + 128] = stor3.length
        mem[64] = (64 * stor3.length) + 160
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor3[idx].field_256)
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if bool(stor3[idx].field_512):
                    if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                        revert with 0, 34
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_513)) + 32
                    mem[_144] = uint255(stor3[idx].field_513)
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_144 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_144 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _144 + 32
                                t = sha3(mem[0])
                                while _144 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_144 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_144 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _144 + 32
                                t = sha3(mem[0])
                                while _144 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _144
                else:
                    if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _147 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].field_513 % 128) + 32
                    mem[_147] = stor3[idx].field_513 % 128
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_147 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_147 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _147 + 32
                                t = sha3(mem[0])
                                while _147 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_147 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_147 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _147 + 32
                                t = sha3(mem[0])
                                while _147 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _147
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _120 = mem[64]
            mem[mem[64]] = 64
            _126 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _126:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_120 + 32] = (32 * _126) + 96
            _238 = mem[(32 * stor3.length) + 128]
            mem[_120 + (32 * _126) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _120 + (32 * _126) + (32 * _238) + 128
            u = _120 + (32 * _126) + 128
            while idx < _238:
                mem[u] = t + -_120 + -(32 * _126) - 128
                _314 = mem[s]
                _319 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _319:
                    mem[v + t + 32] = mem[v + _314 + 32]
                    v = v + 32
                    continue 
                if ceil32(_319) > _319:
                    mem[_319 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_319) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * stor3.length) + 160] = 96
            s = (32 * stor3.length) + 160
            idx = stor3.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor3.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor3[idx].field_256)
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if bool(stor3[idx].field_512):
                    if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                        revert with 0, 34
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_513)) + 32
                    mem[_269] = uint255(stor3[idx].field_513)
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_269 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_269 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _269 + 32
                                t = sha3(mem[0])
                                while _269 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_269 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_269 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _269 + 32
                                t = sha3(mem[0])
                                while _269 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _269
                else:
                    if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _273 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].field_513 % 128) + 32
                    mem[_273] = stor3[idx].field_513 % 128
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_273 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_273 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _273 + 32
                                t = sha3(mem[0])
                                while _273 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_273 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_273 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _273 + 32
                                t = sha3(mem[0])
                                while _273 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _273
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _243 = mem[64]
            mem[mem[64]] = 64
            _255 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _255:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_243 + 32] = (32 * _255) + 96
            _320 = mem[(32 * stor3.length) + 128]
            mem[_243 + (32 * _255) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _243 + (32 * _255) + (32 * _320) + 128
            u = _243 + (32 * _255) + 128
            while idx < _320:
                mem[u] = t + -_243 + -(32 * _255) - 128
                _343 = mem[s]
                _347 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _347:
                    mem[v + t + 32] = mem[v + _343 + 32]
                    v = v + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_347 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_347) + t + 32
                u = u + 32
                continue 
    else:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
        if stor3.length > test266151307():
            revert with 0, 65
        mem[(32 * stor3.length) + 128] = stor3.length
        mem[64] = (64 * stor3.length) + 160
        if not stor3.length:
            idx = 0
            while idx < stor3.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor3[idx].field_256)
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if bool(stor3[idx].field_512):
                    if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                        revert with 0, 34
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_513)) + 32
                    mem[_145] = uint255(stor3[idx].field_513)
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_145 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_145 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _145 + 32
                                t = sha3(mem[0])
                                while _145 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_145 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_145 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _145 + 32
                                t = sha3(mem[0])
                                while _145 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _145
                else:
                    if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _150 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].field_513 % 128) + 32
                    mem[_150] = stor3[idx].field_513 % 128
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_150 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_150 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _150 + 32
                                t = sha3(mem[0])
                                while _150 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_150 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_150 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _150 + 32
                                t = sha3(mem[0])
                                while _150 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _150
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _123 = mem[64]
            mem[mem[64]] = 64
            _128 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _128:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_123 + 32] = (32 * _128) + 96
            _246 = mem[(32 * stor3.length) + 128]
            mem[_123 + (32 * _128) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _123 + (32 * _128) + (32 * _246) + 128
            u = _123 + (32 * _128) + 128
            while idx < _246:
                mem[u] = t + -_123 + -(32 * _128) - 128
                _316 = mem[s]
                _326 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _326:
                    mem[v + t + 32] = mem[v + _316 + 32]
                    v = v + 32
                    continue 
                if ceil32(_326) > _326:
                    mem[_326 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_326) + t + 32
                u = u + 32
                continue 
        else:
            mem[(32 * stor3.length) + 160] = 96
            s = (32 * stor3.length) + 160
            idx = stor3.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor3.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor3[idx].field_256)
                if idx >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if bool(stor3[idx].field_512):
                    if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                        revert with 0, 34
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor3[idx].field_513)) + 32
                    mem[_271] = uint255(stor3[idx].field_513)
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_271 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_271 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _271 + 32
                                t = sha3(mem[0])
                                while _271 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_271 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_271 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _271 + 32
                                t = sha3(mem[0])
                                while _271 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _271
                else:
                    if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _275 = mem[64]
                    mem[64] = mem[64] + ceil32(stor3[idx].field_513 % 128) + 32
                    mem[_275] = stor3[idx].field_513 % 128
                    if bool(stor3[idx].field_512):
                        if bool(stor3[idx].field_512) == uint255(stor3[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor3[idx].field_513):
                            if 31 >= uint255(stor3[idx].field_513):
                                mem[_275 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_275 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _275 + 32
                                t = sha3(mem[0])
                                while _275 + uint255(stor3[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor3[idx].field_512) == stor3[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor3[idx].field_513 % 128:
                            if 31 >= stor3[idx].field_513 % 128:
                                mem[_275 + 32] = 256 * Mask(248, 0, stor3[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(3) + 2
                                mem[_275 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor3', 3) + 2)].field_0)
                                s = _275 + 32
                                t = sha3(mem[0])
                                while _275 + stor3[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor3.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor3.length) + 160] = _275
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _251 = mem[64]
            mem[mem[64]] = 64
            _258 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _258:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_251 + 32] = (32 * _258) + 96
            _327 = mem[(32 * stor3.length) + 128]
            mem[_251 + (32 * _258) + 96] = mem[(32 * stor3.length) + 128]
            idx = 0
            s = (32 * stor3.length) + 160
            t = _251 + (32 * _258) + (32 * _327) + 128
            u = _251 + (32 * _258) + 128
            while idx < _327:
                mem[u] = t + -_251 + -(32 * _258) - 128
                _345 = mem[s]
                _349 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _349:
                    mem[v + t + 32] = mem[v + _345 + 32]
                    v = v + 32
                    continue 
                if ceil32(_349) > _349:
                    mem[_349 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_349) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function addCoin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == _owner:
        if not arg1:
            revert with 0, 'Contract Address invalid'
        mem[0] = arg1
        mem[32] = 4
        if not stor3.length:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
            _64 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _64 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_64)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_64)]
            mem[0] = arg1
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = stor3.length
            if ceil32(_64) <= _64:
                _334 = mem[64]
                mem[64] = mem[64] + 128
                mem[_334] = stor3.length
                mem[_334 + 32] = arg1
                mem[_334 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_334 + 96] = uint8(ext_call.return_data[0])
            else:
                _340 = mem[64]
                mem[64] = mem[64] + 128
                mem[_340] = stor3.length
                mem[_340 + 32] = arg1
                mem[_340 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_340 + 96] = uint8(ext_call.return_data[0])
            stor3.length++
            uint256(stor3[stor3.length].field_0) = stor3.length
            storC257[stor3.length] = arg1
            if bool(storC257[stor3.length].field_0):
                if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                    revert with 0, 34
                if _64:
                    uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_64, data=mem[(2 * ceil32(return_data.size)) + 128 len _64])
                else:
                    uint256(storC257[stor3.length].field_0) = 0
                    idx = 0
                    while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _64:
                    uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_64, data=mem[(2 * ceil32(return_data.size)) + 128 len _64])
                else:
                    uint256(storC257[stor3.length].field_0) = 0
                    idx = 0
                    while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if address(stor3[uint256(stor4[address(arg1)].field_0)].field_256) == arg1:
                revert with 0, 'Stablecoin already added'
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96] <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
            _70 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _70 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_70)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_70)]
            mem[0] = arg1
            mem[32] = 4
            uint256(stor4[address(arg1)].field_0) = stor3.length
            if ceil32(_70) <= _70:
                _346 = mem[64]
                mem[64] = mem[64] + 128
                mem[_346] = stor3.length
                mem[_346 + 32] = arg1
                mem[_346 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_346 + 96] = uint8(ext_call.return_data[0])
            else:
                _352 = mem[64]
                mem[64] = mem[64] + 128
                mem[_352] = stor3.length
                mem[_352 + 32] = arg1
                mem[_352 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_352 + 96] = uint8(ext_call.return_data[0])
            stor3.length++
            uint256(stor3[stor3.length].field_0) = stor3.length
            storC257[stor3.length] = arg1
            if bool(storC257[stor3.length].field_0):
                if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                    revert with 0, 34
                if _70:
                    uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_70, data=mem[(2 * ceil32(return_data.size)) + 128 len _70])
                else:
                    uint256(storC257[stor3.length].field_0) = 0
                    idx = 0
                    while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _70:
                    uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_70, data=mem[(2 * ceil32(return_data.size)) + 128 len _70])
                else:
                    uint256(storC257[stor3.length].field_0) = 0
                    idx = 0
                    while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                        idx = idx + 1
                        continue 
    else:
        if msg.sender == address(stor1.length):
            if not arg1:
                revert with 0, 'Contract Address invalid'
            mem[0] = arg1
            mem[32] = 4
            if not stor3.length:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                staticcall arg1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
                _68 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
                require mem[ceil32(return_data.size) + 96] + _68 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_68)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_68)]
                mem[0] = arg1
                mem[32] = 4
                uint256(stor4[address(arg1)].field_0) = stor3.length
                if ceil32(_68) <= _68:
                    _358 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_358] = stor3.length
                    mem[_358 + 32] = arg1
                    mem[_358 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_358 + 96] = uint8(ext_call.return_data[0])
                else:
                    _364 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_364] = stor3.length
                    mem[_364 + 32] = arg1
                    mem[_364 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_364 + 96] = uint8(ext_call.return_data[0])
                stor3.length++
                uint256(stor3[stor3.length].field_0) = stor3.length
                storC257[stor3.length] = arg1
                if bool(storC257[stor3.length].field_0):
                    if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                        revert with 0, 34
                    if _68:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_68, data=mem[(2 * ceil32(return_data.size)) + 128 len _68])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if _68:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_68, data=mem[(2 * ceil32(return_data.size)) + 128 len _68])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if address(stor3[uint256(stor4[address(arg1)].field_0)].field_256) == arg1:
                    revert with 0, 'Stablecoin already added'
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                staticcall arg1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
                _73 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
                require mem[ceil32(return_data.size) + 96] + _73 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_73)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_73)]
                mem[0] = arg1
                mem[32] = 4
                uint256(stor4[address(arg1)].field_0) = stor3.length
                if ceil32(_73) <= _73:
                    _370 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_370] = stor3.length
                    mem[_370 + 32] = arg1
                    mem[_370 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_370 + 96] = uint8(ext_call.return_data[0])
                else:
                    _376 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_376] = stor3.length
                    mem[_376 + 32] = arg1
                    mem[_376 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_376 + 96] = uint8(ext_call.return_data[0])
                stor3.length++
                uint256(stor3[stor3.length].field_0) = stor3.length
                storC257[stor3.length] = arg1
                if bool(storC257[stor3.length].field_0):
                    if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                        revert with 0, 34
                    if _73:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_73, data=mem[(2 * ceil32(return_data.size)) + 128 len _73])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if _73:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_73, data=mem[(2 * ceil32(return_data.size)) + 128 len _73])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
        else:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
            if not arg1:
                revert with 0, 'Contract Address invalid'
            mem[0] = arg1
            mem[32] = 4
            if not stor3.length:
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                staticcall arg1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
                _71 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
                require mem[ceil32(return_data.size) + 96] + _71 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_71)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_71)]
                mem[0] = arg1
                mem[32] = 4
                uint256(stor4[address(arg1)].field_0) = stor3.length
                if ceil32(_71) <= _71:
                    _382 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_382] = stor3.length
                    mem[_382 + 32] = arg1
                    mem[_382 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_382 + 96] = uint8(ext_call.return_data[0])
                else:
                    _388 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_388] = stor3.length
                    mem[_388 + 32] = arg1
                    mem[_388 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_388 + 96] = uint8(ext_call.return_data[0])
                stor3.length++
                uint256(stor3[stor3.length].field_0) = stor3.length
                storC257[stor3.length] = arg1
                if bool(storC257[stor3.length].field_0):
                    if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                        revert with 0, 34
                    if _71:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_71, data=mem[(2 * ceil32(return_data.size)) + 128 len _71])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if _71:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_71, data=mem[(2 * ceil32(return_data.size)) + 128 len _71])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
            else:
                if uint256(stor4[address(arg1)].field_0) >= stor3.length:
                    revert with 0, 50
                mem[0] = 3
                if address(stor3[uint256(stor4[address(arg1)].field_0)].field_256) == arg1:
                    revert with 0, 'Stablecoin already added'
                require ext_code.size(arg1)
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(arg1)
                staticcall arg1.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 96] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
                _75 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                    revert with 0, 65
                if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
                require mem[ceil32(return_data.size) + 96] + _75 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_75)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_75)]
                mem[0] = arg1
                mem[32] = 4
                uint256(stor4[address(arg1)].field_0) = stor3.length
                if ceil32(_75) <= _75:
                    _394 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_394] = stor3.length
                    mem[_394 + 32] = arg1
                    mem[_394 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_394 + 96] = uint8(ext_call.return_data[0])
                else:
                    _400 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_400] = stor3.length
                    mem[_400 + 32] = arg1
                    mem[_400 + 64] = (2 * ceil32(return_data.size)) + 96
                    mem[_400 + 96] = uint8(ext_call.return_data[0])
                stor3.length++
                uint256(stor3[stor3.length].field_0) = stor3.length
                storC257[stor3.length] = arg1
                if bool(storC257[stor3.length].field_0):
                    if bool(storC257[stor3.length].field_0) == uint255(storC257[stor3.length].field_1) < 32:
                        revert with 0, 34
                    if _75:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_75, data=mem[(2 * ceil32(return_data.size)) + 128 len _75])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while uint255(storC257[stor3.length].field_1) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(storC257[stor3.length].field_0) == storC257[stor3.length].field_1 % 128 < 32:
                        revert with 0, 34
                    if _75:
                        uint256(stor[sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)][].field_0) = Array(len=_75, data=mem[(2 * ceil32(return_data.size)) + 128 len _75])
                    else:
                        uint256(storC257[stor3.length].field_0) = 0
                        idx = 0
                        while storC257[stor3.length].field_1 % 128 + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0) = 0
                            idx = idx + 1
                            continue 
    storC257[stor3.length] = uint8(ext_call.return_data[0])
}

function sub_e6291741(?) payable {
    if msg.sender == _owner:
        idx = 0
        s = 0
        while idx < stor6.length:
            mem[0] = address(stor6[idx].field_0)
            mem[32] = 5
            if s > !uint256(stor5[address(stor6[idx].field_0)].field_0):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint256(stor5[address(stor6[idx].field_0)].field_0)
            continue 
        if s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length > test266151307():
            revert with 0, 65
        mem[96] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
        mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
        if not s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
            idx = 0
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var41005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                if var45005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var47002
                mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
                if bool(var49001):
                    s = bool(var49001)
                    t = var49001 / 2
                    u = var49001
                    u = var49003
                    v = var49004
                    w = var49005
                    x = var49006
                    y = var49007
                    z = var49010
                    while s != t < 32:
                        _2952 = mem[64]
                        mem[64] = mem[64] + ceil32(t) + 32
                        mem[_2952] = t
                        if bool(stor[u].field_0):
                            if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[u].field_1):
                                mem[v] = _2952
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3103 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3103] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3103 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3103
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3103 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3103
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= uint255(stor[u].field_1):
                                mem[_2952 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _2952
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3199 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3199] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3199 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3199
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3199 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3199
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_2952 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _2952 + 32
                            t = sha3(mem[0])
                            while _2952 + uint255(stor[u].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _2952
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3577 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3577] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3577 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3577
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3577 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3577
                            y = y + 1
                            z = z + 1
                            continue 
                        if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[u].field_1 % 128:
                            mem[v] = _2952
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3149 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3149] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3149 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3149
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3149 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3149
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= stor[u].field_1 % 128:
                            mem[_2952 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _2952
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3267 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3267] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3267 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3267
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3267 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3267
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_2952 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _2952 + 32
                        t = sha3(mem[0])
                        while _2952 + stor[u].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _2952
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _3579 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_3579] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3579 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3579
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _3579 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _3579
                        y = y + 1
                        z = z + 1
                        continue 
                else:
                    s = bool(var49001)
                    s = var49001 / 2
                    s = var49001
                    s = var49003
                    s = var49004
                    s = var49005
                    s = var49006
                    s = var49007
                    s = var49010
                    while var52001 != var52002 < 32:
                        _3492 = mem[64]
                        mem[64] = mem[64] + ceil32(var52002) + 32
                        mem[_3492] = var52002
                        if bool(stor[var52005].field_0):
                            if bool(stor[var52005].field_0) == uint255(stor[var52005].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[var52005].field_1):
                                mem[var52006] = _3492
                                mem[var52006 + 32] = uint256(stor2[var52007])
                                mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                                mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                                mem[var52006 + 128] = address(stor4[var52007].field_8)
                                mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                                mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                                mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                                mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                                if var52012 == -1:
                                    revert with 0, 17
                                if var52012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var52012) + 128] = var52008
                                if var52009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3658 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3658] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                                    var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                    var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                    var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                    var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var52006 = _3658 + 32
                                    var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var52008 = _3658
                                    var52009 = var52009 + 1
                                    var52012 = var52012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3658 + 32
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3658
                                s = var52009 + 1
                                s = var52012 + 1
                                continue 
                            if 31 >= uint255(stor[var52005].field_1):
                                mem[_3492 + 32] = 256 * Mask(248, 0, stor[var52005].field_8)
                                mem[var52006] = _3492
                                mem[var52006 + 32] = uint256(stor2[var52007])
                                mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                                mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                                mem[var52006 + 128] = address(stor4[var52007].field_8)
                                mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                                mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                                mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                                mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                                if var52012 == -1:
                                    revert with 0, 17
                                if var52012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var52012) + 128] = var52008
                                if var52009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3742 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3742] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                                    var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                    var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                    var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                    var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var52006 = _3742 + 32
                                    var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var52008 = _3742
                                    var52009 = var52009 + 1
                                    var52012 = var52012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3742 + 32
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3742
                                s = var52009 + 1
                                s = var52012 + 1
                                continue 
                            mem[0] = var52005
                            mem[_3492 + 32] = uint256(stor[sha3(var52005)].field_0)
                            s = _3492 + 32
                            t = sha3(mem[0])
                            while _3492 + uint255(stor[var52005].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var52006] = _3492
                            mem[var52006 + 32] = uint256(stor2[var52007])
                            mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                            mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                            mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4009 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4009] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var52006 = _4009 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var52008 = _4009
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4009 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4009
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        if bool(stor[var52005].field_0) == stor[var52005].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[var52005].field_1 % 128:
                            mem[var52006] = _3492
                            mem[var52006 + 32] = uint256(stor2[var52007])
                            mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                            mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                            mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3698 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3698] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var52006 = _3698 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var52008 = _3698
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _3698 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _3698
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        if 31 >= stor[var52005].field_1 % 128:
                            mem[_3492 + 32] = 256 * Mask(248, 0, stor[var52005].field_8)
                            mem[var52006] = _3492
                            mem[var52006 + 32] = uint256(stor2[var52007])
                            mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                            mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                            mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3798 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3798] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var52006 = _3798 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var52008 = _3798
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _3798 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _3798
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        mem[0] = var52005
                        mem[_3492 + 32] = uint256(stor[sha3(var52005)].field_0)
                        s = _3492 + 32
                        t = sha3(mem[0])
                        while _3492 + stor[var52005].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var52006] = _3492
                        mem[var52006 + 32] = uint256(stor2[var52007])
                        mem[var52006 + 64] = uint256(stor3[var52007].field_0)
                        mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                        mem[var52006 + 128] = address(stor4[var52007].field_8)
                        mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                        mem[var52006 + 192] = uint256(stor6[var52007].field_0)
                        mem[var52006 + 224] = uint16(stor7[var52007].field_0)
                        mem[var52006 + 256] = uint16(stor7[var52007].field_16)
                        if var52012 == -1:
                            revert with 0, 17
                        if var52012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var52012) + 128] = var52008
                        if var52009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var52009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4011 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4011] = address(stor5[address(stor6[idx].field_0)][var52009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256):
                            var52001 = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            var52002 = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                            var52003 = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                            var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var52006 = _4011 + 32
                            var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var52008 = _4011
                            var52009 = var52009 + 1
                            var52012 = var52012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var52009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var52009 + 1].field_256)
                        s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4011 + 32
                        s = (8 * var52009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4011
                        s = var52009 + 1
                        s = var52012 + 1
                        continue 
                revert with 0, 34
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 32
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
            t = 0
            u = 128
            v = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192
            w = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + (32 * mem[96]) + 192
            while t < s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
                mem[v] = w + -(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) - 192
                _750 = mem[u]
                mem[w] = mem[mem[u] + 12 len 20]
                _771 = mem[_750 + 32]
                mem[w + 32] = 320
                _780 = mem[_771]
                mem[w + 320] = mem[_771]
                idx = 0
                while idx < _780:
                    mem[idx + w + 352] = mem[idx + _771 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_780) > _780:
                    mem[_780 + w + 352] = 0
                mem[w + 64] = mem[_750 + 64]
                mem[w + 96] = mem[_750 + 96]
                mem[w + 128] = mem[_750 + 159 len 1]
                mem[w + 160] = mem[_750 + 172 len 20]
                mem[w + 192] = mem[_750 + 192]
                mem[w + 224] = mem[_750 + 224]
                mem[w + 256] = mem[_750 + 286 len 2]
                mem[w + 288] = mem[_750 + 318 len 2]
                t = t + 1
                u = u + 32
                v = v + 32
                w = ceil32(_780) + w + 352
                continue 
            return memory
              from mem[64]
               len w - mem[64]
        mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
        mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
        mem[var14001] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
        t = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
            mem[t + 32] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor6.length:
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = address(stor6[idx].field_0)
            mem[32] = 5
            if var48005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= stor6.length:
                revert with 0, 50
            if var52005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var54002
            _2947 = mem[64]
            mem[64] = mem[64] + 320
            mem[_2947] = address(stor[(8 * var54001) + sha3(var54002)].field_0)
            if bool(var56001):
                s = bool(var56001)
                t = var56001 / 2
                u = var56001
                u = var56003
                v = var56004
                w = var56005
                x = var56006
                y = var56007
                z = var56010
                while s != t < 32:
                    _3939 = mem[64]
                    mem[64] = mem[64] + ceil32(t) + 32
                    mem[_3939] = t
                    if bool(stor[u].field_0):
                        if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[u].field_1):
                            mem[v] = _3939
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4072 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4072] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4072 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4072
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4072 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4072
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= uint255(stor[u].field_1):
                            mem[_3939 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _3939
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4138 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4138] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4138 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4138
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4138 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4138
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_3939 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _3939 + 32
                        t = sha3(mem[0])
                        while _3939 + uint255(stor[u].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _3939
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4303 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4303] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4303 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4303
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4303 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4303
                        y = y + 1
                        z = z + 1
                        continue 
                    if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[u].field_1 % 128:
                        mem[v] = _3939
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4106 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4106] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4106 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4106
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4106 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4106
                        y = y + 1
                        z = z + 1
                        continue 
                    if 31 >= stor[u].field_1 % 128:
                        mem[_3939 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                        mem[v] = _3939
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4176 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4176] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4176 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4176
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4176 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4176
                        y = y + 1
                        z = z + 1
                        continue 
                    mem[0] = u
                    mem[_3939 + 32] = uint256(stor[sha3(u)].field_0)
                    s = _3939 + 32
                    t = sha3(mem[0])
                    while _3939 + stor[u].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[v] = _3939
                    mem[v + 32] = uint256(stor2[w])
                    mem[v + 64] = uint256(stor3[w].field_0)
                    mem[v + 96] = uint8(stor4[w].field_0)
                    mem[v + 128] = address(stor4[w].field_8)
                    mem[v + 160] = uint256(stor5[w].field_0)
                    mem[v + 192] = uint256(stor6[w].field_0)
                    mem[v + 224] = uint16(stor7[w].field_0)
                    mem[v + 256] = uint16(stor7[w].field_16)
                    if z == -1:
                        revert with 0, 17
                    if z >= mem[96]:
                        revert with 0, 50
                    mem[(32 * z) + 128] = x
                    if y == -1:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = address(stor6[idx].field_0)
                    mem[32] = 5
                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[32] = 5
                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                    _4305 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4305] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                    if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4305 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4305
                        y = y + 1
                        z = z + 1
                        continue 
                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                    t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                    v = _4305 + 32
                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                    x = _4305
                    y = y + 1
                    z = z + 1
                    continue 
            else:
                s = bool(var56001)
                s = var56001 / 2
                s = var56001
                s = var56003
                s = var56004
                s = var56005
                s = var56006
                s = var56007
                s = var56010
                while var59001 != var59002 < 32:
                    _4251 = mem[64]
                    mem[64] = mem[64] + ceil32(var59002) + 32
                    mem[_4251] = var59002
                    if bool(stor[var59005].field_0):
                        if bool(stor[var59005].field_0) == uint255(stor[var59005].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[var59005].field_1):
                            mem[var59006] = _4251
                            mem[var59006 + 32] = uint256(stor2[var59007])
                            mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                            mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                            mem[var59006 + 128] = address(stor4[var59007].field_8)
                            mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                            mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                            mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                            mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                            if var59012 == -1:
                                revert with 0, 17
                            if var59012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var59012) + 128] = var59008
                            if var59009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4345 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4345] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                                var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                                var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                                var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                                var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var59006 = _4345 + 32
                                var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var59008 = _4345
                                var59009 = var59009 + 1
                                var59012 = var59012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4345 + 32
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4345
                            s = var59009 + 1
                            s = var59012 + 1
                            continue 
                        if 31 >= uint255(stor[var59005].field_1):
                            mem[_4251 + 32] = 256 * Mask(248, 0, stor[var59005].field_8)
                            mem[var59006] = _4251
                            mem[var59006 + 32] = uint256(stor2[var59007])
                            mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                            mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                            mem[var59006 + 128] = address(stor4[var59007].field_8)
                            mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                            mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                            mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                            mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                            if var59012 == -1:
                                revert with 0, 17
                            if var59012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var59012) + 128] = var59008
                            if var59009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4381 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4381] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                                var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                                var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                                var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                                var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var59006 = _4381 + 32
                                var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var59008 = _4381
                                var59009 = var59009 + 1
                                var59012 = var59012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4381 + 32
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4381
                            s = var59009 + 1
                            s = var59012 + 1
                            continue 
                        mem[0] = var59005
                        mem[_4251 + 32] = uint256(stor[sha3(var59005)].field_0)
                        s = _4251 + 32
                        t = sha3(mem[0])
                        while _4251 + uint255(stor[var59005].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var59006] = _4251
                        mem[var59006 + 32] = uint256(stor2[var59007])
                        mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                        mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                        mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4459 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4459] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var59006 = _4459 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var59008 = _4459
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4459 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4459
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    if bool(stor[var59005].field_0) == stor[var59005].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[var59005].field_1 % 128:
                        mem[var59006] = _4251
                        mem[var59006 + 32] = uint256(stor2[var59007])
                        mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                        mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                        mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4367 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4367] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var59006 = _4367 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var59008 = _4367
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4367 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4367
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    if 31 >= stor[var59005].field_1 % 128:
                        mem[_4251 + 32] = 256 * Mask(248, 0, stor[var59005].field_8)
                        mem[var59006] = _4251
                        mem[var59006 + 32] = uint256(stor2[var59007])
                        mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                        mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                        mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4401 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4401] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var59006 = _4401 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var59008 = _4401
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4401 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4401
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    mem[0] = var59005
                    mem[_4251 + 32] = uint256(stor[sha3(var59005)].field_0)
                    s = _4251 + 32
                    t = sha3(mem[0])
                    while _4251 + stor[var59005].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[var59006] = _4251
                    mem[var59006 + 32] = uint256(stor2[var59007])
                    mem[var59006 + 64] = uint256(stor3[var59007].field_0)
                    mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                    mem[var59006 + 128] = address(stor4[var59007].field_8)
                    mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                    mem[var59006 + 192] = uint256(stor6[var59007].field_0)
                    mem[var59006 + 224] = uint16(stor7[var59007].field_0)
                    mem[var59006 + 256] = uint16(stor7[var59007].field_16)
                    if var59012 == -1:
                        revert with 0, 17
                    if var59012 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * var59012) + 128] = var59008
                    if var59009 == -1:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = address(stor6[idx].field_0)
                    mem[32] = 5
                    if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[32] = 5
                    if var59009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                    _4461 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_4461] = address(stor5[address(stor6[idx].field_0)][var59009 + 1].field_0)
                    if bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256):
                        var59001 = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        var59002 = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                        var59003 = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                        var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        var59006 = _4461 + 32
                        var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        var59008 = _4461
                        var59009 = var59009 + 1
                        var59012 = var59012 + 1
                        continue 
                    s = bool(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                    s = uint255(stor5[address(stor6[idx].field_0)][var59009 + 1].field_257)
                    s = uint256(stor5[address(stor6[idx].field_0)][var59009 + 1].field_256)
                    s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                    s = _4461 + 32
                    s = (8 * var59009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                    s = _4461
                    s = var59009 + 1
                    s = var59012 + 1
                    continue 
            revert with 0, 34
        _1043 = mem[64]
        mem[mem[64]] = 32
        _1052 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _1052:
            mem[t] = u + -_1043 - 64
            _1373 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _1404 = mem[_1373 + 32]
            mem[u + 32] = 320
            _1413 = mem[_1404]
            mem[u + 320] = mem[_1404]
            v = 0
            while v < _1413:
                mem[v + u + 352] = mem[v + _1404 + 32]
                v = v + 32
                continue 
            if ceil32(_1413) > _1413:
                mem[_1413 + u + 352] = 0
            mem[u + 64] = mem[_1373 + 64]
            mem[u + 96] = mem[_1373 + 96]
            mem[u + 128] = mem[_1373 + 159 len 1]
            mem[u + 160] = mem[_1373 + 172 len 20]
            mem[u + 192] = mem[_1373 + 192]
            mem[u + 224] = mem[_1373 + 224]
            mem[u + 256] = mem[_1373 + 286 len 2]
            mem[u + 288] = mem[_1373 + 318 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_1413) + u + 352
            continue 
    else:
        if msg.sender == address(stor1.length):
            idx = 0
            s = 0
            while idx < stor6.length:
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if s > !uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor5[address(stor6[idx].field_0)].field_0)
                continue 
            if s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length > test266151307():
                revert with 0, 65
            mem[96] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
            mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
            if not s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
                idx = 0
                while idx < stor6.length:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = address(stor6[idx].field_0)
                    mem[32] = 5
                    if var42005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor6.length:
                        revert with 0, 50
                    if var46005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = var48002
                    mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
                    if bool(var50001):
                        s = bool(var50001)
                        t = var50001 / 2
                        u = var50001
                        u = var50003
                        v = var50004
                        w = var50005
                        x = var50006
                        y = var50007
                        z = var50010
                        while s != t < 32:
                            _2953 = mem[64]
                            mem[64] = mem[64] + ceil32(t) + 32
                            mem[_2953] = t
                            if bool(stor[u].field_0):
                                if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                    revert with 0, 34
                                if not uint255(stor[u].field_1):
                                    mem[v] = _2953
                                    mem[v + 32] = uint256(stor2[w])
                                    mem[v + 64] = uint256(stor3[w].field_0)
                                    mem[v + 96] = uint8(stor4[w].field_0)
                                    mem[v + 128] = address(stor4[w].field_8)
                                    mem[v + 160] = uint256(stor5[w].field_0)
                                    mem[v + 192] = uint256(stor6[w].field_0)
                                    mem[v + 224] = uint16(stor7[w].field_0)
                                    mem[v + 256] = uint16(stor7[w].field_16)
                                    if z == -1:
                                        revert with 0, 17
                                    if z >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * z) + 128] = x
                                    if y == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3117 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3117] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        v = _3117 + 32
                                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        x = _3117
                                        y = y + 1
                                        z = z + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3117 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3117
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                if 31 >= uint255(stor[u].field_1):
                                    mem[_2953 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                    mem[v] = _2953
                                    mem[v + 32] = uint256(stor2[w])
                                    mem[v + 64] = uint256(stor3[w].field_0)
                                    mem[v + 96] = uint8(stor4[w].field_0)
                                    mem[v + 128] = address(stor4[w].field_8)
                                    mem[v + 160] = uint256(stor5[w].field_0)
                                    mem[v + 192] = uint256(stor6[w].field_0)
                                    mem[v + 224] = uint16(stor7[w].field_0)
                                    mem[v + 256] = uint16(stor7[w].field_16)
                                    if z == -1:
                                        revert with 0, 17
                                    if z >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * z) + 128] = x
                                    if y == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3221 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3221] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        v = _3221 + 32
                                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        x = _3221
                                        y = y + 1
                                        z = z + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3221 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3221
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                mem[0] = u
                                mem[_2953 + 32] = uint256(stor[sha3(u)].field_0)
                                s = _2953 + 32
                                t = sha3(mem[0])
                                while _2953 + uint255(stor[u].field_1) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[v] = _2953
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3584 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3584] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3584 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3584
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3584 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3584
                                y = y + 1
                                z = z + 1
                                continue 
                            if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[u].field_1 % 128:
                                mem[v] = _2953
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3167 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3167] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3167 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3167
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3167 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3167
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= stor[u].field_1 % 128:
                                mem[_2953 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _2953
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3289 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3289] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3289 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3289
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3289 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3289
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_2953 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _2953 + 32
                            t = sha3(mem[0])
                            while _2953 + stor[u].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _2953
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3586 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3586] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3586 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3586
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3586 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3586
                            y = y + 1
                            z = z + 1
                            continue 
                    else:
                        s = bool(var50001)
                        s = var50001 / 2
                        s = var50001
                        s = var50003
                        s = var50004
                        s = var50005
                        s = var50006
                        s = var50007
                        s = var50010
                        while var53001 != var53002 < 32:
                            _3493 = mem[64]
                            mem[64] = mem[64] + ceil32(var53002) + 32
                            mem[_3493] = var53002
                            if bool(stor[var53005].field_0):
                                if bool(stor[var53005].field_0) == uint255(stor[var53005].field_1) < 32:
                                    revert with 0, 34
                                if not uint255(stor[var53005].field_1):
                                    mem[var53006] = _3493
                                    mem[var53006 + 32] = uint256(stor2[var53007])
                                    mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                                    mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                                    mem[var53006 + 128] = address(stor4[var53007].field_8)
                                    mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                                    mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                                    mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                                    mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                                    if var53012 == -1:
                                        revert with 0, 17
                                    if var53012 >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * var53012) + 128] = var53008
                                    if var53009 == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3670 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3670] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                        var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                        var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                        var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                        var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        var53006 = _3670 + 32
                                        var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        var53008 = _3670
                                        var53009 = var53009 + 1
                                        var53012 = var53012 + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                    s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    s = _3670 + 32
                                    s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    s = _3670
                                    s = var53009 + 1
                                    s = var53012 + 1
                                    continue 
                                if 31 >= uint255(stor[var53005].field_1):
                                    mem[_3493 + 32] = 256 * Mask(248, 0, stor[var53005].field_8)
                                    mem[var53006] = _3493
                                    mem[var53006 + 32] = uint256(stor2[var53007])
                                    mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                                    mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                                    mem[var53006 + 128] = address(stor4[var53007].field_8)
                                    mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                                    mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                                    mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                                    mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                                    if var53012 == -1:
                                        revert with 0, 17
                                    if var53012 >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * var53012) + 128] = var53008
                                    if var53009 == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3760 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3760] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                        var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                        var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                        var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                        var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        var53006 = _3760 + 32
                                        var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        var53008 = _3760
                                        var53009 = var53009 + 1
                                        var53012 = var53012 + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                    s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    s = _3760 + 32
                                    s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    s = _3760
                                    s = var53009 + 1
                                    s = var53012 + 1
                                    continue 
                                mem[0] = var53005
                                mem[_3493 + 32] = uint256(stor[sha3(var53005)].field_0)
                                s = _3493 + 32
                                t = sha3(mem[0])
                                while _3493 + uint255(stor[var53005].field_1) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[var53006] = _3493
                                mem[var53006 + 32] = uint256(stor2[var53007])
                                mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                                mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                                mem[var53006 + 128] = address(stor4[var53007].field_8)
                                mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                                mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                                mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                                mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                                if var53012 == -1:
                                    revert with 0, 17
                                if var53012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var53012) + 128] = var53008
                                if var53009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4015 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4015] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                    var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                    var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var53006 = _4015 + 32
                                    var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var53008 = _4015
                                    var53009 = var53009 + 1
                                    var53012 = var53012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4015 + 32
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4015
                                s = var53009 + 1
                                s = var53012 + 1
                                continue 
                            if bool(stor[var53005].field_0) == stor[var53005].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[var53005].field_1 % 128:
                                mem[var53006] = _3493
                                mem[var53006 + 32] = uint256(stor2[var53007])
                                mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                                mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                                mem[var53006 + 128] = address(stor4[var53007].field_8)
                                mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                                mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                                mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                                mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                                if var53012 == -1:
                                    revert with 0, 17
                                if var53012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var53012) + 128] = var53008
                                if var53009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3714 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3714] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                    var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                    var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var53006 = _3714 + 32
                                    var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var53008 = _3714
                                    var53009 = var53009 + 1
                                    var53012 = var53012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3714 + 32
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3714
                                s = var53009 + 1
                                s = var53012 + 1
                                continue 
                            if 31 >= stor[var53005].field_1 % 128:
                                mem[_3493 + 32] = 256 * Mask(248, 0, stor[var53005].field_8)
                                mem[var53006] = _3493
                                mem[var53006 + 32] = uint256(stor2[var53007])
                                mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                                mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                                mem[var53006 + 128] = address(stor4[var53007].field_8)
                                mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                                mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                                mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                                mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                                if var53012 == -1:
                                    revert with 0, 17
                                if var53012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var53012) + 128] = var53008
                                if var53009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3814 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3814] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                    var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                    var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                    var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var53006 = _3814 + 32
                                    var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var53008 = _3814
                                    var53009 = var53009 + 1
                                    var53012 = var53012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3814 + 32
                                s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3814
                                s = var53009 + 1
                                s = var53012 + 1
                                continue 
                            mem[0] = var53005
                            mem[_3493 + 32] = uint256(stor[sha3(var53005)].field_0)
                            s = _3493 + 32
                            t = sha3(mem[0])
                            while _3493 + stor[var53005].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var53006] = _3493
                            mem[var53006 + 32] = uint256(stor2[var53007])
                            mem[var53006 + 64] = uint256(stor3[var53007].field_0)
                            mem[var53006 + 96] = uint8(stor4[var53007].field_0)
                            mem[var53006 + 128] = address(stor4[var53007].field_8)
                            mem[var53006 + 160] = uint256(stor5[var53007].field_0)
                            mem[var53006 + 192] = uint256(stor6[var53007].field_0)
                            mem[var53006 + 224] = uint16(stor7[var53007].field_0)
                            mem[var53006 + 256] = uint16(stor7[var53007].field_16)
                            if var53012 == -1:
                                revert with 0, 17
                            if var53012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var53012) + 128] = var53008
                            if var53009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var53009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4017 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4017] = address(stor5[address(stor6[idx].field_0)][var53009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256):
                                var53001 = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                var53002 = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                                var53003 = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                                var53005 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var53006 = _4017 + 32
                                var53007 = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var53008 = _4017
                                var53009 = var53009 + 1
                                var53012 = var53012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var53009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var53009 + 1].field_256)
                            s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4017 + 32
                            s = (8 * var53009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4017
                            s = var53009 + 1
                            s = var53012 + 1
                            continue 
                    revert with 0, 34
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 32
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
                t = 0
                u = 128
                v = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192
                w = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + (32 * mem[96]) + 192
                while t < s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
                    mem[v] = w + -(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) - 192
                    _753 = mem[u]
                    mem[w] = mem[mem[u] + 12 len 20]
                    _774 = mem[_753 + 32]
                    mem[w + 32] = 320
                    _781 = mem[_774]
                    mem[w + 320] = mem[_774]
                    idx = 0
                    while idx < _781:
                        mem[idx + w + 352] = mem[idx + _774 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_781) > _781:
                        mem[_781 + w + 352] = 0
                    mem[w + 64] = mem[_753 + 64]
                    mem[w + 96] = mem[_753 + 96]
                    mem[w + 128] = mem[_753 + 159 len 1]
                    mem[w + 160] = mem[_753 + 172 len 20]
                    mem[w + 192] = mem[_753 + 192]
                    mem[w + 224] = mem[_753 + 224]
                    mem[w + 256] = mem[_753 + 286 len 2]
                    mem[w + 288] = mem[_753 + 318 len 2]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    w = ceil32(_781) + w + 352
                    continue 
                return memory
                  from mem[64]
                   len w - mem[64]
            mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
            mem[var15001] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
            t = var15001
            idx = var15002
            while idx - 1:
                mem[64] = mem[64] + 320
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
                mem[t + 32] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
                t = t + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var49005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                if var53005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var55002
                _2949 = mem[64]
                mem[64] = mem[64] + 320
                mem[_2949] = address(stor[(8 * var55001) + sha3(var55002)].field_0)
                if bool(var57001):
                    s = bool(var57001)
                    t = var57001 / 2
                    u = var57001
                    u = var57003
                    v = var57004
                    w = var57005
                    x = var57006
                    y = var57007
                    z = var57010
                    while s != t < 32:
                        _3940 = mem[64]
                        mem[64] = mem[64] + ceil32(t) + 32
                        mem[_3940] = t
                        if bool(stor[u].field_0):
                            if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[u].field_1):
                                mem[v] = _3940
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4082 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4082] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _4082 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _4082
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4082 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4082
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= uint255(stor[u].field_1):
                                mem[_3940 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _3940
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4150 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4150] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _4150 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _4150
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4150 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4150
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_3940 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _3940 + 32
                            t = sha3(mem[0])
                            while _3940 + uint255(stor[u].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _3940
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4308 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4308] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4308 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4308
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4308 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4308
                            y = y + 1
                            z = z + 1
                            continue 
                        if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[u].field_1 % 128:
                            mem[v] = _3940
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4118 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4118] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4118 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4118
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4118 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4118
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= stor[u].field_1 % 128:
                            mem[_3940 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _3940
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4186 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4186] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4186 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4186
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4186 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4186
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_3940 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _3940 + 32
                        t = sha3(mem[0])
                        while _3940 + stor[u].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _3940
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4310 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4310] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4310 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4310
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4310 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4310
                        y = y + 1
                        z = z + 1
                        continue 
                else:
                    s = bool(var57001)
                    s = var57001 / 2
                    s = var57001
                    s = var57003
                    s = var57004
                    s = var57005
                    s = var57006
                    s = var57007
                    s = var57010
                    while var60001 != var60002 < 32:
                        _4252 = mem[64]
                        mem[64] = mem[64] + ceil32(var60002) + 32
                        mem[_4252] = var60002
                        if bool(stor[var60005].field_0):
                            if bool(stor[var60005].field_0) == uint255(stor[var60005].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[var60005].field_1):
                                mem[var60006] = _4252
                                mem[var60006 + 32] = uint256(stor2[var60007])
                                mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                                mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                                mem[var60006 + 128] = address(stor4[var60007].field_8)
                                mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                                mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                                mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                                mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                                if var60012 == -1:
                                    revert with 0, 17
                                if var60012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var60012) + 128] = var60008
                                if var60009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4351 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4351] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                                    var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                    var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                    var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                    var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var60006 = _4351 + 32
                                    var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var60008 = _4351
                                    var60009 = var60009 + 1
                                    var60012 = var60012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4351 + 32
                                s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4351
                                s = var60009 + 1
                                s = var60012 + 1
                                continue 
                            if 31 >= uint255(stor[var60005].field_1):
                                mem[_4252 + 32] = 256 * Mask(248, 0, stor[var60005].field_8)
                                mem[var60006] = _4252
                                mem[var60006 + 32] = uint256(stor2[var60007])
                                mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                                mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                                mem[var60006 + 128] = address(stor4[var60007].field_8)
                                mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                                mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                                mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                                mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                                if var60012 == -1:
                                    revert with 0, 17
                                if var60012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var60012) + 128] = var60008
                                if var60009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4387 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4387] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                                    var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                    var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                    var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                    var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var60006 = _4387 + 32
                                    var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var60008 = _4387
                                    var60009 = var60009 + 1
                                    var60012 = var60012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4387 + 32
                                s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4387
                                s = var60009 + 1
                                s = var60012 + 1
                                continue 
                            mem[0] = var60005
                            mem[_4252 + 32] = uint256(stor[sha3(var60005)].field_0)
                            s = _4252 + 32
                            t = sha3(mem[0])
                            while _4252 + uint255(stor[var60005].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var60006] = _4252
                            mem[var60006 + 32] = uint256(stor2[var60007])
                            mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                            mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                            mem[var60006 + 128] = address(stor4[var60007].field_8)
                            mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                            mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                            mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                            mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                            if var60012 == -1:
                                revert with 0, 17
                            if var60012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var60012) + 128] = var60008
                            if var60009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4463 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4463] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                                var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var60006 = _4463 + 32
                                var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var60008 = _4463
                                var60009 = var60009 + 1
                                var60012 = var60012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4463 + 32
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4463
                            s = var60009 + 1
                            s = var60012 + 1
                            continue 
                        if bool(stor[var60005].field_0) == stor[var60005].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[var60005].field_1 % 128:
                            mem[var60006] = _4252
                            mem[var60006 + 32] = uint256(stor2[var60007])
                            mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                            mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                            mem[var60006 + 128] = address(stor4[var60007].field_8)
                            mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                            mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                            mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                            mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                            if var60012 == -1:
                                revert with 0, 17
                            if var60012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var60012) + 128] = var60008
                            if var60009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4373 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4373] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                                var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var60006 = _4373 + 32
                                var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var60008 = _4373
                                var60009 = var60009 + 1
                                var60012 = var60012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4373 + 32
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4373
                            s = var60009 + 1
                            s = var60012 + 1
                            continue 
                        if 31 >= stor[var60005].field_1 % 128:
                            mem[_4252 + 32] = 256 * Mask(248, 0, stor[var60005].field_8)
                            mem[var60006] = _4252
                            mem[var60006 + 32] = uint256(stor2[var60007])
                            mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                            mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                            mem[var60006 + 128] = address(stor4[var60007].field_8)
                            mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                            mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                            mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                            mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                            if var60012 == -1:
                                revert with 0, 17
                            if var60012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var60012) + 128] = var60008
                            if var60009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4405 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4405] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                                var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                                var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                                var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var60006 = _4405 + 32
                                var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var60008 = _4405
                                var60009 = var60009 + 1
                                var60012 = var60012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4405 + 32
                            s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4405
                            s = var60009 + 1
                            s = var60012 + 1
                            continue 
                        mem[0] = var60005
                        mem[_4252 + 32] = uint256(stor[sha3(var60005)].field_0)
                        s = _4252 + 32
                        t = sha3(mem[0])
                        while _4252 + stor[var60005].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var60006] = _4252
                        mem[var60006 + 32] = uint256(stor2[var60007])
                        mem[var60006 + 64] = uint256(stor3[var60007].field_0)
                        mem[var60006 + 96] = uint8(stor4[var60007].field_0)
                        mem[var60006 + 128] = address(stor4[var60007].field_8)
                        mem[var60006 + 160] = uint256(stor5[var60007].field_0)
                        mem[var60006 + 192] = uint256(stor6[var60007].field_0)
                        mem[var60006 + 224] = uint16(stor7[var60007].field_0)
                        mem[var60006 + 256] = uint16(stor7[var60007].field_16)
                        if var60012 == -1:
                            revert with 0, 17
                        if var60012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var60012) + 128] = var60008
                        if var60009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var60009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4465 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4465] = address(stor5[address(stor6[idx].field_0)][var60009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256):
                            var60001 = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            var60002 = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                            var60003 = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                            var60005 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var60006 = _4465 + 32
                            var60007 = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var60008 = _4465
                            var60009 = var60009 + 1
                            var60012 = var60012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var60009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var60009 + 1].field_256)
                        s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4465 + 32
                        s = (8 * var60009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4465
                        s = var60009 + 1
                        s = var60012 + 1
                        continue 
                revert with 0, 34
            _1046 = mem[64]
            mem[mem[64]] = 32
            _1057 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1057:
                mem[t] = u + -_1046 - 64
                _1378 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                _1407 = mem[_1378 + 32]
                mem[u + 32] = 320
                _1414 = mem[_1407]
                mem[u + 320] = mem[_1407]
                v = 0
                while v < _1414:
                    mem[v + u + 352] = mem[v + _1407 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1414) > _1414:
                    mem[_1414 + u + 352] = 0
                mem[u + 64] = mem[_1378 + 64]
                mem[u + 96] = mem[_1378 + 96]
                mem[u + 128] = mem[_1378 + 159 len 1]
                mem[u + 160] = mem[_1378 + 172 len 20]
                mem[u + 192] = mem[_1378 + 192]
                mem[u + 224] = mem[_1378 + 224]
                mem[u + 256] = mem[_1378 + 286 len 2]
                mem[u + 288] = mem[_1378 + 318 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1414) + u + 352
                continue 
        else:
            if address(stor2.length) != msg.sender:
                revert with 0, 'Only owner or manager allowed'
            idx = 0
            s = 0
            while idx < stor6.length:
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if s > !uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor5[address(stor6[idx].field_0)].field_0)
                continue 
            if s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length > test266151307():
                revert with 0, 65
            mem[96] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
            mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
            if not s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
                idx = 0
                while idx < stor6.length:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = address(stor6[idx].field_0)
                    mem[32] = 5
                    if var43005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor6.length:
                        revert with 0, 50
                    if var47005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = var49002
                    mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
                    if bool(var51001):
                        s = bool(var51001)
                        t = var51001 / 2
                        u = var51001
                        u = var51003
                        v = var51004
                        w = var51005
                        x = var51006
                        y = var51007
                        z = var51010
                        while s != t < 32:
                            _2954 = mem[64]
                            mem[64] = mem[64] + ceil32(t) + 32
                            mem[_2954] = t
                            if bool(stor[u].field_0):
                                if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                    revert with 0, 34
                                if not uint255(stor[u].field_1):
                                    mem[v] = _2954
                                    mem[v + 32] = uint256(stor2[w])
                                    mem[v + 64] = uint256(stor3[w].field_0)
                                    mem[v + 96] = uint8(stor4[w].field_0)
                                    mem[v + 128] = address(stor4[w].field_8)
                                    mem[v + 160] = uint256(stor5[w].field_0)
                                    mem[v + 192] = uint256(stor6[w].field_0)
                                    mem[v + 224] = uint16(stor7[w].field_0)
                                    mem[v + 256] = uint16(stor7[w].field_16)
                                    if z == -1:
                                        revert with 0, 17
                                    if z >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * z) + 128] = x
                                    if y == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3131 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3131] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        v = _3131 + 32
                                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        x = _3131
                                        y = y + 1
                                        z = z + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3131 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3131
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                if 31 >= uint255(stor[u].field_1):
                                    mem[_2954 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                    mem[v] = _2954
                                    mem[v + 32] = uint256(stor2[w])
                                    mem[v + 64] = uint256(stor3[w].field_0)
                                    mem[v + 96] = uint8(stor4[w].field_0)
                                    mem[v + 128] = address(stor4[w].field_8)
                                    mem[v + 160] = uint256(stor5[w].field_0)
                                    mem[v + 192] = uint256(stor6[w].field_0)
                                    mem[v + 224] = uint16(stor7[w].field_0)
                                    mem[v + 256] = uint16(stor7[w].field_16)
                                    if z == -1:
                                        revert with 0, 17
                                    if z >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * z) + 128] = x
                                    if y == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3243 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3243] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        v = _3243 + 32
                                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        x = _3243
                                        y = y + 1
                                        z = z + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3243 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3243
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                mem[0] = u
                                mem[_2954 + 32] = uint256(stor[sha3(u)].field_0)
                                s = _2954 + 32
                                t = sha3(mem[0])
                                while _2954 + uint255(stor[u].field_1) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[v] = _2954
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3591 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3591] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3591 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3591
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3591 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3591
                                y = y + 1
                                z = z + 1
                                continue 
                            if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[u].field_1 % 128:
                                mem[v] = _2954
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3185 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3185] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3185 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3185
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3185 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3185
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= stor[u].field_1 % 128:
                                mem[_2954 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _2954
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3311 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3311] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _3311 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _3311
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3311 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3311
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_2954 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _2954 + 32
                            t = sha3(mem[0])
                            while _2954 + stor[u].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _2954
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _3593 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_3593] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _3593 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _3593
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _3593 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _3593
                            y = y + 1
                            z = z + 1
                            continue 
                    else:
                        s = bool(var51001)
                        s = var51001 / 2
                        s = var51001
                        s = var51003
                        s = var51004
                        s = var51005
                        s = var51006
                        s = var51007
                        s = var51010
                        while var54001 != var54002 < 32:
                            _3494 = mem[64]
                            mem[64] = mem[64] + ceil32(var54002) + 32
                            mem[_3494] = var54002
                            if bool(stor[var54005].field_0):
                                if bool(stor[var54005].field_0) == uint255(stor[var54005].field_1) < 32:
                                    revert with 0, 34
                                if not uint255(stor[var54005].field_1):
                                    mem[var54006] = _3494
                                    mem[var54006 + 32] = uint256(stor2[var54007])
                                    mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                                    mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                                    mem[var54006 + 128] = address(stor4[var54007].field_8)
                                    mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                                    mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                                    mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                                    mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                                    if var54012 == -1:
                                        revert with 0, 17
                                    if var54012 >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * var54012) + 128] = var54008
                                    if var54009 == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3682 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3682] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                        var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                        var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                        var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                        var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        var54006 = _3682 + 32
                                        var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        var54008 = _3682
                                        var54009 = var54009 + 1
                                        var54012 = var54012 + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                    s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    s = _3682 + 32
                                    s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    s = _3682
                                    s = var54009 + 1
                                    s = var54012 + 1
                                    continue 
                                if 31 >= uint255(stor[var54005].field_1):
                                    mem[_3494 + 32] = 256 * Mask(248, 0, stor[var54005].field_8)
                                    mem[var54006] = _3494
                                    mem[var54006 + 32] = uint256(stor2[var54007])
                                    mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                                    mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                                    mem[var54006 + 128] = address(stor4[var54007].field_8)
                                    mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                                    mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                                    mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                                    mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                                    if var54012 == -1:
                                        revert with 0, 17
                                    if var54012 >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * var54012) + 128] = var54008
                                    if var54009 == -1:
                                        revert with 0, 17
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[0] = address(stor6[idx].field_0)
                                    mem[32] = 5
                                    if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if idx >= stor6.length:
                                        revert with 0, 50
                                    mem[32] = 5
                                    if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                        revert with 0, 50
                                    mem[0] = sha3(address(stor6[idx].field_0), 5)
                                    _3778 = mem[64]
                                    mem[64] = mem[64] + 320
                                    mem[_3778] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                                    if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                        var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                        var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                        var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                        var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                        var54006 = _3778 + 32
                                        var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                        var54008 = _3778
                                        var54009 = var54009 + 1
                                        var54012 = var54012 + 1
                                        continue 
                                    s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                    s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    s = _3778 + 32
                                    s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    s = _3778
                                    s = var54009 + 1
                                    s = var54012 + 1
                                    continue 
                                mem[0] = var54005
                                mem[_3494 + 32] = uint256(stor[sha3(var54005)].field_0)
                                s = _3494 + 32
                                t = sha3(mem[0])
                                while _3494 + uint255(stor[var54005].field_1) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[var54006] = _3494
                                mem[var54006 + 32] = uint256(stor2[var54007])
                                mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                                mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                                mem[var54006 + 128] = address(stor4[var54007].field_8)
                                mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                                mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                                mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                                mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                                if var54012 == -1:
                                    revert with 0, 17
                                if var54012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var54012) + 128] = var54008
                                if var54009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4021 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4021] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                    var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                    var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var54006 = _4021 + 32
                                    var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var54008 = _4021
                                    var54009 = var54009 + 1
                                    var54012 = var54012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4021 + 32
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4021
                                s = var54009 + 1
                                s = var54012 + 1
                                continue 
                            if bool(stor[var54005].field_0) == stor[var54005].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor[var54005].field_1 % 128:
                                mem[var54006] = _3494
                                mem[var54006 + 32] = uint256(stor2[var54007])
                                mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                                mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                                mem[var54006 + 128] = address(stor4[var54007].field_8)
                                mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                                mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                                mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                                mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                                if var54012 == -1:
                                    revert with 0, 17
                                if var54012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var54012) + 128] = var54008
                                if var54009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3730 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3730] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                    var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                    var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var54006 = _3730 + 32
                                    var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var54008 = _3730
                                    var54009 = var54009 + 1
                                    var54012 = var54012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3730 + 32
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3730
                                s = var54009 + 1
                                s = var54012 + 1
                                continue 
                            if 31 >= stor[var54005].field_1 % 128:
                                mem[_3494 + 32] = 256 * Mask(248, 0, stor[var54005].field_8)
                                mem[var54006] = _3494
                                mem[var54006 + 32] = uint256(stor2[var54007])
                                mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                                mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                                mem[var54006 + 128] = address(stor4[var54007].field_8)
                                mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                                mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                                mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                                mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                                if var54012 == -1:
                                    revert with 0, 17
                                if var54012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var54012) + 128] = var54008
                                if var54009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _3830 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_3830] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                    var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                    var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                    var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var54006 = _3830 + 32
                                    var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var54008 = _3830
                                    var54009 = var54009 + 1
                                    var54012 = var54012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _3830 + 32
                                s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _3830
                                s = var54009 + 1
                                s = var54012 + 1
                                continue 
                            mem[0] = var54005
                            mem[_3494 + 32] = uint256(stor[sha3(var54005)].field_0)
                            s = _3494 + 32
                            t = sha3(mem[0])
                            while _3494 + stor[var54005].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var54006] = _3494
                            mem[var54006 + 32] = uint256(stor2[var54007])
                            mem[var54006 + 64] = uint256(stor3[var54007].field_0)
                            mem[var54006 + 96] = uint8(stor4[var54007].field_0)
                            mem[var54006 + 128] = address(stor4[var54007].field_8)
                            mem[var54006 + 160] = uint256(stor5[var54007].field_0)
                            mem[var54006 + 192] = uint256(stor6[var54007].field_0)
                            mem[var54006 + 224] = uint16(stor7[var54007].field_0)
                            mem[var54006 + 256] = uint16(stor7[var54007].field_16)
                            if var54012 == -1:
                                revert with 0, 17
                            if var54012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var54012) + 128] = var54008
                            if var54009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var54009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4023 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4023] = address(stor5[address(stor6[idx].field_0)][var54009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256):
                                var54001 = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                var54002 = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                                var54003 = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                                var54005 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var54006 = _4023 + 32
                                var54007 = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var54008 = _4023
                                var54009 = var54009 + 1
                                var54012 = var54012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var54009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var54009 + 1].field_256)
                            s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4023 + 32
                            s = (8 * var54009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4023
                            s = var54009 + 1
                            s = var54012 + 1
                            continue 
                    revert with 0, 34
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 32
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length
                t = 0
                u = 128
                v = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192
                w = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + (32 * mem[96]) + 192
                while t < s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length:
                    mem[v] = w + -(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) - 192
                    _756 = mem[u]
                    mem[w] = mem[mem[u] + 12 len 20]
                    _777 = mem[_756 + 32]
                    mem[w + 32] = 320
                    _782 = mem[_777]
                    mem[w + 320] = mem[_777]
                    idx = 0
                    while idx < _782:
                        mem[idx + w + 352] = mem[idx + _777 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_782) > _782:
                        mem[_782 + w + 352] = 0
                    mem[w + 64] = mem[_756 + 64]
                    mem[w + 96] = mem[_756 + 96]
                    mem[w + 128] = mem[_756 + 159 len 1]
                    mem[w + 160] = mem[_756 + 172 len 20]
                    mem[w + 192] = mem[_756 + 192]
                    mem[w + 224] = mem[_756 + 224]
                    mem[w + 256] = mem[_756 + 286 len 2]
                    mem[w + 288] = mem[_756 + 318 len 2]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    w = ceil32(_782) + w + 352
                    continue 
                return memory
                  from mem[64]
                   len w - mem[64]
            mem[64] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 448
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
            mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
            mem[var16001] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
            t = var16001
            idx = var16002
            while idx - 1:
                mem[64] = mem[64] + 320
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 160] = 96
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 192] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 224] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 256] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 288] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 320] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 352] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 384] = 0
                mem[(32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 416] = 0
                mem[t + 32] = (32 * s * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length * stor6.length) + 128
                t = t + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor6.length:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = address(stor6[idx].field_0)
                mem[32] = 5
                if var50005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor6.length:
                    revert with 0, 50
                if var54005 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var56002
                _2951 = mem[64]
                mem[64] = mem[64] + 320
                mem[_2951] = address(stor[(8 * var56001) + sha3(var56002)].field_0)
                if bool(var58001):
                    s = bool(var58001)
                    t = var58001 / 2
                    u = var58001
                    u = var58003
                    v = var58004
                    w = var58005
                    x = var58006
                    y = var58007
                    z = var58010
                    while s != t < 32:
                        _3941 = mem[64]
                        mem[64] = mem[64] + ceil32(t) + 32
                        mem[_3941] = t
                        if bool(stor[u].field_0):
                            if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[u].field_1):
                                mem[v] = _3941
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4092 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4092] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _4092 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _4092
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4092 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4092
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= uint255(stor[u].field_1):
                                mem[_3941 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _3941
                                mem[v + 32] = uint256(stor2[w])
                                mem[v + 64] = uint256(stor3[w].field_0)
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w].field_0)
                                mem[v + 224] = uint16(stor7[w].field_0)
                                mem[v + 256] = uint16(stor7[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4162 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4162] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                    s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    v = _4162 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    x = _4162
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4162 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4162
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_3941 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _3941 + 32
                            t = sha3(mem[0])
                            while _3941 + uint255(stor[u].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _3941
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4313 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4313] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4313 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4313
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4313 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4313
                            y = y + 1
                            z = z + 1
                            continue 
                        if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[u].field_1 % 128:
                            mem[v] = _3941
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4130 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4130] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4130 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4130
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4130 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4130
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= stor[u].field_1 % 128:
                            mem[_3941 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _3941
                            mem[v + 32] = uint256(stor2[w])
                            mem[v + 64] = uint256(stor3[w].field_0)
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w].field_0)
                            mem[v + 224] = uint16(stor7[w].field_0)
                            mem[v + 256] = uint16(stor7[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4196 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4196] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                                s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                                u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                v = _4196 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                x = _4196
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4196 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4196
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_3941 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _3941 + 32
                        t = sha3(mem[0])
                        while _3941 + stor[u].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _3941
                        mem[v + 32] = uint256(stor2[w])
                        mem[v + 64] = uint256(stor3[w].field_0)
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w].field_0)
                        mem[v + 224] = uint16(stor7[w].field_0)
                        mem[v + 256] = uint16(stor7[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if y + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4315 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4315] = address(stor5[address(stor6[idx].field_0)][y + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][y + 1].field_256):
                            s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            t = uint255(stor5[address(stor6[idx].field_0)][y + 1].field_257)
                            u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            v = _4315 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            x = _4315
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        t = stor5[address(stor6[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor5[address(stor6[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        v = _4315 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        x = _4315
                        y = y + 1
                        z = z + 1
                        continue 
                else:
                    s = bool(var58001)
                    s = var58001 / 2
                    s = var58001
                    s = var58003
                    s = var58004
                    s = var58005
                    s = var58006
                    s = var58007
                    s = var58010
                    while var61001 != var61002 < 32:
                        _4253 = mem[64]
                        mem[64] = mem[64] + ceil32(var61002) + 32
                        mem[_4253] = var61002
                        if bool(stor[var61005].field_0):
                            if bool(stor[var61005].field_0) == uint255(stor[var61005].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[var61005].field_1):
                                mem[var61006] = _4253
                                mem[var61006 + 32] = uint256(stor2[var61007])
                                mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                                mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                                mem[var61006 + 128] = address(stor4[var61007].field_8)
                                mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                                mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                                mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                                mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                                if var61012 == -1:
                                    revert with 0, 17
                                if var61012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var61012) + 128] = var61008
                                if var61009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4357 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4357] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                                    var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                    var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                    var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                    var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var61006 = _4357 + 32
                                    var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var61008 = _4357
                                    var61009 = var61009 + 1
                                    var61012 = var61012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4357 + 32
                                s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4357
                                s = var61009 + 1
                                s = var61012 + 1
                                continue 
                            if 31 >= uint255(stor[var61005].field_1):
                                mem[_4253 + 32] = 256 * Mask(248, 0, stor[var61005].field_8)
                                mem[var61006] = _4253
                                mem[var61006 + 32] = uint256(stor2[var61007])
                                mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                                mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                                mem[var61006 + 128] = address(stor4[var61007].field_8)
                                mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                                mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                                mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                                mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                                if var61012 == -1:
                                    revert with 0, 17
                                if var61012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var61012) + 128] = var61008
                                if var61009 == -1:
                                    revert with 0, 17
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[0] = address(stor6[idx].field_0)
                                mem[32] = 5
                                if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor6.length:
                                    revert with 0, 50
                                mem[32] = 5
                                if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor6[idx].field_0), 5)
                                _4393 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_4393] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                                if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                                    var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                    var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                    var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                    var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                    var61006 = _4393 + 32
                                    var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                    var61008 = _4393
                                    var61009 = var61009 + 1
                                    var61012 = var61012 + 1
                                    continue 
                                s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                s = _4393 + 32
                                s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                s = _4393
                                s = var61009 + 1
                                s = var61012 + 1
                                continue 
                            mem[0] = var61005
                            mem[_4253 + 32] = uint256(stor[sha3(var61005)].field_0)
                            s = _4253 + 32
                            t = sha3(mem[0])
                            while _4253 + uint255(stor[var61005].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var61006] = _4253
                            mem[var61006 + 32] = uint256(stor2[var61007])
                            mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                            mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                            mem[var61006 + 128] = address(stor4[var61007].field_8)
                            mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                            mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                            mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                            mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                            if var61012 == -1:
                                revert with 0, 17
                            if var61012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var61012) + 128] = var61008
                            if var61009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4467 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4467] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                                var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var61006 = _4467 + 32
                                var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var61008 = _4467
                                var61009 = var61009 + 1
                                var61012 = var61012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4467 + 32
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4467
                            s = var61009 + 1
                            s = var61012 + 1
                            continue 
                        if bool(stor[var61005].field_0) == stor[var61005].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[var61005].field_1 % 128:
                            mem[var61006] = _4253
                            mem[var61006 + 32] = uint256(stor2[var61007])
                            mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                            mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                            mem[var61006 + 128] = address(stor4[var61007].field_8)
                            mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                            mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                            mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                            mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                            if var61012 == -1:
                                revert with 0, 17
                            if var61012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var61012) + 128] = var61008
                            if var61009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4379 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4379] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                                var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var61006 = _4379 + 32
                                var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var61008 = _4379
                                var61009 = var61009 + 1
                                var61012 = var61012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4379 + 32
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4379
                            s = var61009 + 1
                            s = var61012 + 1
                            continue 
                        if 31 >= stor[var61005].field_1 % 128:
                            mem[_4253 + 32] = 256 * Mask(248, 0, stor[var61005].field_8)
                            mem[var61006] = _4253
                            mem[var61006 + 32] = uint256(stor2[var61007])
                            mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                            mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                            mem[var61006 + 128] = address(stor4[var61007].field_8)
                            mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                            mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                            mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                            mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                            if var61012 == -1:
                                revert with 0, 17
                            if var61012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var61012) + 128] = var61008
                            if var61009 == -1:
                                revert with 0, 17
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[0] = address(stor6[idx].field_0)
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor6.length:
                                revert with 0, 50
                            mem[32] = 5
                            if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor6[idx].field_0), 5)
                            _4409 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_4409] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                            if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                                var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                                var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                                var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                                var61006 = _4409 + 32
                                var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                                var61008 = _4409
                                var61009 = var61009 + 1
                                var61012 = var61012 + 1
                                continue 
                            s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                            s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            s = _4409 + 32
                            s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            s = _4409
                            s = var61009 + 1
                            s = var61012 + 1
                            continue 
                        mem[0] = var61005
                        mem[_4253 + 32] = uint256(stor[sha3(var61005)].field_0)
                        s = _4253 + 32
                        t = sha3(mem[0])
                        while _4253 + stor[var61005].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var61006] = _4253
                        mem[var61006 + 32] = uint256(stor2[var61007])
                        mem[var61006 + 64] = uint256(stor3[var61007].field_0)
                        mem[var61006 + 96] = uint8(stor4[var61007].field_0)
                        mem[var61006 + 128] = address(stor4[var61007].field_8)
                        mem[var61006 + 160] = uint256(stor5[var61007].field_0)
                        mem[var61006 + 192] = uint256(stor6[var61007].field_0)
                        mem[var61006 + 224] = uint16(stor7[var61007].field_0)
                        mem[var61006 + 256] = uint16(stor7[var61007].field_16)
                        if var61012 == -1:
                            revert with 0, 17
                        if var61012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var61012) + 128] = var61008
                        if var61009 == -1:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = address(stor6[idx].field_0)
                        mem[32] = 5
                        if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[32] = 5
                        if var61009 + 1 >= uint256(stor5[address(stor6[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor6[idx].field_0), 5)
                        _4469 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_4469] = address(stor5[address(stor6[idx].field_0)][var61009 + 1].field_0)
                        if bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256):
                            var61001 = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            var61002 = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                            var61003 = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                            var61005 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                            var61006 = _4469 + 32
                            var61007 = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                            var61008 = _4469
                            var61009 = var61009 + 1
                            var61012 = var61012 + 1
                            continue 
                        s = bool(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                        s = uint255(stor5[address(stor6[idx].field_0)][var61009 + 1].field_257)
                        s = uint256(stor5[address(stor6[idx].field_0)][var61009 + 1].field_256)
                        s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5)) + 1
                        s = _4469 + 32
                        s = (8 * var61009 + 1) + sha3(sha3(address(stor6[idx].field_0), 5))
                        s = _4469
                        s = var61009 + 1
                        s = var61012 + 1
                        continue 
                revert with 0, 34
            _1049 = mem[64]
            mem[mem[64]] = 32
            _1062 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _1062:
                mem[t] = u + -_1049 - 64
                _1383 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                _1410 = mem[_1383 + 32]
                mem[u + 32] = 320
                _1415 = mem[_1410]
                mem[u + 320] = mem[_1410]
                v = 0
                while v < _1415:
                    mem[v + u + 352] = mem[v + _1410 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1415) > _1415:
                    mem[_1415 + u + 352] = 0
                mem[u + 64] = mem[_1383 + 64]
                mem[u + 96] = mem[_1383 + 96]
                mem[u + 128] = mem[_1383 + 159 len 1]
                mem[u + 160] = mem[_1383 + 172 len 20]
                mem[u + 192] = mem[_1383 + 192]
                mem[u + 224] = mem[_1383 + 224]
                mem[u + 256] = mem[_1383 + 286 len 2]
                mem[u + 288] = mem[_1383 + 318 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1415) + u + 352
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
