contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of address stor1;

function _fallback() payable {
    revert
}

function sub_2565c813(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require not Mask(256, -128, msg.value + stor0[address(arg1)][address(arg2)].field_0)
    stor0[address(arg1)][address(arg2)].field_0 += msg.value
}

function sub_5185c7d7(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    return stor0[address(arg1)][address(arg2)].field_0, 
           stor0[address(arg1)][address(arg2)].field_256,
           0,
           stor0[address(arg1)].field_256
}

function sub_37137dd6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint128(arg2)
    if not uint128(arg2):
        stor0[msg.sender][address(arg1)].field_256 = 0
    else:
        stor0[msg.sender][address(arg1)].field_256 = uint128(arg2) or block.timestamp + (24 * 3600) << 128
    emit Update(msg.sender, address(arg1));
}

function sub_1cea28c0(?) {
    require calldata.size - 4 >= 64
    mem[128] = arg2
    mem[160] = msg.sender
    mem[96] = 64
    mem[64] = 192
    mem[0] = sha3(arg2, msg.sender)
    mem[32] = 1
    uint256(stor1[arg2][msg.sender]) = msg.sender
    s = 0
    idx = arg1
    while idx:
        mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
        _12 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _14 = sha3(mem[_12 + 32 len mem[_12]])
        mem[0] = sha3(mem[_12 + 32 len mem[_12]])
        mem[32] = 1
        uint256(stor1[mem[0]]) = msg.sender
        s = _14
        idx = idx - 1
        continue 
}

function sub_afe53a6e(?) {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        if cd[4]:
            stor0[msg.sender].field_256 = 0
        else:
            stor0[msg.sender].field_256 = block.timestamp + (24 * 3600)
    else:
        if cd[4]:
            require var25002 - 1 < ('cd', 36).length
            require cd[((32 * var25002 - 1) + cd[36] + 36)] == address(cd[((32 * var25002 - 1) + cd[36] + 36)])
            stor0[msg.sender][2][address(cd[((32 * var25002 - 1) + cd[36] + 36)])].field_0 = -1
            s = var25002 - 1
            idx = var25002 - 1
            while idx:
                require idx - 1 < ('cd', 36).length
                require cd[((32 * idx - 2) + cd[36] + 36)] == address(cd[((32 * idx - 2) + cd[36] + 36)])
                mem[0] = address(cd[((32 * idx - 2) + cd[36] + 36)])
                mem[32] = sha3(msg.sender, 0) + 2
                stor0[msg.sender][2][address(cd[((32 * idx - 2) + cd[36] + 36)])].field_0 = -1
                s = idx - 1
                idx = idx - 1
                continue 
        else:
            require var27002 - 1 < ('cd', 36).length
            require cd[((32 * var27002 - 1) + cd[36] + 36)] == address(cd[((32 * var27002 - 1) + cd[36] + 36)])
            if stor0[msg.sender].field_256 < block.timestamp:
                stor0[msg.sender][2][address(cd[((32 * var27002 - 1) + cd[36] + 36)])].field_0 = 0
                s = var27002 - 1
                idx = var27002 - 1
                while idx:
                    require idx - 1 < ('cd', 36).length
                    require cd[((32 * idx - 2) + cd[36] + 36)] == address(cd[((32 * idx - 2) + cd[36] + 36)])
                    mem[0] = address(cd[((32 * idx - 2) + cd[36] + 36)])
                    mem[32] = sha3(msg.sender, 0) + 2
                    stor0[msg.sender][2][address(cd[((32 * idx - 2) + cd[36] + 36)])].field_0 = 0
                    s = idx - 1
                    idx = idx - 1
                    continue 
            else:
                stor0[msg.sender][2][address(cd[((32 * var27002 - 1) + cd[36] + 36)])].field_0 = block.timestamp + (24 * 3600)
                s = var27002 - 1
                idx = var27002 - 1
                while idx:
                    require idx - 1 < ('cd', 36).length
                    require cd[((32 * idx - 2) + cd[36] + 36)] == address(cd[((32 * idx - 2) + cd[36] + 36)])
                    mem[0] = address(cd[((32 * idx - 2) + cd[36] + 36)])
                    mem[32] = sha3(msg.sender, 0) + 2
                    stor0[msg.sender][2][address(cd[((32 * idx - 2) + cd[36] + 36)])].field_0 = block.timestamp + (24 * 3600)
                    s = idx - 1
                    idx = idx - 1
                    continue 
    emit 0x453252f5: msg.sender
}

