contract main {




// =====================  Runtime code  =====================


#
#  - sub_5264f9ed(?)
#  - unstake(uint256 arg1, uint256 arg2)
#
const sub_1468fe06(?) = block.timestamp


address _owner;
array of uint256 stor1;
array of struct stor2;
array of uint256 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint8 stor6;
array of struct sub_bbc70e13;
uint8 isActive;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of struct stor75276140696391174450305814049576319106646922510300487059720162673006384432777;

function isActive() payable {
    return bool(isActive)
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
    return bool(uint8(stor6[address(arg1)]))
}

function _fallback() payable {
    revert
}

function getManager() payable {
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
    return address(stor1.length)
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
        return stor9, stor10, stor11, stor12
    return stor13, stor14, stor15, stor16
}

function setActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
    isActive = uint8(arg1)
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
    address(stor1.length) = arg1
}

function setLock(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
    uint8(stor6[address(arg1)]) = uint8(arg2)
}

function sub_e8000435(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 7
        if uint256(sub_bbc70e13[idx].field_0) == arg1:
            return idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return -1
}

function sub_aca2281a(?) payable {
    require calldata.size - 4 >= 160
    require arg5 == bool(arg5)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
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
        stor9 = arg1
        stor10 = arg2
        stor11 = arg3
        stor12 = arg4
    else:
        stor13 = arg1
        stor14 = arg2
        stor15 = arg3
        stor16 = arg4
}

function getBalanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    if not address(stor2[stor3[address(arg1)]].field_256):
        revert with 0, 'invalid coin'
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    require ext_code.size(address(stor2[stor3[address(arg1)]].field_256))
    staticcall address(stor2[stor3[address(arg1)]].field_256).0x70a08231 with:
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
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    if address(stor2[stor3[address(arg1)]].field_256) != arg1:
        revert with 0, 'Invalid Token'
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    require ext_code.size(address(stor2[stor3[address(arg1)]].field_256))
    staticcall address(stor2[stor3[address(arg1)]].field_256).0xdd62ed3e with:
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
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
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
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_150bb957(?) payable {
    mem[64] = (32 * sub_bbc70e13.length) + 128
    mem[96] = sub_bbc70e13.length
    s = 128
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 7
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
        revert with 0, 'Only owner allowed'
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    if not address(stor2[stor3[address(arg1)]].field_256):
        revert with 0, 'Invalid Token'
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    require ext_code.size(address(stor2[stor3[address(arg1)]].field_256))
    staticcall address(stor2[stor3[address(arg1)]].field_256).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No balance to withdraw'
    if stor3[address(arg1)] >= stor2.length:
        revert with 0, 50
    emit 0x7959a5eb: address(stor2[stor3[address(arg1)]].field_256), ext_call.return_data[0], msg.sender
    require ext_code.size(address(stor2[stor3[address(arg1)]].field_256))
    call address(stor2[stor3[address(arg1)]].field_256).0xa9059cbb with:
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
        mem[0] = 7
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
        uint16(storA66C[stor7.length].field_0) = uint16(arg2)
        uint16(storA66C[stor7.length].field_16) = uint16(arg3)
        uint8(storA66C[stor7.length].field_32) = uint8(bool(arg4))
        uint8(storA66C[stor7.length].field_40) = uint8(bool(arg5))
        Mask(208, 0, storA66C[stor7.length].field_48) = 1
        Mask(200, 0, storA66C[stor7.length].field_56) = Mask(200, 16, bool(arg5)) >> 16
        Mask(200, 0, storA66C[stor7.length].field_56) = Mask(200, 24, bool(arg4)) >> 24
        return 1
    if uint16(arg3) <= 0:
        revert with 0, 'denom cannot be 0'
    sub_bbc70e13.length++
    uint16(sub_bbc70e13[sub_bbc70e13.length].field_0) = uint16(arg1)
    Mask(240, 0, sub_bbc70e13[sub_bbc70e13.length].field_16) = 0
    uint16(storA66C[stor7.length].field_0) = uint16(arg2)
    uint16(storA66C[stor7.length].field_16) = uint16(arg3)
    uint8(storA66C[stor7.length].field_32) = uint8(bool(arg4))
    uint8(storA66C[stor7.length].field_40) = uint8(bool(arg5))
    Mask(208, 0, storA66C[stor7.length].field_48) = 1
    Mask(200, 0, storA66C[stor7.length].field_56) = Mask(200, 16, bool(arg5)) >> 16
    Mask(200, 0, storA66C[stor7.length].field_56) = Mask(200, 24, bool(arg4)) >> 24
    return 1
}

