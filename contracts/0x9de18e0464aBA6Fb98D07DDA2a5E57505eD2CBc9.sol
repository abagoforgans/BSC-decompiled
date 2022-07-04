contract main {




// =====================  Runtime code  =====================


#
#  - sub_92f6983d(?)
#
address owner;
address gameTokenAddress;
address houseAddress;
array of uint8 stor3;
array of uint8 stor4;
array of uint8 stor5;
array of uint8 stor6;
array of uint8 stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;

function owner() payable {
    return owner
}

function gameToken() payable {
    return gameTokenAddress
}

function house() payable {
    return houseAddress
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

function setHouse(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    houseAddress = arg1
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

function sub_01e7e893(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = address(arg1)
    emit OwnershipTransferred(owner, address(arg1));
}

function sub_8de5b119(?) payable {
    mem[96 len 160] = call.data[calldata.size len 160]
    if tx.origin != msg.sender:
        revert with 0, 'function caller must be a human'
    if stor8[address(msg.sender)] <= 0:
        revert with 0, 'must store block number before placing bet'
    mem[0] = msg.sender
    mem[32] = 8
    stor8[address(msg.sender)] = 0
    if not block.hash(stor8[address(msg.sender)]):
        stor9[address(msg.sender)] = 0
        return call.data[calldata.size len 160]
    mem[288] = block.hash(stor8[address(msg.sender)])
    mem[256] = 32
    mem[64] = 480
    mem[320 len 160] = call.data[calldata.size len 160]
    idx = 0
    while idx < 5:
        mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
        mem[mem[64] + 64] = idx
        _31 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx >= 5:
            revert with 'NH{q', 50
        mem[(32 * idx) + 320] = sha3(mem[_31 + 32 len mem[_31]]) % 21
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 9
    _24 = mem[64]
    mem[64] = mem[64] + 160
    if mem[320] >= 21:
        revert with 'NH{q', 50
    mem[_24] = stor3[uint8(mem[320])]
    if mem[352] >= 21:
        revert with 'NH{q', 50
    mem[_24 + 32] = stor4[uint8(mem[352])]
    if mem[384] >= 21:
        revert with 'NH{q', 50
    mem[_24 + 64] = stor5[uint8(mem[384])]
    if mem[416] >= 21:
        revert with 'NH{q', 50
    mem[_24 + 96] = stor6[uint8(mem[416])]
    if mem[448] >= 21:
        revert with 'NH{q', 50
    mem[_24 + 128] = stor7[uint8(mem[448])]
    idx = 0
    s = 0
    while uint8(idx) < 5:
        if mem[(32 * uint8(idx)) + _24 + 31 len 1] == 1:
            if uint8(s) == 255:
                revert with 'NH{q', 17
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        if uint8(idx) >= 5:
            revert with 'NH{q', 50
        if mem[(32 * uint8(idx)) + _24 + 31 len 1] != 2:
            if uint8(idx) >= 5:
                revert with 'NH{q', 50
            if mem[(32 * uint8(idx)) + _24 + 31 len 1] != 3:
                if uint8(idx) >= 5:
                    revert with 'NH{q', 50
                if mem[(32 * uint8(idx)) + _24 + 31 len 1] != 4:
                    if uint8(idx) >= 5:
                        revert with 'NH{q', 50
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = s
        continue 
    if uint8(s) != 3:
        if uint8(s) != 4:
            if uint8(s) != 5:
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 0, block.hash(stor8[address(msg.sender)])
            else:
                if stor9[address(msg.sender)] and 400 > -1 / stor9[address(msg.sender)]:
                    revert with 'NH{q', 17
                if 400 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 400 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 400 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 400 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
        else:
            if stor9[address(msg.sender)] and 50 > -1 / stor9[address(msg.sender)]:
                revert with 'NH{q', 17
            if uint8(s) != 5:
                if 50 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 50 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 50 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 50 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
            else:
                if stor9[address(msg.sender)] and 400 > -1 / stor9[address(msg.sender)]:
                    revert with 'NH{q', 17
                if 400 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 400 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 400 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 400 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
    else:
        if stor9[address(msg.sender)] and 7 > -1 / stor9[address(msg.sender)]:
            revert with 'NH{q', 17
        if uint8(s) != 4:
            if uint8(s) != 5:
                if 7 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 7 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 7 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 7 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
            else:
                if stor9[address(msg.sender)] and 400 > -1 / stor9[address(msg.sender)]:
                    revert with 'NH{q', 17
                if 400 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 400 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 400 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 400 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
        else:
            if stor9[address(msg.sender)] and 50 > -1 / stor9[address(msg.sender)]:
                revert with 'NH{q', 17
            if uint8(s) != 5:
                if 50 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 50 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 50 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 50 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
            else:
                if stor9[address(msg.sender)] and 400 > -1 / stor9[address(msg.sender)]:
                    revert with 'NH{q', 17
                if 400 * stor9[address(msg.sender)] > 0:
                    mem[mem[64] + 36] = 400 * stor9[address(msg.sender)]
                    require ext_code.size(houseAddress)
                    call houseAddress.payout(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 400 * stor9[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = sha3(block.hash(stor8[address(msg.sender)]))
                mem[mem[64] + 64 len 160] = mem[320 len 160]
                mem[mem[64] + 256] = block.hash(stor8[address(msg.sender)])
                emit 0x2a21e41c: msg.sender, sha3(block.hash(stor8[address(msg.sender)])), mem[mem[64] + 64 len 160], 400 * stor9[address(msg.sender)], block.hash(stor8[address(msg.sender)])
    stor9[address(msg.sender)] = 0
    mem[mem[64] len 160] = mem[96 len 160]
    return memory
      from mem[64]
       len 160
}



}