function move(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint128(arg2) >> 128 >= 0:
        if not Mask(256, -128, arg2):
            emit Update(msg.sender, arg1);
            if not uint128(arg2):
                require msg.value + stor0[msg.sender][address(arg1)].field_0 < 0x100000000000000000000000000000000
                require uint128(stor0[msg.sender][address(arg1)].field_0) >> 128 < 0x100000000000000000000000000000000
                stor0[msg.sender][address(arg1)].field_0 += msg.value
            else:
                require uint128(arg2) <= msg.value + stor0[msg.sender][address(arg1)].field_0
                require msg.value + stor0[msg.sender][address(arg1)].field_0 - uint128(arg2) < 0x100000000000000000000000000000000
                require uint128(stor0[msg.sender][address(arg1)].field_0) >> 128 < 0x100000000000000000000000000000000
                stor0[msg.sender][address(arg1)].field_0 = msg.value + stor0[msg.sender][address(arg1)].field_0 - uint128(arg2)
        else:
            require uint128(arg2) >> 128 <= msg.value + stor0[msg.sender][address(arg1)].field_0
            if uint128(stor0[msg.sender][address(arg1)].field_0) >> 128:
                emit Update(msg.sender, arg1);
            else:
                emit Create(msg.sender, arg1);
            if not uint128(arg2):
                require msg.value + stor0[msg.sender][address(arg1)].field_0 - (uint128(arg2) >> 128) < 0x100000000000000000000000000000000
                require (uint128(arg2) >> 128) + (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) < 0x100000000000000000000000000000000
                stor0[msg.sender][address(arg1)].field_0 = msg.value + stor0[msg.sender][address(arg1)].field_0 - (uint128(arg2) >> 128) or (uint128(arg2) >> 128) + (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) << 128
            else:
                require uint128(arg2) <= msg.value + stor0[msg.sender][address(arg1)].field_0 - (uint128(arg2) >> 128)
                require msg.value + stor0[msg.sender][address(arg1)].field_0 - (uint128(arg2) >> 128) - uint128(arg2) < 0x100000000000000000000000000000000
                require (uint128(arg2) >> 128) + (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) < 0x100000000000000000000000000000000
                stor0[msg.sender][address(arg1)].field_0 = msg.value + stor0[msg.sender][address(arg1)].field_0 - (uint128(arg2) >> 128) - uint128(arg2) or (uint128(arg2) >> 128) + (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) << 128
    else:
        require -uint128(arg2) >> 128 <= uint128(stor0[msg.sender][address(arg1)].field_0) >> 128
        require (uint128(stor0[msg.sender][address(arg1)].field_256) >> 128) - 1 < block.timestamp
        if not stor0[msg.sender][address(arg1)].field_256 + (uint128(arg2) >> 128):
            stor0[msg.sender][address(arg1)].field_256 = 0
        else:
            stor0[msg.sender][address(arg1)].field_256 += uint128(arg2) >> 128
        emit Update(msg.sender, arg1);
        if not uint128(arg2):
            require -(uint128(arg2) >> 128) + msg.value + stor0[msg.sender][address(arg1)].field_0 < 0x100000000000000000000000000000000
            require (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) + (uint128(arg2) >> 128) < 0x100000000000000000000000000000000
            stor0[msg.sender][address(arg1)].field_0 = -(uint128(arg2) >> 128) + msg.value + stor0[msg.sender][address(arg1)].field_0 or (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) + (uint128(arg2) >> 128) << 128
        else:
            require uint128(arg2) <= -(uint128(arg2) >> 128) + msg.value + stor0[msg.sender][address(arg1)].field_0
            require -(uint128(arg2) >> 128) + msg.value + stor0[msg.sender][address(arg1)].field_0 - uint128(arg2) < 0x100000000000000000000000000000000
            require (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) + (uint128(arg2) >> 128) < 0x100000000000000000000000000000000
            stor0[msg.sender][address(arg1)].field_0 = -(uint128(arg2) >> 128) + msg.value + stor0[msg.sender][address(arg1)].field_0 - uint128(arg2) or (uint128(stor0[msg.sender][address(arg1)].field_0) >> 128) + (uint128(arg2) >> 128) << 128
    if uint128(arg2):
        call msg.sender with:
           value uint128(arg2) wei
             gas gas_remaining wei
        require ext_call.success
}