function sub_d8af0314(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if _owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
    idx = 0
    while idx < sub_bbc70e13.length:
        mem[0] = 7
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
    if arg2 >= uint256(stor4[address(arg1)].field_0):
        revert with 0, 'Staking index out of bounds.'
    if arg2 >= uint256(stor4[address(arg1)].field_0):
        revert with 0, 50
    if bool(stor4[address(arg1)][arg2].field_256):
        if bool(stor4[address(arg1)][arg2].field_256) == uint255(stor4[address(arg1)][arg2].field_257) < 32:
            revert with 0, 34
        if bool(stor4[address(arg1)][arg2].field_256):
            if bool(stor4[address(arg1)][arg2].field_256) == uint255(stor4[address(arg1)][arg2].field_257) < 32:
                revert with 0, 34
            if uint255(stor4[address(arg1)][arg2].field_257):
                if 31 >= uint255(stor4[address(arg1)][arg2].field_257):
                    mem[768] = 256 * Mask(248, 0, stor4[address(arg1)][arg2].field_264)
                else:
                    mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_0)
                    idx = 768
                    s = 0
                    while uint255(stor4[address(arg1)][arg2].field_257) + 736 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor4[address(arg1)][arg2].field_256) == stor4[address(arg1)][arg2].field_257 % 128 < 32:
                revert with 0, 34
            if stor4[address(arg1)][arg2].field_257 % 128:
                if 31 >= stor4[address(arg1)][arg2].field_257 % 128:
                    mem[768] = 256 * Mask(248, 0, stor4[address(arg1)][arg2].field_264)
                else:
                    mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_0)
                    idx = 768
                    s = 0
                    while stor4[address(arg1)][arg2].field_257 % 128 + 736 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, address(stor4[address(arg1)][arg2].field_0), 
               320,
               uint256(stor4[address(arg1)][arg2].field_512),
               uint256(stor4[address(arg1)][arg2].field_768),
               uint8(stor4[address(arg1)][arg2].field_1024),
               address(stor4[address(arg1)][arg2].field_1024),
               uint256(stor4[address(arg1)][arg2].field_1280),
               uint256(stor4[address(arg1)][arg2].field_1536),
               uint16(stor4[address(arg1)][arg2].field_1792),
               uint16(stor4[address(arg1)][arg2].field_1792),
               2 * Mask(256, -1, uint255(stor4[address(arg1)][arg2].field_257)),
               mem[768 len ceil32(uint255(stor4[address(arg1)][arg2].field_257))]
    if bool(stor4[address(arg1)][arg2].field_256) == stor4[address(arg1)][arg2].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor4[address(arg1)][arg2].field_256):
        if bool(stor4[address(arg1)][arg2].field_256) == uint255(stor4[address(arg1)][arg2].field_257) < 32:
            revert with 0, 34
        if uint255(stor4[address(arg1)][arg2].field_257):
            if 31 >= uint255(stor4[address(arg1)][arg2].field_257):
                mem[768] = 256 * Mask(248, 0, stor4[address(arg1)][arg2].field_264)
            else:
                mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_0)
                idx = 768
                s = 0
                while uint255(stor4[address(arg1)][arg2].field_257) + 736 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor4[address(arg1)][arg2].field_256) == stor4[address(arg1)][arg2].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][arg2].field_257 % 128:
            if 31 >= stor4[address(arg1)][arg2].field_257 % 128:
                mem[768] = 256 * Mask(248, 0, stor4[address(arg1)][arg2].field_264)
            else:
                mem[768] = uint256(stor[sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_0)
                idx = 768
                s = 0
                while stor4[address(arg1)][arg2].field_257 % 128 + 736 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + 1)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, address(stor4[address(arg1)][arg2].field_0), 
           320,
           uint256(stor4[address(arg1)][arg2].field_512),
           uint256(stor4[address(arg1)][arg2].field_768),
           uint8(stor4[address(arg1)][arg2].field_1024),
           address(stor4[address(arg1)][arg2].field_1024),
           uint256(stor4[address(arg1)][arg2].field_1280),
           uint256(stor4[address(arg1)][arg2].field_1536),
           uint16(stor4[address(arg1)][arg2].field_1792),
           uint16(stor4[address(arg1)][arg2].field_1792),
           stor4[address(arg1)][arg2].field_256 % 128,
           mem[768 len ceil32(stor4[address(arg1)][arg2].field_257 % 128)]
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
            if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor10:
                revert with 0, 18
            if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor12:
                revert with 0, 18
            return arg1 >= 10^18 * stor9 / stor10, arg1 <= 10^18 * stor11 / stor12
        if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor16:
            revert with 0, 18
        return arg1 >= 10^18 * stor13 / stor14, arg1 <= 10^18 * stor15 / stor16
    if 18 < arg2:
        revert with 0, 17
    if not -arg2 + 18:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if 0 > !arg1:
            revert with 0, 17
        if not arg3:
            if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor10:
                revert with 0, 18
            if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor12:
                revert with 0, 18
            return arg1 >= 10^18 * stor9 / stor10, arg1 <= 10^18 * stor11 / stor12
        if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor16:
            revert with 0, 18
        return arg1 >= 10^18 * stor13 / stor14, arg1 <= 10^18 * stor15 / stor16
    if bool(bool(-arg2 + 18 < 78)) or bool(bool(-arg2 + 18 < 32)):
        if 10^(-arg2 + 18) > -1:
            revert with 0, 17
        if arg1 and 10^(-arg2 + 18) > -1 / arg1:
            revert with 0, 17
        if 0 > !(arg1 * 10^(-arg2 + 18)):
            revert with 0, 17
        if not arg3:
            if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor10:
                revert with 0, 18
            if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor12:
                revert with 0, 18
            return arg1 * 10^(-arg2 + 18) >= 10^18 * stor9 / stor10, arg1 * 10^(-arg2 + 18) <= 10^18 * stor11 / stor12
        if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor14:
            revert with 0, 18
        if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor16:
            revert with 0, 18
        return arg1 * 10^(-arg2 + 18) >= 10^18 * stor13 / stor14, arg1 * 10^(-arg2 + 18) <= 10^18 * stor15 / stor16
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
                    if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not stor12:
                        revert with 0, 18
                    return arg1 * s * s * t >= 10^18 * stor9 / stor10, arg1 * s * s * t <= 10^18 * stor11 / stor12
                if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor14:
                    revert with 0, 18
                if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor16:
                    revert with 0, 18
                return arg1 * s * s * t >= 10^18 * stor13 / stor14, arg1 * s * s * t <= 10^18 * stor15 / stor16
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
                if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                return arg1 * s * s * s * t >= 10^18 * stor9 / stor10, arg1 * s * s * s * t <= 10^18 * stor11 / stor12
            if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor14:
                revert with 0, 18
            if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not stor16:
                revert with 0, 18
            return arg1 * s * s * s * t >= 10^18 * stor13 / stor14, arg1 * s * s * s * t <= 10^18 * stor15 / stor16
        revert with 0, 17
    if var27002 > -1 / var27001:
        revert with 0, 17
    if arg1 and var27001 * var27002 > -1 / arg1:
        revert with 0, 17
    if 0 > !(arg1 * var27001 * var27002):
        revert with 0, 17
    if not arg3:
        if stor9 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor10:
            revert with 0, 18
        if stor11 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not stor12:
            revert with 0, 18
        return arg1 * var27001 * var27002 >= 10^18 * stor9 / stor10, arg1 * var27001 * var27002 <= 10^18 * stor11 / stor12
    if stor13 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor14:
        revert with 0, 18
    if stor15 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    return arg1 * var27001 * var27002 >= 10^18 * stor13 / stor14, arg1 * var27001 * var27002 <= 10^18 * stor15 / stor16
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
                mem[0] = 7
                if uint256(sub_bbc70e13[idx].field_0) > uint256(sub_bbc70e13[s].field_0):
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 7
                    _60 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_60] = uint256(sub_bbc70e13[idx].field_0)
                    mem[_60 + 32] = uint16(sub_bbc70e13[idx].field_256)
                    mem[_60 + 64] = uint16(sub_bbc70e13[idx].field_272)
                    mem[_60 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
                    mem[_60 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
                    mem[_60 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
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
                    mem[0] = 7
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
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
        idx = 0
        while idx < sub_bbc70e13.length:
            if 1 > !idx:
                revert with 0, 17
            s = idx + 1
            while s < sub_bbc70e13.length:
                if idx >= sub_bbc70e13.length:
                    revert with 0, 50
                mem[0] = 7
                if uint256(sub_bbc70e13[idx].field_0) > uint256(sub_bbc70e13[s].field_0):
                    if idx >= sub_bbc70e13.length:
                        revert with 0, 50
                    mem[0] = 7
                    _62 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_62] = uint256(sub_bbc70e13[idx].field_0)
                    mem[_62 + 32] = uint16(sub_bbc70e13[idx].field_256)
                    mem[_62 + 64] = uint16(sub_bbc70e13[idx].field_272)
                    mem[_62 + 96] = bool(uint8(sub_bbc70e13[idx].field_288))
                    mem[_62 + 128] = bool(uint8(sub_bbc70e13[idx].field_296))
                    mem[_62 + 160] = bool(uint8(sub_bbc70e13[idx].field_304))
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
                    mem[0] = 7
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

function sub_f33c551f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 4
    mem[64] = (32 * uint256(stor4[address(arg1)].field_0)) + 128
    mem[96] = uint256(stor4[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(stor4[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 4)
        _36 = mem[64]
        mem[64] = mem[64] + 320
        mem[_36] = address(stor4[address(arg1)][idx].field_0)
        if bool(stor4[address(arg1)][idx].field_256):
            if bool(stor4[address(arg1)][idx].field_256) == uint255(stor4[address(arg1)][idx].field_257) < 32:
                revert with 0, 34
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor4[address(arg1)][idx].field_257)) + 32
            mem[_40] = uint255(stor4[address(arg1)][idx].field_257)
            if bool(stor4[address(arg1)][idx].field_256):
                if bool(stor4[address(arg1)][idx].field_256) == uint255(stor4[address(arg1)][idx].field_257) < 32:
                    revert with 0, 34
                if uint255(stor4[address(arg1)][idx].field_257):
                    if 31 >= uint255(stor4[address(arg1)][idx].field_257):
                        mem[_40 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_264)
                    else:
                        mem[0] = sha3(sha3(address(arg1), 4)) + (8 * idx) + 1
                        mem[_40 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (8 * idx) + 1)].field_0)
                        t = _40 + 32
                        u = sha3(mem[0])
                        while _40 + uint255(stor4[address(arg1)][idx].field_257) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor4[address(arg1)][idx].field_256) == stor4[address(arg1)][idx].field_257 % 128 < 32:
                revert with 0, 34
            if not stor4[address(arg1)][idx].field_257 % 128:
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[address(arg1)][idx].field_257 % 128:
                mem[_40 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_264)
                mem[_36 + 32] = _40
                mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 4)) + (8 * idx) + 1
            mem[_40 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (8 * idx) + 1)].field_0)
            t = _40 + 32
            u = sha3(mem[0])
            while _40 + stor4[address(arg1)][u].field_257 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 32] = _40
            mem[_36 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_36 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[_36 + 128] = uint8(stor4[address(arg1)][u].field_1024)
            mem[_36 + 160] = address(stor4[address(arg1)][u].field_1032)
            mem[_36 + 192] = uint256(stor4[address(arg1)][u].field_1280)
            mem[_36 + 224] = uint256(stor4[address(arg1)][u].field_1536)
            mem[_36 + 256] = uint16(stor4[address(arg1)][u].field_1792)
            mem[_36 + 288] = uint16(stor4[address(arg1)][u].field_1808)
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_256) == stor4[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[address(arg1)][idx].field_257 % 128) + 32
        mem[_43] = stor4[address(arg1)][idx].field_257 % 128
        if bool(stor4[address(arg1)][idx].field_256):
            if bool(stor4[address(arg1)][idx].field_256) == uint255(stor4[address(arg1)][idx].field_257) < 32:
                revert with 0, 34
            if not uint255(stor4[address(arg1)][idx].field_257):
                mem[_36 + 32] = _43
                mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor4[address(arg1)][idx].field_257):
                mem[_43 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_264)
                mem[_36 + 32] = _43
                mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
                mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
                mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
                mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
                mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
                mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
                mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
                mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
                mem[s] = _36
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg1), 4)) + (8 * idx) + 1
            mem[_43 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (8 * idx) + 1)].field_0)
            t = _43 + 32
            u = sha3(mem[0])
            while _43 + uint255(stor4[address(arg1)][u].field_257) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_36 + 32] = _43
            mem[_36 + 64] = uint256(stor4[address(arg1)][u].field_512)
            mem[_36 + 96] = uint256(stor4[address(arg1)][u].field_768)
            mem[_36 + 128] = uint8(stor4[address(arg1)][u].field_1024)
            mem[_36 + 160] = address(stor4[address(arg1)][u].field_1032)
            mem[_36 + 192] = uint256(stor4[address(arg1)][u].field_1280)
            mem[_36 + 224] = uint256(stor4[address(arg1)][u].field_1536)
            mem[_36 + 256] = uint16(stor4[address(arg1)][u].field_1792)
            mem[_36 + 288] = uint16(stor4[address(arg1)][u].field_1808)
            mem[t] = _36
            t = t + 32
            u = u + 1
            continue 
        if bool(stor4[address(arg1)][idx].field_256) == stor4[address(arg1)][idx].field_257 % 128 < 32:
            revert with 0, 34
        if stor4[address(arg1)][idx].field_257 % 128:
            if 31 >= stor4[address(arg1)][idx].field_257 % 128:
                mem[_43 + 32] = 256 * Mask(248, 0, stor4[address(arg1)][idx].field_264)
            else:
                mem[0] = sha3(sha3(address(arg1), 4)) + (8 * idx) + 1
                mem[_43 + 32] = uint256(stor[sha3(('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4)) + (8 * idx) + 1)].field_0)
                t = _43 + 32
                u = sha3(mem[0])
                while _43 + stor4[address(arg1)][idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_36 + 32] = _43
        mem[_36 + 64] = uint256(stor4[address(arg1)][idx].field_512)
        mem[_36 + 96] = uint256(stor4[address(arg1)][idx].field_768)
        mem[_36 + 128] = uint8(stor4[address(arg1)][idx].field_1024)
        mem[_36 + 160] = address(stor4[address(arg1)][idx].field_1032)
        mem[_36 + 192] = uint256(stor4[address(arg1)][idx].field_1280)
        mem[_36 + 224] = uint256(stor4[address(arg1)][idx].field_1536)
        mem[_36 + 256] = uint16(stor4[address(arg1)][idx].field_1792)
        mem[_36 + 288] = uint16(stor4[address(arg1)][idx].field_1808)
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

function sub_dbcdf378(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == _owner:
        if not address(arg1):
            revert with 0, 'Contract Address invalid'
        if stor3[address(arg1)] >= stor2.length:
            revert with 0, 50
        if not address(stor2[stor3[address(arg1)]].field_256):
            revert with 0, 'Stablecoin not found'
        if stor3[address(arg1)] >= stor2.length:
            revert with 0, 50
        idx = 0
        s = 1
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var29005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            mem[32] = 4
            if var33006 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var35002
            if address(stor[(8 * var35001) + sha3(var35002) + 4].field_8) == address(stor2[stor3[address(arg1)]].field_256):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                continue 
            if var39001 == -1:
                revert with 0, 17
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var47005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            mem[32] = 4
            if var51006 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var53002
            if address(stor[(8 * var53001) + sha3(var53002) + 4].field_8) != address(stor2[stor3[address(arg1)]].field_256):
                if var57001 == -1:
                    revert with 0, 17
                # nil
            else:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
        if not address(arg1):
            revert with 0, 'Contract Address invalid'
        if stor3[address(arg1)] >= stor2.length:
            revert with 0, 50
        if not address(stor2[stor3[address(arg1)]].field_256):
            revert with 0, 'Stablecoin not found'
        if stor3[address(arg1)] >= stor2.length:
            revert with 0, 50
        idx = 0
        s = 1
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var30005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            mem[32] = 4
            if var34006 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var36002
            if address(stor[(8 * var36001) + sha3(var36002) + 4].field_8) == address(stor2[stor3[address(arg1)]].field_256):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = 0
                continue 
            if var40001 == -1:
                revert with 0, 17
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var48005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            mem[32] = 4
            if var52006 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var54002
            if address(stor[(8 * var54001) + sha3(var54002) + 4].field_8) != address(stor2[stor3[address(arg1)]].field_256):
                if var58001 == -1:
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
    if 1 < stor2.length:
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 >= stor2.length:
            revert with 0, 50
        uint256(stor2[stor2.length - 1].field_0) = uint256(stor2[stor3[address(arg1)]].field_0)
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 >= stor2.length:
            revert with 0, 50
        if uint256(stor2[stor3[address(arg1)]].field_0) >= stor2.length:
            revert with 0, 50
        uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_0) = uint256(stor2[stor2.length - 1].field_0)
        address(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_256) = address(stor2[stor2.length - 1].field_256)
        if bool(stor2[stor2.length - 1].field_512):
            if bool(stor2[stor2.length - 1].field_512) == uint255(stor2[stor2.length - 1].field_513) < 32:
                revert with 0, 34
            if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512):
                if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) == uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) < 32:
                    revert with 0, 34
                if not uint255(stor2[stor2.length - 1].field_513):
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = 0
                    idx = 0
                    while uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = (2 * uint255(stor2[stor2.length - 1].field_513)) + 1
                    s = 0
                    idx = 0
                    while uint255(stor2[stor2.length - 1].field_513) + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint255(stor2[stor2.length - 1].field_513) + 31 / 32
                    while uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) == stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 < 32:
                    revert with 0, 34
                if not uint255(stor2[stor2.length - 1].field_513):
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = 0
                    idx = 0
                    while stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = (2 * uint255(stor2[stor2.length - 1].field_513)) + 1
                    s = 0
                    idx = 0
                    while uint255(stor2[stor2.length - 1].field_513) + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint255(stor2[stor2.length - 1].field_513) + 31 / 32
                    while stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor2[stor2.length - 1].field_512) == stor2[stor2.length - 1].field_513 % 128 < 32:
                revert with 0, 34
            if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512):
                if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) == uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) < 32:
                    revert with 0, 34
                if not stor2[stor2.length - 1].field_513 % 128:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = 0
                    idx = 0
                    while uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = (2 * stor2[stor2.length - 1].field_513 % 128) + 1
                    s = 0
                    idx = 0
                    while stor2[stor2.length - 1].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor2.length - 1].field_513 % 128 + 31 / 32
                    while uint255(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) == stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor2[stor2.length - 1].field_513 % 128:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = 0
                    idx = 0
                    while stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_512) = (2 * stor2[stor2.length - 1].field_513 % 128) + 1
                    s = 0
                    idx = 0
                    while stor2[stor2.length - 1].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor2[stor2.length - 1].field_513 % 128 + 31 / 32
                    while stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_513 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * uint256(stor2[stor3[address(arg1)]].field_0)) + ('name', 'stor2', 2) + 2)].field_0) = 0
                        idx = idx + 1
                        continue 
        uint8(stor2[uint256(stor2[stor3[address(arg1)]].field_0)].field_768) = uint8(stor2[stor2.length - 1].field_768)
    if not stor2.length:
        revert with 0, 49
    uint256(stor2[stor2.length - 1].field_0) = 0
    address(stor2[stor2.length - 1].field_256) = 0
    if bool(stor2[stor2.length - 1].field_512):
        if bool(stor2[stor2.length - 1].field_512) == uint255(stor2[stor2.length - 1].field_513) < 32:
            revert with 0, 34
        uint256(stor2[stor2.length - 1].field_512) = 0
        if 31 < uint255(stor2[stor2.length - 1].field_513):
            idx = 0
            while uint255(stor2[stor2.length - 1].field_513) + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor2[stor2.length - 1].field_512) == stor2[stor2.length - 1].field_513 % 128 < 32:
            revert with 0, 34
        uint256(stor2[stor2.length - 1].field_512) = 0
        if 31 < stor2[stor2.length - 1].field_513 % 128:
            idx = 0
            while stor2[stor2.length - 1].field_513 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor2.length - 1) + ('name', 'stor2', 2) + 2)].field_0) = 0
                idx = idx + 1
                continue 
    uint8(stor2[stor2.length - 1].field_768) = 0
    stor2.length--
    stor3[address(arg1)] = 0
}

