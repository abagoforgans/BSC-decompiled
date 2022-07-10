contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
address stor7;
address stor8;
uint8 stor9; offset 160
uint128 stor9; offset 160
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
mapping of uint256 stor13;
uint8 stor14;
uint256 stor15;
uint256 stor16;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_f2e18bad(?) {
    return stor13[stor10][msg.sender], stor11
}

function sub_27dbc977(?) {
    require calldata.size - 4 >= 64
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor11 = arg1
    stor12 = arg2
}

function sub_d175539e(?) {
    require calldata.size - 4 >= 64
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor15 = arg1
    stor16 = arg2
}

function sub_0c92e777(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor8 = address(arg1)
}

function sub_4ad32030(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor6 = address(arg1)
}

function sub_fe376d0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor14 = uint8(bool(arg1))
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    address(stor9.field_0) = arg1
}

function sub_2d9bc79f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, bool(arg1))
}

function setPremiumPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    stor5 = 10^15 * arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a878dfbc(?) {
    require calldata.size - 4 >= 96
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if arg1 >= 5:
        revert with 0, 'There are only 5 bundles.'
    stor3[arg1] = arg2
    if arg3 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    stor3[arg1] = 10^15 * arg3
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_24d61093(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor7.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if bool(arg1) == bool(uint8(stor9.field_160)):
        revert with 0, 'State is the same.'
    Mask(96, 0, stor9.field_160) = Mask(96, 0, bool(arg1))
    if not arg1:
        if 1 > !stor10:
            revert with 0, 17
        stor10++
}

function burn(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor9.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only DogeChampionsNFT contract can access this function.'
    if uint8(stor9.field_160):
        if 1 > !stor13[stor10][address(arg2)]:
            revert with 0, 17
        stor13[stor10][address(arg2)]++
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg1][address(arg2)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(arg2)]--
    emit TransferSingle(arg1, 1, msg.sender, arg2, 0);
}

function sub_cc5c3bd3(?) {
    require calldata.size - 4 >= 32
    if bool(uint8(stor9.field_160)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Consume frenzy event is not active.'
    if arg1 < 3:
        revert with 0, 'There is no such premium type.'
    if arg1 >= 6:
        revert with 0, 'There is no such premium type.'
    if stor13[stor10][msg.sender] < stor11:
        revert with 0, 'Not enough consumables.'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > !stor12:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += stor12
    emit TransferSingle(arg1, stor12, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, stor12, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor13[stor10][msg.sender] < stor11:
        revert with 0, 17
    stor13[stor10][msg.sender] -= stor11
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_2965a834(?) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no such premium consumable type.'
    if arg1 >= 6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no such premium consumable type.'
    if stor5 and arg2 > -1 / stor5:
        revert with 0, 17
    if stor5 * arg2 != msg.value:
        revert with 0, 'Please send exact price.'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > !arg2:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += arg2
    emit TransferSingle(arg1, arg2, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, arg2, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    call address(stor7.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == stor6:
        revert with 0, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][stor6] = 1
    emit ApprovalForAll(1, msg.sender, stor6);
}

function sub_b9163eac(?) {
    require calldata.size - 4 >= 32
    if bool(stor14) != 1:
        revert with 0, 'Premium event is not active.'
    if arg1 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no such consumable type.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(msg.sender)] < stor15:
        revert with 0, 'Not enough consumables.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg1][address(msg.sender)] < stor15:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(msg.sender)] -= stor15
    emit TransferSingle(arg1, stor15, msg.sender, msg.sender, 0);
    if 3 > !arg1:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1 + 3][address(msg.sender)] > !stor16:
        revert with 0, 17
    balanceOf[arg1 + 3][address(msg.sender)] += stor16
    emit TransferSingle(arg1 + 3, stor16, msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1 + 3, stor16, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_9202b40f(?) payable {
    require calldata.size - 4 >= 64
    if bool(uint8(stor7.field_160)) != 1:
        revert with 0, 'Bundle sales are closed.'
    if arg1 <= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no such premium consumable type.'
    if arg1 >= 6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is no such premium consumable type.'
    if arg2 >= 5:
        revert with 0, 'There are only 5 bundles.'
    if stor4[arg2] != msg.value:
        revert with 0, 'Please send exact price.'
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg1][address(msg.sender)] > !stor3[arg2]:
        revert with 0, 17
    balanceOf[arg1][address(msg.sender)] += stor3[arg2]
    emit TransferSingle(arg1, stor3[arg2], msg.sender, 0, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg1, stor3[arg2], 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    call address(stor7.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == stor6:
        revert with 0, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][stor6] = 1
    emit ApprovalForAll(1, msg.sender, stor6);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x79ee54f700000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x79ee54f7 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if 5 >= _5:
        revert with 0, 50
    if mem[ceil32(return_data.size) + 288] < arg1:
        revert with 0, 'You don't have enough Consumable rewards.'
    idx = 0
    while idx < arg1:
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 > !arg1:
            revert with 0, 17
        _189 = mem[64]
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = idx + arg1 + 1
        _190 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _192 = sha3(mem[_190 + 32 len mem[_190]])
        mem[_189 + 116] = 0
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[_189 + 148] = 1
        mem[_189 + 180] = _192 % 3
        mem[_189 + 212] = 1
        mem[64] = _189 + 276
        mem[_189 + 244] = 1
        mem[0] = msg.sender
        mem[32] = sha3(_192 % 3, 0)
        if balanceOf[_192 % 3][address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[_192 % 3][address(msg.sender)]++
        mem[_189 + 276] = _192 % 3
        mem[_189 + 308] = 1
        emit TransferSingle(_192 % 3, 1, msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender):
            mem[_189 + 280] = msg.sender
            mem[_189 + 312] = 0
            mem[_189 + 344] = _192 % 3
            mem[_189 + 376] = 1
            mem[_189 + 408] = 160
            mem[_189 + 440] = 0
            s = 0
            while s < 0:
                mem[s + _189 + 472] = mem[_189 + s + 148]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, 0, _192 % 3, 1, 160, 0
            mem[_189 + 276] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = _189 + ceil32(return_data.size) + 276
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(stor8)
    call stor8.0xb88d2cc6 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.sender == stor6:
        revert with 0, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][stor6] = 1
    emit ApprovalForAll(1, msg.sender, stor6);
}



}