function sub_2dd2722a(?) {
    require calldata.size - 4 >= 224
    require calldata.size - 68 >= 160
    if arg1:
        if Mask(96, 0, uint256(stor1[arg1])) >> 160 <= block.timestamp:
            if msg.sender == address(stor1[arg1]):
                uint256(stor1[arg1]) = 0
    if arg2:
        if (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) > block.timestamp:
            signer = erecover(sha3(sha3(sha3(Mask(256, -128, arg3) << 128, arg2), uint32(arg5)), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid), bool(arg5) + 27 << 248, arg6, arg7) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= uint64(sha3(arg3, uint64(arg4) >> 192)):
                if stor0[Mask(160, 33, arg5) << 63].field_256 - 1 >= block.timestamp:
                    if not uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('param', 'arg2')), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]):
                        uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('param', 'arg2')), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]) = msg.sender or (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) << 160
                        if uint128(arg4) > stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                            emit 0x53d634d7: Mask(160, 33, arg5) >> 33, address(signer)
                            stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 = 0
                            if stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                if bool(arg2) >> 255:
                                    require not Mask(256, -128, stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 + stor0[address(arg2)][address(arg2)].field_0)
                                    stor0[address(arg2)][address(arg2)].field_0 += stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0
                                else:
                                    call arg2 with:
                                       value stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 wei
                                         gas gas_remaining wei
                                    require ext_call.success
                        else:
                            emit Update(Mask(160, 33, arg5) >> 33, address(signer));
                            stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 -= uint128(arg4)
                            if uint128(arg4):
                                if bool(arg2) >> 255:
                                    require not Mask(256, -128, uint128(arg4) + stor0[address(arg2)][address(arg2)].field_0)
                                    stor0[address(arg2)][address(arg2)].field_0 += uint128(arg4)
                                else:
                                    call arg2 with:
                                       value uint128(arg4) wei
                                         gas gas_remaining wei
                                    require ext_call.success
                else:
                    if block.timestamp < stor0[Mask(160, 33, arg5) << 63][2][address(arg2)].field_0:
                        if not uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('param', 'arg2')), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]):
                            uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('param', 'arg2')), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]) = msg.sender or (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) << 160
                            if uint128(arg4) > stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                emit 0x53d634d7: Mask(160, 33, arg5) >> 33, address(signer)
                                stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 = 0
                                if stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                    if bool(arg2) >> 255:
                                        require not Mask(256, -128, stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 + stor0[address(arg2)][address(arg2)].field_0)
                                        stor0[address(arg2)][address(arg2)].field_0 += stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0
                                    else:
                                        call arg2 with:
                                           value stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 wei
                                             gas gas_remaining wei
                                        require ext_call.success
                            else:
                                emit Update(Mask(160, 33, arg5) >> 33, address(signer));
                                stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 -= uint128(arg4)
                                if uint128(arg4):
                                    if bool(arg2) >> 255:
                                        require not Mask(256, -128, uint128(arg4) + stor0[address(arg2)][address(arg2)].field_0)
                                        stor0[address(arg2)][address(arg2)].field_0 += uint128(arg4)
                                    else:
                                        call arg2 with:
                                           value uint128(arg4) wei
                                             gas gas_remaining wei
                                        require ext_call.success
    else:
        if (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) > block.timestamp:
            signer = erecover(sha3(sha3(sha3(Mask(256, -128, arg3) << 128, msg.sender or arg2), uint32(arg5)), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid), bool(arg5) + 27 << 248, arg6, arg7) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= uint64(sha3(arg3, uint64(arg4) >> 192)):
                if stor0[Mask(160, 33, arg5) << 63].field_256 - 1 >= block.timestamp:
                    if not uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('or', 'msg.sender', ('param', 'arg2'))), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]):
                        uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('or', 'msg.sender', ('param', 'arg2'))), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]) = msg.sender or (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) << 160
                        if uint128(arg4) > stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                            emit 0x53d634d7: Mask(160, 33, arg5) >> 33, address(signer)
                            stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 = 0
                            if stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                if bool(msg.sender) >> 255 or bool(arg2) >> 255:
                                    require not Mask(256, -128, stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 + stor0[address(msg.sender)][address(msg.sender)].field_0)
                                    stor0[address(msg.sender)][address(msg.sender)].field_0 += stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0
                                else:
                                    call msg.sender with:
                                       value stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 wei
                                         gas gas_remaining wei
                                    require ext_call.success
                        else:
                            emit Update(Mask(160, 33, arg5) >> 33, address(signer));
                            stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 -= uint128(arg4)
                            if uint128(arg4):
                                if bool(msg.sender) >> 255 or bool(arg2) >> 255:
                                    require not Mask(256, -128, uint128(arg4) + stor0[address(msg.sender)][address(msg.sender)].field_0)
                                    stor0[address(msg.sender)][address(msg.sender)].field_0 += uint128(arg4)
                                else:
                                    call msg.sender with:
                                       value uint128(arg4) wei
                                         gas gas_remaining wei
                                    require ext_call.success
                else:
                    if block.timestamp < stor0[Mask(160, 33, arg5) << 63][2][msg.sender or arg2].field_0:
                        if not uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('or', 'msg.sender', ('param', 'arg2'))), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]):
                            uint256(stor1[sha3(('map', ('map', ('mask_shl', 256, -128, 128, ('param', 'arg3')), ('or', 'msg.sender', ('param', 'arg2'))), ('mask_shl', 32, 0, 0, ('param', 'arg5'))), arg3 << 128, arg4, Mask(223, 33, arg5), address(this.address), chainid) xor address(signer)]) = msg.sender or (uint64(arg4) >> 192) + (arg5 % 9223372036854775808 >> 193) << 160
                            if uint128(arg4) > stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                emit 0x53d634d7: Mask(160, 33, arg5) >> 33, address(signer)
                                stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 = 0
                                if stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0:
                                    if bool(msg.sender) >> 255 or bool(arg2) >> 255:
                                        require not Mask(256, -128, stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 + stor0[address(msg.sender)][address(msg.sender)].field_0)
                                        stor0[address(msg.sender)][address(msg.sender)].field_0 += stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0
                                    else:
                                        call msg.sender with:
                                           value stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 wei
                                             gas gas_remaining wei
                                        require ext_call.success
                            else:
                                emit Update(Mask(160, 33, arg5) >> 33, address(signer));
                                stor0[Mask(160, 33, arg5) << 63][address(signer)].field_0 -= uint128(arg4)
                                if uint128(arg4):
                                    if bool(msg.sender) >> 255 or bool(arg2) >> 255:
                                        require not Mask(256, -128, uint128(arg4) + stor0[address(msg.sender)][address(msg.sender)].field_0)
                                        stor0[address(msg.sender)][address(msg.sender)].field_0 += uint128(arg4)
                                    else:
                                        call msg.sender with:
                                           value uint128(arg4) wei
                                             gas gas_remaining wei
                                        require ext_call.success
}