function sub_d1a72d73(?) payable {
    if msg.sender == _owner:
        if stor2.length > test266151307():
            revert with 0, 65
        mem[96] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 0, 65
            mem[(32 * stor2.length) + 128] = stor2.length
            mem[64] = (64 * stor2.length) + 160
            if not stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(stor2[idx].field_256))
                    staticcall address(stor2[idx].field_256).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[_170]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _121 = mem[64]
                mem[mem[64]] = 64
                _145 = mem[96]
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 96
                _241 = mem[(32 * stor2.length) + 128]
                mem[_121 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
                idx = 0
                s = (32 * stor2.length) + 160
                t = _121 + (32 * _145) + 128
                while idx < _241:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _121 + (32 * _145) + (32 * _241) + -mem[64] + 128
            mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor2[idx].field_256))
                staticcall address(stor2[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_172]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _124 = mem[64]
            mem[mem[64]] = 64
            _146 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _242 = mem[(32 * stor2.length) + 128]
            mem[_124 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = _124 + (32 * _146) + 128
            while idx < _242:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _124 + (32 * _146) + (32 * _242) + -mem[64] + 128
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        mem[64] = (64 * stor2.length) + 160
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor2[idx].field_256))
                staticcall address(stor2[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_174]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _127 = mem[64]
            mem[mem[64]] = 64
            _147 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _243 = mem[(32 * stor2.length) + 128]
            mem[_127 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = _127 + (32 * _147) + 128
            while idx < _243:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _127 + (32 * _147) + (32 * _243) + -mem[64] + 128
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor2[idx].field_256))
            staticcall address(stor2[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_176]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[(32 * stor2.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _130 = mem[64]
        mem[mem[64]] = 64
        _148 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _244 = mem[(32 * stor2.length) + 128]
        mem[_130 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = _130 + (32 * _148) + 128
        while idx < _244:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _130 + (32 * _148) + (32 * _244) + -mem[64] + 128
    if address(stor1.length) != msg.sender:
        revert with 0, 'Only owner or manager allowed'
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        mem[64] = (64 * stor2.length) + 160
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(stor2[idx].field_256))
                staticcall address(stor2[idx].field_256).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_178]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _133 = mem[64]
            mem[mem[64]] = 64
            _149 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _245 = mem[(32 * stor2.length) + 128]
            mem[_133 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
            t = _133 + (32 * _149) + 128
            while idx < _245:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _133 + (32 * _149) + (32 * _245) + -mem[64] + 128
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor2[idx].field_256))
            staticcall address(stor2[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_180]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[(32 * stor2.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _136 = mem[64]
        mem[mem[64]] = 64
        _150 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _246 = mem[(32 * stor2.length) + 128]
        mem[_136 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = _136 + (32 * _150) + 128
        while idx < _246:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _136 + (32 * _150) + (32 * _246) + -mem[64] + 128
    mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 0, 65
    mem[(32 * stor2.length) + 128] = stor2.length
    mem[64] = (64 * stor2.length) + 160
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor2[idx].field_256))
            staticcall address(stor2[idx].field_256).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_182]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[(32 * stor2.length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _139 = mem[64]
        mem[mem[64]] = 64
        _151 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _247 = mem[(32 * stor2.length) + 128]
        mem[_139 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
        idx = 0
        s = (32 * stor2.length) + 160
        t = _139 + (32 * _151) + 128
        while idx < _247:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _139 + (32 * _151) + (32 * _247) + -mem[64] + 128
    mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(stor2[idx].field_256))
        staticcall address(stor2[idx].field_256).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_184]
        if idx >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if idx >= mem[(32 * stor2.length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor2.length) + 160] = address(stor2[idx].field_256)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _142 = mem[64]
    mem[mem[64]] = 64
    _152 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _248 = mem[(32 * stor2.length) + 128]
    mem[_142 + (32 * mem[96]) + 96] = mem[(32 * stor2.length) + 128]
    idx = 0
    s = (32 * stor2.length) + 160
    t = _142 + (32 * _152) + 128
    while idx < _248:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _142 + (32 * _152) + (32 * _248) + -mem[64] + 128
}

function addCoin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == _owner:
        if not arg1:
            revert with 0, 'Contract Address invalid'
        mem[0] = arg1
        mem[32] = 3
        if not stor2.length:
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
            _45 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _45 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_45)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_45)]
            mem[0] = arg1
            mem[32] = 3
            stor3[address(arg1)] = stor2.length
            if ceil32(_45) <= _45:
                _224 = mem[64]
                mem[64] = mem[64] + 128
                mem[_224] = stor2.length
                mem[_224 + 32] = arg1
                mem[_224 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_224 + 96] = uint8(ext_call.return_data[0])
            else:
                _230 = mem[64]
                mem[64] = mem[64] + 128
                mem[_230] = stor2.length
                mem[_230 + 32] = arg1
                mem[_230 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_230 + 96] = uint8(ext_call.return_data[0])
            stor2.length++
            uint256(stor2[stor2.length].field_0) = stor2.length
            stor4057[stor2.length] = arg1
            if bool(stor4057[stor2.length].field_0):
                if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                    revert with 0, 34
                if _45:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_45, data=mem[(2 * ceil32(return_data.size)) + 128 len _45])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _45:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_45, data=mem[(2 * ceil32(return_data.size)) + 128 len _45])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            if stor3[address(arg1)] >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if address(stor2[stor3[address(arg1)]].field_256) == arg1:
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
            _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _49 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_49)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_49)]
            mem[0] = arg1
            mem[32] = 3
            stor3[address(arg1)] = stor2.length
            if ceil32(_49) <= _49:
                _236 = mem[64]
                mem[64] = mem[64] + 128
                mem[_236] = stor2.length
                mem[_236 + 32] = arg1
                mem[_236 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_236 + 96] = uint8(ext_call.return_data[0])
            else:
                _242 = mem[64]
                mem[64] = mem[64] + 128
                mem[_242] = stor2.length
                mem[_242 + 32] = arg1
                mem[_242 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_242 + 96] = uint8(ext_call.return_data[0])
            stor2.length++
            uint256(stor2[stor2.length].field_0) = stor2.length
            stor4057[stor2.length] = arg1
            if bool(stor4057[stor2.length].field_0):
                if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                    revert with 0, 34
                if _49:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_49, data=mem[(2 * ceil32(return_data.size)) + 128 len _49])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _49:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_49, data=mem[(2 * ceil32(return_data.size)) + 128 len _49])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
        if not arg1:
            revert with 0, 'Contract Address invalid'
        mem[0] = arg1
        mem[32] = 3
        if not stor2.length:
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
            _47 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _47 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_47)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_47)]
            mem[0] = arg1
            mem[32] = 3
            stor3[address(arg1)] = stor2.length
            if ceil32(_47) <= _47:
                _248 = mem[64]
                mem[64] = mem[64] + 128
                mem[_248] = stor2.length
                mem[_248 + 32] = arg1
                mem[_248 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_248 + 96] = uint8(ext_call.return_data[0])
            else:
                _254 = mem[64]
                mem[64] = mem[64] + 128
                mem[_254] = stor2.length
                mem[_254 + 32] = arg1
                mem[_254 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_254 + 96] = uint8(ext_call.return_data[0])
            stor2.length++
            uint256(stor2[stor2.length].field_0) = stor2.length
            stor4057[stor2.length] = arg1
            if bool(stor4057[stor2.length].field_0):
                if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                    revert with 0, 34
                if _47:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_47, data=mem[(2 * ceil32(return_data.size)) + 128 len _47])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _47:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_47, data=mem[(2 * ceil32(return_data.size)) + 128 len _47])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
        else:
            if stor3[address(arg1)] >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if address(stor2[stor3[address(arg1)]].field_256) == arg1:
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
            _50 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 < 0 or (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
            require mem[ceil32(return_data.size) + 96] + _50 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_50)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 128 len ceil32(_50)]
            mem[0] = arg1
            mem[32] = 3
            stor3[address(arg1)] = stor2.length
            if ceil32(_50) <= _50:
                _260 = mem[64]
                mem[64] = mem[64] + 128
                mem[_260] = stor2.length
                mem[_260 + 32] = arg1
                mem[_260 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_260 + 96] = uint8(ext_call.return_data[0])
            else:
                _266 = mem[64]
                mem[64] = mem[64] + 128
                mem[_266] = stor2.length
                mem[_266 + 32] = arg1
                mem[_266 + 64] = (2 * ceil32(return_data.size)) + 96
                mem[_266 + 96] = uint8(ext_call.return_data[0])
            stor2.length++
            uint256(stor2[stor2.length].field_0) = stor2.length
            stor4057[stor2.length] = arg1
            if bool(stor4057[stor2.length].field_0):
                if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
                    revert with 0, 34
                if _50:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_50, data=mem[(2 * ceil32(return_data.size)) + 128 len _50])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
                    revert with 0, 34
                if _50:
                    uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=_50, data=mem[(2 * ceil32(return_data.size)) + 128 len _50])
                else:
                    uint256(stor4057[stor2.length].field_0) = 0
                    idx = 0
                    while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0) = 0
                        idx = idx + 1
                        continue 
    stor4057[stor2.length] = uint8(ext_call.return_data[0])
}

