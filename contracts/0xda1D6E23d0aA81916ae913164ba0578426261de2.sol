contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint8 stor1;
mapping of address ownerOf;
uint256 stor3;
mapping of address creators;
mapping of uint256 maxIndex;
array of uint256 sub_ae882b65;

function maxIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ownerOf[arg1]
}

function sub_ae882b65(?) payable {
    return sub_ae882b65[arg1][0 len sub_ae882b65[arg1].length]
}

function creators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(creators[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getNonFungibleIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint128(arg1)
}

function isFungible(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return not bool(Mask(1, 255, arg1))
}

function getNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(128, 128, arg1)
}

function isNonFungible(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    stor1[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        if Mask(32, 224, arg1) != 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
            return 0
    return 1
}

function isNonFungibleItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return bool(uint128(arg1))
}

function isNonFungibleBaseType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(1, 255, arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
    return not bool(uint128(arg1))
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if Mask(1, 255, arg2) != 0x8000000000000000000000000000000000000000000000000000000000000000:
        return stor0[arg2][address(arg1)]
    if not uint128(arg2):
        return stor0[arg2][address(arg1)]
    if ownerOf[arg2] == arg1:
        return 1
    else:
        return 0
}

function setURI(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == address(creators[arg2])
    require msg.sender == address(creators[arg2])
    sub_ae882b65[arg2] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        sub_ae882b65[arg2][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while sub_ae882b65[arg2].length + 31 / 32 > idx:
        sub_ae882b65[arg2][idx] = 0
        idx = idx + 1
        continue 
    emit URI(Array(len=arg1.length, data=arg1[all]), arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x624e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
    if Mask(1, 255, arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ownerOf[arg3] == arg1
        ownerOf[arg3] = arg2
    else:
        require arg4 <= stor0[arg3][address(arg1)]
        stor0[arg3][address(arg1)] -= arg4
        require arg4 + stor0[arg3][arg2] >= stor0[arg3][arg2]
        stor0[arg3][address(arg2)] = arg4 + stor0[arg3][arg2]
    emit 0xfec3d581: arg3, arg4, msg.sender, arg1, arg2
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        57,
                        0x64636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                        arg4 % 72057594037927936
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    if arg1.length:
        mem[128 len 32 * arg1.length] = code.data[7260 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        if Mask(1, 255, cd[((32 * idx) + arg2 + 36)]) != 0x8000000000000000000000000000000000000000000000000000000000000000:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 0)
            require idx < arg1.length
            mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
        else:
            if not uint128(cd[((32 * idx) + arg2 + 36)]):
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = sha3(cd[((32 * idx) + arg2 + 36)], 0)
                require idx < arg1.length
                mem[(32 * idx) + 128] = stor0[cd[((32 * idx) + arg2 + 36)]][address(cd[((32 * idx) + arg1 + 36)])]
            else:
                mem[0] = cd[((32 * idx) + arg2 + 36)]
                mem[32] = 2
                require idx < arg1.length
                if ownerOf[cd[((32 * idx) + arg2 + 36)]] == address(cd[((32 * idx) + arg1 + 36)]):
                    mem[(32 * idx) + 128] = 1
                else:
                    mem[(32 * idx) + 128] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), 
}

function create(string arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    stor3++
    if not arg2:
        uint256(creators[stor3 + 1]) = msg.sender or Mask(96, 160, uint256(creators[stor3 + 1]))
        sub_ae882b65[stor3 + 1] = (2 * arg1.length) + 1
        s = 0
        idx = arg1 + 36
        while arg1 + arg1.length + 36 > idx:
            sub_ae882b65[stor3 + 1][s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while sub_ae882b65[stor3 + 1].length + 31 / 32 > idx:
            sub_ae882b65[stor3 + 1][idx] = 0
            idx = idx + 1
            continue 
        emit 0xfec3d581: stor3 + 1, 0, msg.sender, 0, 0
        if arg1.length:
            emit URI(Array(len=arg1.length, data=arg1[all]), stor3 + 1 << 128);
        return (stor3 + 1 << 128)
    uint256(creators[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128]) = msg.sender or Mask(96, 160, uint256(creators[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128]))
    sub_ae882b65[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        sub_ae882b65[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while sub_ae882b65[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128].length + 31 / 32 > idx:
        sub_ae882b65[0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128][idx] = 0
        idx = idx + 1
        continue 
    emit 0xfec3d581: 0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128, 0, msg.sender, 0, 0
    if arg1.length:
        emit URI(Array(len=arg1.length, data=arg1[all]), 0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128);
    return (0x8000000000000000000000000000000000000000000000000000000000000000 or stor3 + 1 << 128)
}

function mintNonFungible(uint256 arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == address(creators[arg1])
    require Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000
    require maxIndex[arg1] + arg2.length >= arg2.length
    mem[32] = 5
    maxIndex[arg1] += arg2.length
    idx = 0
    while idx < arg2.length:
        mem[32] = 2
        ownerOf[arg1 or stor5[arg1] + idx + 1] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = arg1 or maxIndex[arg1] + idx + 1
        mem[mem[64] + 32] = 1
        mem[0] = arg1 or maxIndex[arg1] + idx + 1
        emit 0xfec3d581: arg1 or maxIndex[arg1] + idx + 1, 1, msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)])
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
            _30 = mem[64]
            mem[64] = mem[64] + 32
            mem[_30] = 0
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1 or maxIndex[arg1] + idx + 1
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _30 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1 or maxIndex[arg1] + idx + 1, 1, 160, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'dcontract returned an unknown value from onERC1155Receive'
        idx = idx + 1
        continue 
}

function mintFungible(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[32] = 4
    require msg.sender == address(creators[arg1])
    require not Mask(1, 255, arg1)
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require stor0[arg1][address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= cd[((32 * idx) + arg3 + 36)]
        mem[32] = sha3(arg1, 0)
        stor0[arg1][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = cd[((32 * idx) + arg3 + 36)]
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        emit 0xfec3d581: arg1, cd[((32 * idx) + arg3 + 36)], msg.sender, 0, address(cd[((32 * idx) + arg2 + 36)])
        if ext_code.size(address(cd[((32 * idx) + arg2 + 36)])):
            _34 = mem[64]
            mem[64] = mem[64] + 32
            mem[_34] = 0
            mem[mem[64]] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1
            mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
            mem[mem[64] + 132] = 160
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _34 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, arg1, cd[((32 * idx) + arg3 + 36)], 160, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            57,
                            0x64636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e4552433131353552656365697665,
                            cd[((32 * idx) + arg3 + 36)] % 72057594037927936
        idx = idx + 1
        continue 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'cannot send to zero address'
    if arg4.length != arg3.length:
        revert with 0, 'Array length must match'
    if arg1 != msg.sender:
        if bool(stor1[address(arg1)][msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x624e656564206f70657261746f7220617070726f76616c20666f7220337264207061727479207472616e7366657273,
                        mem[211 len 17]
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        if Mask(1, 255, cd[((32 * idx) + arg3 + 36)]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require ownerOf[cd[((32 * idx) + arg3 + 36)]] == arg1
            mem[0] = cd[((32 * idx) + arg3 + 36)]
            mem[32] = 2
            ownerOf[cd[((32 * idx) + arg3 + 36)]] = arg2
        else:
            require cd[((32 * idx) + arg4 + 36)] <= stor0[cd[((32 * idx) + arg3 + 36)]][address(arg1)]
            stor0[cd[((32 * idx) + arg3 + 36)]][address(arg1)] -= cd[((32 * idx) + arg4 + 36)]
            require stor0[cd[((32 * idx) + arg3 + 36)]][address(arg2)] + cd[((32 * idx) + arg4 + 36)] >= cd[((32 * idx) + arg4 + 36)]
            mem[0] = arg2
            mem[32] = sha3(cd[((32 * idx) + arg3 + 36)], 0)
            stor0[cd[((32 * idx) + arg3 + 36)]][address(arg2)] += cd[((32 * idx) + arg4 + 36)]
        idx = idx + 1
        continue 
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = 0
    mem[floor32(arg3.length) + 192] = arg4.length
    mem[floor32(arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + floor32(arg3.length) + 224] = 0
    emit TransferBatch(Array(len=arg3.length, data=mem[192 len floor32(arg3.length) + 32], call.data[arg4 + 36 len floor32(arg4.length)]), floor32(arg3.length) + 96, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        mem[(32 * arg4.length) + (32 * arg3.length) + 192 len arg5.length] = arg5[all]
        mem[(32 * arg4.length) + (32 * arg3.length) + arg5.length + 192] = 0
        mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 388] = arg4.length
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 420] = arg5.length
        mem[(64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452 len ceil32(arg5.length)] = arg5[all], mem[(32 * arg4.length) + (32 * arg3.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg4.length) + (32 * arg3.length) + arg5.length + -floor32(arg3.length) + 64]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        else:
            mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + 452] = mem[floor32(arg5.length) + (64 * arg4.length) + (64 * arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 484 len arg5.length % 32]
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg4.length) + (32 * arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 388 len (32 * arg4.length) + (32 * arg3.length) + floor32(arg5.length) + -floor32(arg3.length) + 96]), (32 * arg3.length) + 192, (32 * arg4.length) + (32 * arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        62,
                        0x2e636f6e74726163742072657475726e656420616e20756e6b6e6f776e2076616c75652066726f6d206f6e45524331313535426174636852656365697665,
                        uint16((32 * arg3.length) + 192)
}



}