function sub_c8941cde(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (160 * ('cd', 68).length) + 36 <= calldata.size
    idx = ('cd', 4).length
    while idx:
        require idx - 1 < ('cd', 4).length
        mem[0] = cd[((32 * idx - 1) + cd[4] + 36)]
        mem[32] = 1
        if Mask(96, 0, uint256(stor1[cd[((32 * idx - 1) + cd[4] + 36)]])) >> 160 <= block.timestamp:
            if msg.sender == address(stor1[cd[((32 * idx - 1) + cd[4] + 36)]]):
                uint256(stor1[cd[((32 * idx - 1) + cd[4] + 36)]]) = 0
        idx = idx - 1
        continue 
    if address(cd[36]):
        idx = ('cd', 68).length
        while idx:
            require idx - 1 < ('cd', 68).length
            if (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) > block.timestamp:
                _137 = mem[64]
                mem[mem[64] + 32] = uint128(cd[((160 * idx) + cd[68] - 124)]) >> 128
                mem[mem[64] + 64] = cd[36]
                _139 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[_137 + 128] = sha3(mem[_139 + 32 len mem[_139]])
                mem[_137 + 160] = Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) >> 1
                mem[_137 + 96] = 64
                mem[_137 + 224] = sha3(mem[_137 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223)
                mem[_137 + 256] = uint128(cd[((160 * idx) + cd[68] - 124)])
                mem[_137 + 288] = cd[((160 * idx) + cd[68] - 92)]
                mem[_137 + 320] = Mask(223, 33, cd[((160 * idx) + cd[68] - 60)])
                mem[_137 + 352] = this.address
                mem[_137 + 384] = chainid
                mem[_137 + 192] = 192
                _153 = sha3(sha3(mem[_137 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid)
                mem[_137 + 544] = cd[((160 * idx) + cd[68] + 4)]
                signer = erecover(sha3(sha3(mem[_137 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid), bool(cd[((160 * idx) + cd[68] - 60)]) + 27 << 248, cd[((160 * idx) + cd[68] - 28)], cd[((160 * idx) + cd[68] + 4)]) 
                mem[_137 + 416] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_137 + 480] = cd[((160 * idx) + cd[68] - 124)]
                mem[_137 + 512] = uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192
                mem[_137 + 448] = 64
                if 0 >= uint64(sha3(cd[((160 * idx) + cd[68] - 124)], uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192)):
                    if stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63].field_256 - 1 >= block.timestamp:
                        mem[0] = sha3(sha3(mem[_137 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid) xor address(signer)
                        mem[32] = 1
                        if not uint256(stor1[_153 xor address(signer)]):
                            uint256(stor1[_153 xor address(signer)]) = msg.sender or (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) << 160
                            mem[0] = address(signer)
                            mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0)
                            if uint128(cd[((160 * idx) + cd[68] - 92)]) > stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0:
                                emit 0x53d634d7: Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer)
                                stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 = 0
                            else:
                                emit Update(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer));
                                stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 -= uint128(cd[((160 * idx) + cd[68] - 92)])
                    else:
                        mem[0] = address(cd[36])
                        mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0) + 2
                        if block.timestamp < stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][2][address(cd[36])].field_0:
                            mem[0] = _153 xor address(signer)
                            mem[32] = 1
                            if not uint256(stor1[_153 xor address(signer)]):
                                uint256(stor1[_153 xor address(signer)]) = msg.sender or (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) << 160
                                mem[0] = address(signer)
                                mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0)
                                if uint128(cd[((160 * idx) + cd[68] - 92)]) > stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0:
                                    emit 0x53d634d7: Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer)
                                    stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 = 0
                                else:
                                    emit Update(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer));
                                    stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 -= uint128(cd[((160 * idx) + cd[68] - 92)])
            mem[64] = 96
            idx = idx - 1
            continue 
    else:
        idx = ('cd', 68).length
        while idx:
            require idx - 1 < ('cd', 68).length
            if (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) > block.timestamp:
                _138 = mem[64]
                mem[mem[64] + 32] = uint128(cd[((160 * idx) + cd[68] - 124)]) >> 128
                mem[mem[64] + 64] = msg.sender or cd[36]
                _142 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[_138 + 128] = sha3(mem[_142 + 32 len mem[_142]])
                mem[_138 + 160] = Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) >> 1
                mem[_138 + 96] = 64
                mem[_138 + 224] = sha3(mem[_138 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223)
                mem[_138 + 256] = uint128(cd[((160 * idx) + cd[68] - 124)])
                mem[_138 + 288] = cd[((160 * idx) + cd[68] - 92)]
                mem[_138 + 320] = Mask(223, 33, cd[((160 * idx) + cd[68] - 60)])
                mem[_138 + 352] = this.address
                mem[_138 + 384] = chainid
                mem[_138 + 192] = 192
                _158 = sha3(sha3(mem[_138 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid)
                mem[_138 + 544] = cd[((160 * idx) + cd[68] + 4)]
                signer = erecover(sha3(sha3(mem[_138 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid), bool(cd[((160 * idx) + cd[68] - 60)]) + 27 << 248, cd[((160 * idx) + cd[68] - 28)], cd[((160 * idx) + cd[68] + 4)]) 
                mem[_138 + 416] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_138 + 480] = cd[((160 * idx) + cd[68] - 124)]
                mem[_138 + 512] = uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192
                mem[_138 + 448] = 64
                if 0 >= uint64(sha3(cd[((160 * idx) + cd[68] - 124)], uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192)):
                    if stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63].field_256 - 1 >= block.timestamp:
                        mem[0] = sha3(sha3(mem[_138 + 128], Mask(32, 1, cd[((160 * idx) + cd[68] - 60)]) << 223), cd[((160 * idx) + cd[68] - 124)] << 128, cd[((160 * idx) + cd[68] - 92)], Mask(223, 33, cd[((160 * idx) + cd[68] - 60)]), address(this.address), chainid) xor address(signer)
                        mem[32] = 1
                        if not uint256(stor1[_158 xor address(signer)]):
                            uint256(stor1[_158 xor address(signer)]) = msg.sender or (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) << 160
                            mem[0] = address(signer)
                            mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0)
                            if uint128(cd[((160 * idx) + cd[68] - 92)]) > stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0:
                                emit 0x53d634d7: Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer)
                                stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 = 0
                            else:
                                emit Update(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer));
                                stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 -= uint128(cd[((160 * idx) + cd[68] - 92)])
                    else:
                        mem[0] = msg.sender or address(cd[36])
                        mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0) + 2
                        if block.timestamp < stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][2][msg.sender or address(cd[36])].field_0:
                            mem[0] = _158 xor address(signer)
                            mem[32] = 1
                            if not uint256(stor1[_158 xor address(signer)]):
                                uint256(stor1[_158 xor address(signer)]) = msg.sender or (uint64(cd[((160 * idx) + cd[68] - 92)]) >> 192) + (cd[((160 * idx) + cd[68] - 60)] % 9223372036854775808 >> 193) << 160
                                mem[0] = address(signer)
                                mem[32] = sha3(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63, 0)
                                if uint128(cd[((160 * idx) + cd[68] - 92)]) > stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0:
                                    emit 0x53d634d7: Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer)
                                    stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 = 0
                                else:
                                    emit Update(Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) >> 33, address(signer));
                                    stor0[Mask(160, 33, cd[((160 * idx) + cd[68] - 60)]) << 63][address(signer)].field_0 -= uint128(cd[((160 * idx) + cd[68] - 92)])
            mem[64] = 96
            idx = idx - 1
            continue 
}



}