function getCoins() payable {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        mem[64] = (64 * stor2.length) + 160
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor2[idx].field_256)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if bool(stor2[idx].field_512):
                    if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                        revert with 0, 34
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_513)) + 32
                    mem[_144] = uint255(stor2[idx].field_513)
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_144 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_144 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _144 + 32
                                t = sha3(mem[0])
                                while _144 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_144 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_144 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _144 + 32
                                t = sha3(mem[0])
                                while _144 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _144
                else:
                    if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _147 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_513 % 128) + 32
                    mem[_147] = stor2[idx].field_513 % 128
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_147 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_147 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _147 + 32
                                t = sha3(mem[0])
                                while _147 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_147 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_147 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _147 + 32
                                t = sha3(mem[0])
                                while _147 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _147
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
            _238 = mem[(32 * stor2.length) + 128]
            mem[_120 + (32 * _126) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
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
            mem[(32 * stor2.length) + 160] = 96
            s = (32 * stor2.length) + 160
            idx = stor2.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor2[idx].field_256)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if bool(stor2[idx].field_512):
                    if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                        revert with 0, 34
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_513)) + 32
                    mem[_269] = uint255(stor2[idx].field_513)
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_269 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_269 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _269 + 32
                                t = sha3(mem[0])
                                while _269 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_269 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_269 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _269 + 32
                                t = sha3(mem[0])
                                while _269 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _269
                else:
                    if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _273 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_513 % 128) + 32
                    mem[_273] = stor2[idx].field_513 % 128
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_273 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_273 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _273 + 32
                                t = sha3(mem[0])
                                while _273 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_273 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_273 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _273 + 32
                                t = sha3(mem[0])
                                while _273 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _273
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
            _320 = mem[(32 * stor2.length) + 128]
            mem[_243 + (32 * _255) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
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
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        mem[64] = (64 * stor2.length) + 160
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor2[idx].field_256)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if bool(stor2[idx].field_512):
                    if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                        revert with 0, 34
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_513)) + 32
                    mem[_145] = uint255(stor2[idx].field_513)
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_145 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_145 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _145 + 32
                                t = sha3(mem[0])
                                while _145 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_145 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_145 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _145 + 32
                                t = sha3(mem[0])
                                while _145 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _145
                else:
                    if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _150 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_513 % 128) + 32
                    mem[_150] = stor2[idx].field_513 % 128
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_150 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_150 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _150 + 32
                                t = sha3(mem[0])
                                while _150 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_150 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_150 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _150 + 32
                                t = sha3(mem[0])
                                while _150 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _150
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
            _246 = mem[(32 * stor2.length) + 128]
            mem[_123 + (32 * _128) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
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
            mem[(32 * stor2.length) + 160] = 96
            s = (32 * stor2.length) + 160
            idx = stor2.length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < stor2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = address(stor2[idx].field_256)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if bool(stor2[idx].field_512):
                    if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                        revert with 0, 34
                    _271 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_513)) + 32
                    mem[_271] = uint255(stor2[idx].field_513)
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_271 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_271 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _271 + 32
                                t = sha3(mem[0])
                                while _271 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_271 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_271 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _271 + 32
                                t = sha3(mem[0])
                                while _271 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _271
                else:
                    if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                        revert with 0, 34
                    _275 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_513 % 128) + 32
                    mem[_275] = stor2[idx].field_513 % 128
                    if bool(stor2[idx].field_512):
                        if bool(stor2[idx].field_512) == uint255(stor2[idx].field_513) < 32:
                            revert with 0, 34
                        if uint255(stor2[idx].field_513):
                            if 31 >= uint255(stor2[idx].field_513):
                                mem[_275 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_275 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _275 + 32
                                t = sha3(mem[0])
                                while _275 + uint255(stor2[idx].field_513) > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_512) == stor2[idx].field_513 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_513 % 128:
                            if 31 >= stor2[idx].field_513 % 128:
                                mem[_275 + 32] = 256 * Mask(248, 0, stor2[idx].field_520)
                            else:
                                mem[0] = (4 * idx) + sha3(2) + 2
                                mem[_275 + 32] = uint256(stor[sha3((4 * idx) + ('name', 'stor2', 2) + 2)].field_0)
                                s = _275 + 32
                                t = sha3(mem[0])
                                while _275 + stor2[idx].field_513 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = _275
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
            _327 = mem[(32 * stor2.length) + 128]
            mem[_251 + (32 * _258) + 96] = mem[(32 * stor2.length) + 128]
            idx = 0
            s = (32 * stor2.length) + 160
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

function sub_e6291741(?) payable {
    if msg.sender == _owner:
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if s > !uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint256(stor4[address(stor5[idx].field_0)].field_0)
            continue 
        if s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length > test266151307():
            revert with 0, 65
        mem[96] = s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length
        mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
        if not s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length:
            idx = 0
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 0, 50
                mem[0] = address(stor5[idx].field_0)
                mem[32] = 4
                if var40005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 0, 50
                if var44005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var46002
                mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 448
                if bool(var48001):
                    s = bool(var48001)
                    t = var48001 / 2
                    u = var48001
                    u = var48003
                    v = var48004
                    w = var48005
                    x = var48006
                    y = var48007
                    z = var48010
                    while s != t < 32:
                        _1969 = mem[64]
                        mem[64] = mem[64] + ceil32(t) + 32
                        mem[_1969] = t
                        if bool(stor[u].field_0):
                            if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[u].field_1):
                                mem[v] = _1969
                                mem[v + 32] = uint256(stor2[w].field_0)
                                mem[v + 64] = stor3[w]
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w])
                                mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                                mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2070 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2070] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    v = _2070 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    x = _2070
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2070 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2070
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= uint255(stor[u].field_1):
                                mem[_1969 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _1969
                                mem[v + 32] = uint256(stor2[w].field_0)
                                mem[v + 64] = stor3[w]
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w])
                                mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                                mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2134 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2134] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    v = _2134 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    x = _2134
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2134 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2134
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_1969 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _1969 + 32
                            t = sha3(mem[0])
                            while _1969 + uint255(stor[u].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _1969
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2386 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2386] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2386 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2386
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2386 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2386
                            y = y + 1
                            z = z + 1
                            continue 
                        if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[u].field_1 % 128:
                            mem[v] = _1969
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2102 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2102] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2102 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2102
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2102 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2102
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= stor[u].field_1 % 128:
                            mem[_1969 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _1969
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2180 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2180] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2180 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2180
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2180 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2180
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_1969 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _1969 + 32
                        t = sha3(mem[0])
                        while _1969 + stor[u].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _1969
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2388 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2388] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2388 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2388
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2388 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2388
                        y = y + 1
                        z = z + 1
                        continue 
                else:
                    s = bool(var48001)
                    s = var48001 / 2
                    s = var48001
                    s = var48003
                    s = var48004
                    s = var48005
                    s = var48006
                    s = var48007
                    s = var48010
                    while var51001 != var51002 < 32:
                        _2329 = mem[64]
                        mem[64] = mem[64] + ceil32(var51002) + 32
                        mem[_2329] = var51002
                        if bool(stor[var51005].field_0):
                            if bool(stor[var51005].field_0) == uint255(stor[var51005].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[var51005].field_1):
                                mem[var51006] = _2329
                                mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                                mem[var51006 + 64] = stor3[var51007]
                                mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                                mem[var51006 + 128] = address(stor4[var51007].field_8)
                                mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                                mem[var51006 + 192] = uint256(stor6[var51007])
                                mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                                mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                                if var51012 == -1:
                                    revert with 0, 17
                                if var51012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var51012) + 128] = var51008
                                if var51009 == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2440 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2440] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                                    var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                    var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                    var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                    var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    var51006 = _2440 + 32
                                    var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    var51008 = _2440
                                    var51009 = var51009 + 1
                                    var51012 = var51012 + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                s = _2440 + 32
                                s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                s = _2440
                                s = var51009 + 1
                                s = var51012 + 1
                                continue 
                            if 31 >= uint255(stor[var51005].field_1):
                                mem[_2329 + 32] = 256 * Mask(248, 0, stor[var51005].field_8)
                                mem[var51006] = _2329
                                mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                                mem[var51006 + 64] = stor3[var51007]
                                mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                                mem[var51006 + 128] = address(stor4[var51007].field_8)
                                mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                                mem[var51006 + 192] = uint256(stor6[var51007])
                                mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                                mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                                if var51012 == -1:
                                    revert with 0, 17
                                if var51012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var51012) + 128] = var51008
                                if var51009 == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2496 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2496] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                                    var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                    var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                    var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                    var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    var51006 = _2496 + 32
                                    var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    var51008 = _2496
                                    var51009 = var51009 + 1
                                    var51012 = var51012 + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                s = _2496 + 32
                                s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                s = _2496
                                s = var51009 + 1
                                s = var51012 + 1
                                continue 
                            mem[0] = var51005
                            mem[_2329 + 32] = uint256(stor[sha3(var51005)].field_0)
                            s = _2329 + 32
                            t = sha3(mem[0])
                            while _2329 + uint255(stor[var51005].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var51006] = _2329
                            mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                            mem[var51006 + 64] = stor3[var51007]
                            mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                            mem[var51006 + 128] = address(stor4[var51007].field_8)
                            mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                            mem[var51006 + 192] = uint256(stor6[var51007])
                            mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                            mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                            if var51012 == -1:
                                revert with 0, 17
                            if var51012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var51012) + 128] = var51008
                            if var51009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2674 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2674] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                                var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var51006 = _2674 + 32
                                var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var51008 = _2674
                                var51009 = var51009 + 1
                                var51012 = var51012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2674 + 32
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2674
                            s = var51009 + 1
                            s = var51012 + 1
                            continue 
                        if bool(stor[var51005].field_0) == stor[var51005].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[var51005].field_1 % 128:
                            mem[var51006] = _2329
                            mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                            mem[var51006 + 64] = stor3[var51007]
                            mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                            mem[var51006 + 128] = address(stor4[var51007].field_8)
                            mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                            mem[var51006 + 192] = uint256(stor6[var51007])
                            mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                            mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                            if var51012 == -1:
                                revert with 0, 17
                            if var51012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var51012) + 128] = var51008
                            if var51009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2468 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2468] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                                var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var51006 = _2468 + 32
                                var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var51008 = _2468
                                var51009 = var51009 + 1
                                var51012 = var51012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2468 + 32
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2468
                            s = var51009 + 1
                            s = var51012 + 1
                            continue 
                        if 31 >= stor[var51005].field_1 % 128:
                            mem[_2329 + 32] = 256 * Mask(248, 0, stor[var51005].field_8)
                            mem[var51006] = _2329
                            mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                            mem[var51006 + 64] = stor3[var51007]
                            mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                            mem[var51006 + 128] = address(stor4[var51007].field_8)
                            mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                            mem[var51006 + 192] = uint256(stor6[var51007])
                            mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                            mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                            if var51012 == -1:
                                revert with 0, 17
                            if var51012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var51012) + 128] = var51008
                            if var51009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2534 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2534] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                                var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                                var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                                var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var51006 = _2534 + 32
                                var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var51008 = _2534
                                var51009 = var51009 + 1
                                var51012 = var51012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2534 + 32
                            s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2534
                            s = var51009 + 1
                            s = var51012 + 1
                            continue 
                        mem[0] = var51005
                        mem[_2329 + 32] = uint256(stor[sha3(var51005)].field_0)
                        s = _2329 + 32
                        t = sha3(mem[0])
                        while _2329 + stor[var51005].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var51006] = _2329
                        mem[var51006 + 32] = uint256(stor2[var51007].field_0)
                        mem[var51006 + 64] = stor3[var51007]
                        mem[var51006 + 96] = uint8(stor4[var51007].field_0)
                        mem[var51006 + 128] = address(stor4[var51007].field_8)
                        mem[var51006 + 160] = uint256(stor5[var51007].field_0)
                        mem[var51006 + 192] = uint256(stor6[var51007])
                        mem[var51006 + 224] = uint16(sub_bbc70e13[var51007].field_0)
                        mem[var51006 + 256] = uint16(sub_bbc70e13[var51007].field_16)
                        if var51012 == -1:
                            revert with 0, 17
                        if var51012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var51012) + 128] = var51008
                        if var51009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var51009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2676 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2676] = address(stor4[address(stor5[idx].field_0)][var51009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256):
                            var51001 = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            var51002 = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                            var51003 = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                            var51005 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var51006 = _2676 + 32
                            var51007 = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var51008 = _2676
                            var51009 = var51009 + 1
                            var51012 = var51012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var51009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var51009 + 1].field_256)
                        s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2676 + 32
                        s = (8 * var51009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2676
                        s = var51009 + 1
                        s = var51012 + 1
                        continue 
                revert with 0, 34
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 32
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length
            t = 0
            u = 128
            v = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192
            w = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + (32 * mem[96]) + 192
            while t < s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length:
                mem[v] = w + -(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) - 192
                _501 = mem[u]
                mem[w] = mem[mem[u] + 12 len 20]
                _515 = mem[_501 + 32]
                mem[w + 32] = 320
                _521 = mem[_515]
                mem[w + 320] = mem[_515]
                idx = 0
                while idx < _521:
                    mem[idx + w + 352] = mem[idx + _515 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_521) > _521:
                    mem[_521 + w + 352] = 0
                mem[w + 64] = mem[_501 + 64]
                mem[w + 96] = mem[_501 + 96]
                mem[w + 128] = mem[_501 + 159 len 1]
                mem[w + 160] = mem[_501 + 172 len 20]
                mem[w + 192] = mem[_501 + 192]
                mem[w + 224] = mem[_501 + 224]
                mem[w + 256] = mem[_501 + 286 len 2]
                mem[w + 288] = mem[_501 + 318 len 2]
                t = t + 1
                u = u + 32
                v = v + 32
                w = ceil32(_521) + w + 352
                continue 
            return memory
              from mem[64]
               len w - mem[64]
        mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 448
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = 96
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 224] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 256] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 288] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 320] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 352] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 384] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 416] = 0
        mem[var13001] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
        t = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = 96
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 224] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 256] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 288] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 320] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 352] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 384] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 416] = 0
            mem[t + 32] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var47005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            if var51005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var53002
            _1966 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1966] = address(stor[(8 * var53001) + sha3(var53002)].field_0)
            if bool(var55001):
                s = bool(var55001)
                t = var55001 / 2
                u = var55001
                u = var55003
                v = var55004
                w = var55005
                x = var55006
                y = var55007
                z = var55010
                while s != t < 32:
                    _2627 = mem[64]
                    mem[64] = mem[64] + ceil32(t) + 32
                    mem[_2627] = t
                    if bool(stor[u].field_0):
                        if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[u].field_1):
                            mem[v] = _2627
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2716 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2716] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2716 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2716
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2716 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2716
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= uint255(stor[u].field_1):
                            mem[_2627 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _2627
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2760 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2760] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2760 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2760
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2760 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2760
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_2627 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _2627 + 32
                        t = sha3(mem[0])
                        while _2627 + uint255(stor[u].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _2627
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2870 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2870] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2870 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2870
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2870 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2870
                        y = y + 1
                        z = z + 1
                        continue 
                    if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[u].field_1 % 128:
                        mem[v] = _2627
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2740 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2740] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2740 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2740
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2740 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2740
                        y = y + 1
                        z = z + 1
                        continue 
                    if 31 >= stor[u].field_1 % 128:
                        mem[_2627 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                        mem[v] = _2627
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2786 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2786] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2786 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2786
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2786 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2786
                        y = y + 1
                        z = z + 1
                        continue 
                    mem[0] = u
                    mem[_2627 + 32] = uint256(stor[sha3(u)].field_0)
                    s = _2627 + 32
                    t = sha3(mem[0])
                    while _2627 + stor[u].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[v] = _2627
                    mem[v + 32] = uint256(stor2[w].field_0)
                    mem[v + 64] = stor3[w]
                    mem[v + 96] = uint8(stor4[w].field_0)
                    mem[v + 128] = address(stor4[w].field_8)
                    mem[v + 160] = uint256(stor5[w].field_0)
                    mem[v + 192] = uint256(stor6[w])
                    mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                    mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                    if z == -1:
                        revert with 0, 17
                    if z >= mem[96]:
                        revert with 0, 50
                    mem[(32 * z) + 128] = x
                    if y == -1:
                        revert with 0, 17
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[0] = address(stor5[idx].field_0)
                    mem[32] = 4
                    if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[32] = 4
                    if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor5[idx].field_0), 4)
                    _2872 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2872] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                    if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2872 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2872
                        y = y + 1
                        z = z + 1
                        continue 
                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                    t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                    v = _2872 + 32
                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                    x = _2872
                    y = y + 1
                    z = z + 1
                    continue 
            else:
                s = bool(var55001)
                s = var55001 / 2
                s = var55001
                s = var55003
                s = var55004
                s = var55005
                s = var55006
                s = var55007
                s = var55010
                while var58001 != var58002 < 32:
                    _2835 = mem[64]
                    mem[64] = mem[64] + ceil32(var58002) + 32
                    mem[_2835] = var58002
                    if bool(stor[var58005].field_0):
                        if bool(stor[var58005].field_0) == uint255(stor[var58005].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[var58005].field_1):
                            mem[var58006] = _2835
                            mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                            mem[var58006 + 64] = stor3[var58007]
                            mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                            mem[var58006 + 128] = address(stor4[var58007].field_8)
                            mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                            mem[var58006 + 192] = uint256(stor6[var58007])
                            mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                            mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                            if var58012 == -1:
                                revert with 0, 17
                            if var58012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var58012) + 128] = var58008
                            if var58009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2898 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2898] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                                var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                                var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                                var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                                var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var58006 = _2898 + 32
                                var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var58008 = _2898
                                var58009 = var58009 + 1
                                var58012 = var58012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2898 + 32
                            s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2898
                            s = var58009 + 1
                            s = var58012 + 1
                            continue 
                        if 31 >= uint255(stor[var58005].field_1):
                            mem[_2835 + 32] = 256 * Mask(248, 0, stor[var58005].field_8)
                            mem[var58006] = _2835
                            mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                            mem[var58006 + 64] = stor3[var58007]
                            mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                            mem[var58006 + 128] = address(stor4[var58007].field_8)
                            mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                            mem[var58006 + 192] = uint256(stor6[var58007])
                            mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                            mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                            if var58012 == -1:
                                revert with 0, 17
                            if var58012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var58012) + 128] = var58008
                            if var58009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2922 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2922] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                                var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                                var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                                var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                                var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var58006 = _2922 + 32
                                var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var58008 = _2922
                                var58009 = var58009 + 1
                                var58012 = var58012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2922 + 32
                            s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2922
                            s = var58009 + 1
                            s = var58012 + 1
                            continue 
                        mem[0] = var58005
                        mem[_2835 + 32] = uint256(stor[sha3(var58005)].field_0)
                        s = _2835 + 32
                        t = sha3(mem[0])
                        while _2835 + uint255(stor[var58005].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var58006] = _2835
                        mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                        mem[var58006 + 64] = stor3[var58007]
                        mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                        mem[var58006 + 128] = address(stor4[var58007].field_8)
                        mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                        mem[var58006 + 192] = uint256(stor6[var58007])
                        mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                        mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                        if var58012 == -1:
                            revert with 0, 17
                        if var58012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var58012) + 128] = var58008
                        if var58009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2974 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2974] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                            var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                            var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var58006 = _2974 + 32
                            var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var58008 = _2974
                            var58009 = var58009 + 1
                            var58012 = var58012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2974 + 32
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2974
                        s = var58009 + 1
                        s = var58012 + 1
                        continue 
                    if bool(stor[var58005].field_0) == stor[var58005].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[var58005].field_1 % 128:
                        mem[var58006] = _2835
                        mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                        mem[var58006 + 64] = stor3[var58007]
                        mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                        mem[var58006 + 128] = address(stor4[var58007].field_8)
                        mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                        mem[var58006 + 192] = uint256(stor6[var58007])
                        mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                        mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                        if var58012 == -1:
                            revert with 0, 17
                        if var58012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var58012) + 128] = var58008
                        if var58009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2914 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2914] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                            var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                            var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var58006 = _2914 + 32
                            var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var58008 = _2914
                            var58009 = var58009 + 1
                            var58012 = var58012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2914 + 32
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2914
                        s = var58009 + 1
                        s = var58012 + 1
                        continue 
                    if 31 >= stor[var58005].field_1 % 128:
                        mem[_2835 + 32] = 256 * Mask(248, 0, stor[var58005].field_8)
                        mem[var58006] = _2835
                        mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                        mem[var58006 + 64] = stor3[var58007]
                        mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                        mem[var58006 + 128] = address(stor4[var58007].field_8)
                        mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                        mem[var58006 + 192] = uint256(stor6[var58007])
                        mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                        mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                        if var58012 == -1:
                            revert with 0, 17
                        if var58012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var58012) + 128] = var58008
                        if var58009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2936 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2936] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                            var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                            var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                            var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var58006 = _2936 + 32
                            var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var58008 = _2936
                            var58009 = var58009 + 1
                            var58012 = var58012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2936 + 32
                        s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2936
                        s = var58009 + 1
                        s = var58012 + 1
                        continue 
                    mem[0] = var58005
                    mem[_2835 + 32] = uint256(stor[sha3(var58005)].field_0)
                    s = _2835 + 32
                    t = sha3(mem[0])
                    while _2835 + stor[var58005].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[var58006] = _2835
                    mem[var58006 + 32] = uint256(stor2[var58007].field_0)
                    mem[var58006 + 64] = stor3[var58007]
                    mem[var58006 + 96] = uint8(stor4[var58007].field_0)
                    mem[var58006 + 128] = address(stor4[var58007].field_8)
                    mem[var58006 + 160] = uint256(stor5[var58007].field_0)
                    mem[var58006 + 192] = uint256(stor6[var58007])
                    mem[var58006 + 224] = uint16(sub_bbc70e13[var58007].field_0)
                    mem[var58006 + 256] = uint16(sub_bbc70e13[var58007].field_16)
                    if var58012 == -1:
                        revert with 0, 17
                    if var58012 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * var58012) + 128] = var58008
                    if var58009 == -1:
                        revert with 0, 17
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[0] = address(stor5[idx].field_0)
                    mem[32] = 4
                    if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[32] = 4
                    if var58009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor5[idx].field_0), 4)
                    _2976 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2976] = address(stor4[address(stor5[idx].field_0)][var58009 + 1].field_0)
                    if bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256):
                        var58001 = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        var58002 = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                        var58003 = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                        var58005 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        var58006 = _2976 + 32
                        var58007 = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        var58008 = _2976
                        var58009 = var58009 + 1
                        var58012 = var58012 + 1
                        continue 
                    s = bool(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                    s = uint255(stor4[address(stor5[idx].field_0)][var58009 + 1].field_257)
                    s = uint256(stor4[address(stor5[idx].field_0)][var58009 + 1].field_256)
                    s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                    s = _2976 + 32
                    s = (8 * var58009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                    s = _2976
                    s = var58009 + 1
                    s = var58012 + 1
                    continue 
            revert with 0, 34
        _697 = mem[64]
        mem[mem[64]] = 32
        _703 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _703:
            mem[t] = u + -_697 - 64
            _917 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _937 = mem[_917 + 32]
            mem[u + 32] = 320
            _943 = mem[_937]
            mem[u + 320] = mem[_937]
            v = 0
            while v < _943:
                mem[v + u + 352] = mem[v + _937 + 32]
                v = v + 32
                continue 
            if ceil32(_943) > _943:
                mem[_943 + u + 352] = 0
            mem[u + 64] = mem[_917 + 64]
            mem[u + 96] = mem[_917 + 96]
            mem[u + 128] = mem[_917 + 159 len 1]
            mem[u + 160] = mem[_917 + 172 len 20]
            mem[u + 192] = mem[_917 + 192]
            mem[u + 224] = mem[_917 + 224]
            mem[u + 256] = mem[_917 + 286 len 2]
            mem[u + 288] = mem[_917 + 318 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_943) + u + 352
            continue 
    else:
        if address(stor1.length) != msg.sender:
            revert with 0, 'Only owner or manager allowed'
        idx = 0
        s = 0
        while idx < stor5.length:
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if s > !uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint256(stor4[address(stor5[idx].field_0)].field_0)
            continue 
        if s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length > test266151307():
            revert with 0, 65
        mem[96] = s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length
        mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
        if not s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length:
            idx = 0
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 0, 50
                mem[0] = address(stor5[idx].field_0)
                mem[32] = 4
                if var41005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= stor5.length:
                    revert with 0, 50
                if var45005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                    revert with 0, 50
                mem[0] = var47002
                mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 448
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
                        _1970 = mem[64]
                        mem[64] = mem[64] + ceil32(t) + 32
                        mem[_1970] = t
                        if bool(stor[u].field_0):
                            if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[u].field_1):
                                mem[v] = _1970
                                mem[v + 32] = uint256(stor2[w].field_0)
                                mem[v + 64] = stor3[w]
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w])
                                mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                                mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2084 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2084] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    v = _2084 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    x = _2084
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2084 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2084
                                y = y + 1
                                z = z + 1
                                continue 
                            if 31 >= uint255(stor[u].field_1):
                                mem[_1970 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                                mem[v] = _1970
                                mem[v + 32] = uint256(stor2[w].field_0)
                                mem[v + 64] = stor3[w]
                                mem[v + 96] = uint8(stor4[w].field_0)
                                mem[v + 128] = address(stor4[w].field_8)
                                mem[v + 160] = uint256(stor5[w].field_0)
                                mem[v + 192] = uint256(stor6[w])
                                mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                                mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                                if z == -1:
                                    revert with 0, 17
                                if z >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * z) + 128] = x
                                if y == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2156 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2156] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    v = _2156 + 32
                                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    x = _2156
                                    y = y + 1
                                    z = z + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2156 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2156
                                y = y + 1
                                z = z + 1
                                continue 
                            mem[0] = u
                            mem[_1970 + 32] = uint256(stor[sha3(u)].field_0)
                            s = _1970 + 32
                            t = sha3(mem[0])
                            while _1970 + uint255(stor[u].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[v] = _1970
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2393 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2393] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2393 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2393
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2393 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2393
                            y = y + 1
                            z = z + 1
                            continue 
                        if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[u].field_1 % 128:
                            mem[v] = _1970
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2120 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2120] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2120 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2120
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2120 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2120
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= stor[u].field_1 % 128:
                            mem[_1970 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _1970
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2202 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2202] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2202 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2202
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2202 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2202
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_1970 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _1970 + 32
                        t = sha3(mem[0])
                        while _1970 + stor[u].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _1970
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2395 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2395] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2395 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2395
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2395 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2395
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
                        _2330 = mem[64]
                        mem[64] = mem[64] + ceil32(var52002) + 32
                        mem[_2330] = var52002
                        if bool(stor[var52005].field_0):
                            if bool(stor[var52005].field_0) == uint255(stor[var52005].field_1) < 32:
                                revert with 0, 34
                            if not uint255(stor[var52005].field_1):
                                mem[var52006] = _2330
                                mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                                mem[var52006 + 64] = stor3[var52007]
                                mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                                mem[var52006 + 128] = address(stor4[var52007].field_8)
                                mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                                mem[var52006 + 192] = uint256(stor6[var52007])
                                mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                                mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                                if var52012 == -1:
                                    revert with 0, 17
                                if var52012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var52012) + 128] = var52008
                                if var52009 == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2452 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2452] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                                    var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                    var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                    var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                    var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    var52006 = _2452 + 32
                                    var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    var52008 = _2452
                                    var52009 = var52009 + 1
                                    var52012 = var52012 + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                s = _2452 + 32
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                s = _2452
                                s = var52009 + 1
                                s = var52012 + 1
                                continue 
                            if 31 >= uint255(stor[var52005].field_1):
                                mem[_2330 + 32] = 256 * Mask(248, 0, stor[var52005].field_8)
                                mem[var52006] = _2330
                                mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                                mem[var52006 + 64] = stor3[var52007]
                                mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                                mem[var52006 + 128] = address(stor4[var52007].field_8)
                                mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                                mem[var52006 + 192] = uint256(stor6[var52007])
                                mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                                mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                                if var52012 == -1:
                                    revert with 0, 17
                                if var52012 >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * var52012) + 128] = var52008
                                if var52009 == -1:
                                    revert with 0, 17
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[0] = address(stor5[idx].field_0)
                                mem[32] = 4
                                if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if idx >= stor5.length:
                                    revert with 0, 50
                                mem[32] = 4
                                if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                    revert with 0, 50
                                mem[0] = sha3(address(stor5[idx].field_0), 4)
                                _2514 = mem[64]
                                mem[64] = mem[64] + 320
                                mem[_2514] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                                if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                                    var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                    var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                    var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                    var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                    var52006 = _2514 + 32
                                    var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                    var52008 = _2514
                                    var52009 = var52009 + 1
                                    var52012 = var52012 + 1
                                    continue 
                                s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                s = _2514 + 32
                                s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                s = _2514
                                s = var52009 + 1
                                s = var52012 + 1
                                continue 
                            mem[0] = var52005
                            mem[_2330 + 32] = uint256(stor[sha3(var52005)].field_0)
                            s = _2330 + 32
                            t = sha3(mem[0])
                            while _2330 + uint255(stor[var52005].field_1) > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[var52006] = _2330
                            mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                            mem[var52006 + 64] = stor3[var52007]
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007])
                            mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                            mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2680 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2680] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var52006 = _2680 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var52008 = _2680
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2680 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2680
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        if bool(stor[var52005].field_0) == stor[var52005].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor[var52005].field_1 % 128:
                            mem[var52006] = _2330
                            mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                            mem[var52006 + 64] = stor3[var52007]
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007])
                            mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                            mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2484 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2484] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var52006 = _2484 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var52008 = _2484
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2484 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2484
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        if 31 >= stor[var52005].field_1 % 128:
                            mem[_2330 + 32] = 256 * Mask(248, 0, stor[var52005].field_8)
                            mem[var52006] = _2330
                            mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                            mem[var52006 + 64] = stor3[var52007]
                            mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                            mem[var52006 + 128] = address(stor4[var52007].field_8)
                            mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                            mem[var52006 + 192] = uint256(stor6[var52007])
                            mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                            mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                            if var52012 == -1:
                                revert with 0, 17
                            if var52012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var52012) + 128] = var52008
                            if var52009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2550 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2550] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                                var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                                var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                                var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var52006 = _2550 + 32
                                var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var52008 = _2550
                                var52009 = var52009 + 1
                                var52012 = var52012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2550 + 32
                            s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2550
                            s = var52009 + 1
                            s = var52012 + 1
                            continue 
                        mem[0] = var52005
                        mem[_2330 + 32] = uint256(stor[sha3(var52005)].field_0)
                        s = _2330 + 32
                        t = sha3(mem[0])
                        while _2330 + stor[var52005].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var52006] = _2330
                        mem[var52006 + 32] = uint256(stor2[var52007].field_0)
                        mem[var52006 + 64] = stor3[var52007]
                        mem[var52006 + 96] = uint8(stor4[var52007].field_0)
                        mem[var52006 + 128] = address(stor4[var52007].field_8)
                        mem[var52006 + 160] = uint256(stor5[var52007].field_0)
                        mem[var52006 + 192] = uint256(stor6[var52007])
                        mem[var52006 + 224] = uint16(sub_bbc70e13[var52007].field_0)
                        mem[var52006 + 256] = uint16(sub_bbc70e13[var52007].field_16)
                        if var52012 == -1:
                            revert with 0, 17
                        if var52012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var52012) + 128] = var52008
                        if var52009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var52009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2682 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2682] = address(stor4[address(stor5[idx].field_0)][var52009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256):
                            var52001 = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            var52002 = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                            var52003 = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                            var52005 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var52006 = _2682 + 32
                            var52007 = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var52008 = _2682
                            var52009 = var52009 + 1
                            var52012 = var52012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var52009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var52009 + 1].field_256)
                        s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2682 + 32
                        s = (8 * var52009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2682
                        s = var52009 + 1
                        s = var52012 + 1
                        continue 
                revert with 0, 34
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 32
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length
            t = 0
            u = 128
            v = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192
            w = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + (32 * mem[96]) + 192
            while t < s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length:
                mem[v] = w + -(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) - 192
                _504 = mem[u]
                mem[w] = mem[mem[u] + 12 len 20]
                _518 = mem[_504 + 32]
                mem[w + 32] = 320
                _522 = mem[_518]
                mem[w + 320] = mem[_518]
                idx = 0
                while idx < _522:
                    mem[idx + w + 352] = mem[idx + _518 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_522) > _522:
                    mem[_522 + w + 352] = 0
                mem[w + 64] = mem[_504 + 64]
                mem[w + 96] = mem[_504 + 96]
                mem[w + 128] = mem[_504 + 159 len 1]
                mem[w + 160] = mem[_504 + 172 len 20]
                mem[w + 192] = mem[_504 + 192]
                mem[w + 224] = mem[_504 + 224]
                mem[w + 256] = mem[_504 + 286 len 2]
                mem[w + 288] = mem[_504 + 318 len 2]
                t = t + 1
                u = u + 32
                v = v + 32
                w = ceil32(_522) + w + 352
                continue 
            return memory
              from mem[64]
               len w - mem[64]
        mem[64] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 448
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = 96
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 224] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 256] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 288] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 320] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 352] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 384] = 0
        mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 416] = 0
        mem[var14001] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
        t = var14001
        idx = var14002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 160] = 96
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 192] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 224] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 256] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 288] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 320] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 352] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 384] = 0
            mem[(32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 416] = 0
            mem[t + 32] = (32 * s * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length * stor5.length) + 128
            t = t + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 0, 50
            mem[0] = address(stor5[idx].field_0)
            mem[32] = 4
            if var48005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= stor5.length:
                revert with 0, 50
            if var52005 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                revert with 0, 50
            mem[0] = var54002
            _1968 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1968] = address(stor[(8 * var54001) + sha3(var54002)].field_0)
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
                    _2628 = mem[64]
                    mem[64] = mem[64] + ceil32(t) + 32
                    mem[_2628] = t
                    if bool(stor[u].field_0):
                        if bool(stor[u].field_0) == uint255(stor[u].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[u].field_1):
                            mem[v] = _2628
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2726 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2726] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2726 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2726
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2726 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2726
                            y = y + 1
                            z = z + 1
                            continue 
                        if 31 >= uint255(stor[u].field_1):
                            mem[_2628 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                            mem[v] = _2628
                            mem[v + 32] = uint256(stor2[w].field_0)
                            mem[v + 64] = stor3[w]
                            mem[v + 96] = uint8(stor4[w].field_0)
                            mem[v + 128] = address(stor4[w].field_8)
                            mem[v + 160] = uint256(stor5[w].field_0)
                            mem[v + 192] = uint256(stor6[w])
                            mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                            mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                            if z == -1:
                                revert with 0, 17
                            if z >= mem[96]:
                                revert with 0, 50
                            mem[(32 * z) + 128] = x
                            if y == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2772 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2772] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                                s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                                u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                                u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                v = _2772 + 32
                                w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                x = _2772
                                y = y + 1
                                z = z + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2772 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2772
                            y = y + 1
                            z = z + 1
                            continue 
                        mem[0] = u
                        mem[_2628 + 32] = uint256(stor[sha3(u)].field_0)
                        s = _2628 + 32
                        t = sha3(mem[0])
                        while _2628 + uint255(stor[u].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[v] = _2628
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2875 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2875] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2875 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2875
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2875 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2875
                        y = y + 1
                        z = z + 1
                        continue 
                    if bool(stor[u].field_0) == stor[u].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[u].field_1 % 128:
                        mem[v] = _2628
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2752 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2752] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2752 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2752
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2752 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2752
                        y = y + 1
                        z = z + 1
                        continue 
                    if 31 >= stor[u].field_1 % 128:
                        mem[_2628 + 32] = 256 * Mask(248, 0, stor[u].field_8)
                        mem[v] = _2628
                        mem[v + 32] = uint256(stor2[w].field_0)
                        mem[v + 64] = stor3[w]
                        mem[v + 96] = uint8(stor4[w].field_0)
                        mem[v + 128] = address(stor4[w].field_8)
                        mem[v + 160] = uint256(stor5[w].field_0)
                        mem[v + 192] = uint256(stor6[w])
                        mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                        mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                        if z == -1:
                            revert with 0, 17
                        if z >= mem[96]:
                            revert with 0, 50
                        mem[(32 * z) + 128] = x
                        if y == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2796 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2796] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                            s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                            u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                            u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            v = _2796 + 32
                            w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            x = _2796
                            y = y + 1
                            z = z + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2796 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2796
                        y = y + 1
                        z = z + 1
                        continue 
                    mem[0] = u
                    mem[_2628 + 32] = uint256(stor[sha3(u)].field_0)
                    s = _2628 + 32
                    t = sha3(mem[0])
                    while _2628 + stor[u].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[v] = _2628
                    mem[v + 32] = uint256(stor2[w].field_0)
                    mem[v + 64] = stor3[w]
                    mem[v + 96] = uint8(stor4[w].field_0)
                    mem[v + 128] = address(stor4[w].field_8)
                    mem[v + 160] = uint256(stor5[w].field_0)
                    mem[v + 192] = uint256(stor6[w])
                    mem[v + 224] = uint16(sub_bbc70e13[w].field_0)
                    mem[v + 256] = uint16(sub_bbc70e13[w].field_16)
                    if z == -1:
                        revert with 0, 17
                    if z >= mem[96]:
                        revert with 0, 50
                    mem[(32 * z) + 128] = x
                    if y == -1:
                        revert with 0, 17
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[0] = address(stor5[idx].field_0)
                    mem[32] = 4
                    if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[32] = 4
                    if y + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor5[idx].field_0), 4)
                    _2877 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2877] = address(stor4[address(stor5[idx].field_0)][y + 1].field_0)
                    if bool(stor4[address(stor5[idx].field_0)][y + 1].field_256):
                        s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        t = uint255(stor4[address(stor5[idx].field_0)][y + 1].field_257)
                        u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                        u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        v = _2877 + 32
                        w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        x = _2877
                        y = y + 1
                        z = z + 1
                        continue 
                    s = bool(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                    t = stor4[address(stor5[idx].field_0)][y + 1].field_257 % 128
                    u = uint256(stor4[address(stor5[idx].field_0)][y + 1].field_256)
                    u = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                    v = _2877 + 32
                    w = (8 * y + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                    x = _2877
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
                    _2836 = mem[64]
                    mem[64] = mem[64] + ceil32(var59002) + 32
                    mem[_2836] = var59002
                    if bool(stor[var59005].field_0):
                        if bool(stor[var59005].field_0) == uint255(stor[var59005].field_1) < 32:
                            revert with 0, 34
                        if not uint255(stor[var59005].field_1):
                            mem[var59006] = _2836
                            mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                            mem[var59006 + 64] = stor3[var59007]
                            mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                            mem[var59006 + 128] = address(stor4[var59007].field_8)
                            mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                            mem[var59006 + 192] = uint256(stor6[var59007])
                            mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                            mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                            if var59012 == -1:
                                revert with 0, 17
                            if var59012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var59012) + 128] = var59008
                            if var59009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2904 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2904] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                                var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                                var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                                var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                                var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var59006 = _2904 + 32
                                var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var59008 = _2904
                                var59009 = var59009 + 1
                                var59012 = var59012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2904 + 32
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2904
                            s = var59009 + 1
                            s = var59012 + 1
                            continue 
                        if 31 >= uint255(stor[var59005].field_1):
                            mem[_2836 + 32] = 256 * Mask(248, 0, stor[var59005].field_8)
                            mem[var59006] = _2836
                            mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                            mem[var59006 + 64] = stor3[var59007]
                            mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                            mem[var59006 + 128] = address(stor4[var59007].field_8)
                            mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                            mem[var59006 + 192] = uint256(stor6[var59007])
                            mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                            mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                            if var59012 == -1:
                                revert with 0, 17
                            if var59012 >= mem[96]:
                                revert with 0, 50
                            mem[(32 * var59012) + 128] = var59008
                            if var59009 == -1:
                                revert with 0, 17
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[0] = address(stor5[idx].field_0)
                            mem[32] = 4
                            if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if idx >= stor5.length:
                                revert with 0, 50
                            mem[32] = 4
                            if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                                revert with 0, 50
                            mem[0] = sha3(address(stor5[idx].field_0), 4)
                            _2928 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_2928] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                            if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                                var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                                var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                                var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                                var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                                var59006 = _2928 + 32
                                var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                                var59008 = _2928
                                var59009 = var59009 + 1
                                var59012 = var59012 + 1
                                continue 
                            s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                            s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            s = _2928 + 32
                            s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            s = _2928
                            s = var59009 + 1
                            s = var59012 + 1
                            continue 
                        mem[0] = var59005
                        mem[_2836 + 32] = uint256(stor[sha3(var59005)].field_0)
                        s = _2836 + 32
                        t = sha3(mem[0])
                        while _2836 + uint255(stor[var59005].field_1) > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[var59006] = _2836
                        mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                        mem[var59006 + 64] = stor3[var59007]
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007])
                        mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                        mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2978 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2978] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var59006 = _2978 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var59008 = _2978
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2978 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2978
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    if bool(stor[var59005].field_0) == stor[var59005].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[var59005].field_1 % 128:
                        mem[var59006] = _2836
                        mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                        mem[var59006 + 64] = stor3[var59007]
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007])
                        mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                        mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2920 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2920] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var59006 = _2920 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var59008 = _2920
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2920 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2920
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    if 31 >= stor[var59005].field_1 % 128:
                        mem[_2836 + 32] = 256 * Mask(248, 0, stor[var59005].field_8)
                        mem[var59006] = _2836
                        mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                        mem[var59006 + 64] = stor3[var59007]
                        mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                        mem[var59006 + 128] = address(stor4[var59007].field_8)
                        mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                        mem[var59006 + 192] = uint256(stor6[var59007])
                        mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                        mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                        if var59012 == -1:
                            revert with 0, 17
                        if var59012 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * var59012) + 128] = var59008
                        if var59009 == -1:
                            revert with 0, 17
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[0] = address(stor5[idx].field_0)
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if idx >= stor5.length:
                            revert with 0, 50
                        mem[32] = 4
                        if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                            revert with 0, 50
                        mem[0] = sha3(address(stor5[idx].field_0), 4)
                        _2940 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_2940] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                        if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                            var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                            var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                            var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                            var59006 = _2940 + 32
                            var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                            var59008 = _2940
                            var59009 = var59009 + 1
                            var59012 = var59012 + 1
                            continue 
                        s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                        s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        s = _2940 + 32
                        s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        s = _2940
                        s = var59009 + 1
                        s = var59012 + 1
                        continue 
                    mem[0] = var59005
                    mem[_2836 + 32] = uint256(stor[sha3(var59005)].field_0)
                    s = _2836 + 32
                    t = sha3(mem[0])
                    while _2836 + stor[var59005].field_1 % 128 > s:
                        mem[s + 32] = uint256(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[var59006] = _2836
                    mem[var59006 + 32] = uint256(stor2[var59007].field_0)
                    mem[var59006 + 64] = stor3[var59007]
                    mem[var59006 + 96] = uint8(stor4[var59007].field_0)
                    mem[var59006 + 128] = address(stor4[var59007].field_8)
                    mem[var59006 + 160] = uint256(stor5[var59007].field_0)
                    mem[var59006 + 192] = uint256(stor6[var59007])
                    mem[var59006 + 224] = uint16(sub_bbc70e13[var59007].field_0)
                    mem[var59006 + 256] = uint16(sub_bbc70e13[var59007].field_16)
                    if var59012 == -1:
                        revert with 0, 17
                    if var59012 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * var59012) + 128] = var59008
                    if var59009 == -1:
                        revert with 0, 17
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[0] = address(stor5[idx].field_0)
                    mem[32] = 4
                    if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= stor5.length:
                        revert with 0, 50
                    mem[32] = 4
                    if var59009 + 1 >= uint256(stor4[address(stor5[idx].field_0)].field_0):
                        revert with 0, 50
                    mem[0] = sha3(address(stor5[idx].field_0), 4)
                    _2980 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_2980] = address(stor4[address(stor5[idx].field_0)][var59009 + 1].field_0)
                    if bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256):
                        var59001 = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        var59002 = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                        var59003 = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                        var59005 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                        var59006 = _2980 + 32
                        var59007 = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                        var59008 = _2980
                        var59009 = var59009 + 1
                        var59012 = var59012 + 1
                        continue 
                    s = bool(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                    s = uint255(stor4[address(stor5[idx].field_0)][var59009 + 1].field_257)
                    s = uint256(stor4[address(stor5[idx].field_0)][var59009 + 1].field_256)
                    s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4)) + 1
                    s = _2980 + 32
                    s = (8 * var59009 + 1) + sha3(sha3(address(stor5[idx].field_0), 4))
                    s = _2980
                    s = var59009 + 1
                    s = var59012 + 1
                    continue 
            revert with 0, 34
        _700 = mem[64]
        mem[mem[64]] = 32
        _708 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _708:
            mem[t] = u + -_700 - 64
            _922 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            _940 = mem[_922 + 32]
            mem[u + 32] = 320
            _944 = mem[_940]
            mem[u + 320] = mem[_940]
            v = 0
            while v < _944:
                mem[v + u + 352] = mem[v + _940 + 32]
                v = v + 32
                continue 
            if ceil32(_944) > _944:
                mem[_944 + u + 352] = 0
            mem[u + 64] = mem[_922 + 64]
            mem[u + 96] = mem[_922 + 96]
            mem[u + 128] = mem[_922 + 159 len 1]
            mem[u + 160] = mem[_922 + 172 len 20]
            mem[u + 192] = mem[_922 + 192]
            mem[u + 224] = mem[_922 + 224]
            mem[u + 256] = mem[_922 + 286 len 2]
            mem[u + 288] = mem[_922 + 318 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_944) + u + 352
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
