contract main {




// =====================  Runtime code  =====================


#
#  - MintToken(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 TOTAL_SUPPLY;
uint256 MAX_PER_WALLET;
array of uint256 stor10;
array of struct stor11;
address stor12;
uint256 totalMinted;
array of address stor14;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function MAX_PER_WALLET() {
    return MAX_PER_WALLET
}

function totalSupply() {
    return TOTAL_SUPPLY
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function TOTAL_SUPPLY() {
    return TOTAL_SUPPLY
}

function totalMinted() {
    return totalMinted
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_16218566(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12 != address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You're not the current MintFee Collector'
    stor12 = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_a6f3952c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor14.length:
        mem[0] = 14
        if idx == -1:
            revert with 'NH{q', 17
        if address(stor14[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'Not Authorized to do this'
    MAX_PER_WALLET = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_27541c05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    t = 0
    while uint32(idx) < stor14.length:
        if uint32(idx) >= stor14.length:
            revert with 'NH{q', 50
        mem[0] = 14
        if uint32(idx) == test266151307():
            revert with 'NH{q', 17
        if address(stor14[uint32(idx)]) != address(arg1):
            if address(stor14[uint32(idx)]) != msg.sender:
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            idx = uint32(idx) + 1
            s = 1
            t = t
            continue 
        if address(stor14[uint32(idx)]) != msg.sender:
            idx = uint32(idx) + 1
            s = s
            t = 1
            continue 
        idx = uint32(idx) + 1
        s = 1
        t = 1
        continue 
    if t:
        revert with 0, 'Address is Already a Delegate'
    if bool(s) != 1:
        revert with 0, 'No Authorization'
    stor14.length++
    address(stor14[stor14.length]) = address(arg1)
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < stor14.length:
        mem[0] = 14
        if idx == -1:
            revert with 'NH{q', 17
        if address(stor14[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'Not Authorized for this'
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function RemoveDelegate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    t = 0
    while uint32(idx) < stor14.length:
        if uint32(idx) >= stor14.length:
            revert with 'NH{q', 50
        mem[0] = 14
        if uint32(idx) == test266151307():
            revert with 'NH{q', 17
        if address(stor14[uint32(idx)]) != arg1:
            if address(stor14[uint32(idx)]) != msg.sender:
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            idx = uint32(idx) + 1
            s = s
            t = 1
            continue 
        if address(stor14[uint32(idx)]) != msg.sender:
            idx = uint32(idx) + 1
            s = 1
            t = t
            continue 
        idx = uint32(idx) + 1
        s = 1
        t = 1
        continue 
    if bool(t) != 1:
        revert with 0, 'No Authorization'
    if bool(s) != 1:
        revert with 0, 'Address was never a Delegate'
    if stor14.length < 1:
        revert with 'NH{q', 17
    if stor14.length - 1 > test266151307():
        revert with 'NH{q', 65
    if stor14.length - 1:
        mem[128 len 32 * stor14.length - 1] = call.data[calldata.size len 32 * stor14.length - 1]
    idx = 0
    s = 0
    while idx < stor14.length:
        mem[0] = 14
        if address(stor14[idx]) != arg1:
            if idx >= stor14.length:
                revert with 'NH{q', 50
            mem[0] = 14
            if s >= stor14.length - 1:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = address(stor14[idx])
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    stor14.length--
    if not stor14.length - 1:
        idx = 0
        while stor14.length > idx:
            uint256(stor14[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * stor14.length - 1) + 128 > idx:
            address(stor14[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor14.length - 1) + 31) >> 5
        while stor14.length > idx:
            uint256(stor14[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_4f55167d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not block.timestamp:
        revert with 'NH{q', 18
    if block.timestamp > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty > -(sha3(block.coinbase) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > -(sha3(address(arg1)) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) > -(sha3(arg2) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) > -block.number - 1:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) / 6 and 6 > -1 / sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) / 6:
        revert with 'NH{q', 17
    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) < 6 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) / 6:
        revert with 'NH{q', 17
    return (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) - (6 * sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(address(arg1)) / block.timestamp) + (sha3(arg2) / block.timestamp) + block.number) / 6))
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function getGroup(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor11.length:
        revert with 'NH{q', 50
    if stor11[arg1].field_1024:
        if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1024:
            if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1025:
                if 31 >= stor11[arg1].field_1025:
                    mem[512] = 256 * stor11[arg1].field_1032
                else:
                    mem[512] = stor[sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 512
                    s = 0
                    while stor11[arg1].field_1025 + 480 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1025:
                if 31 >= stor11[arg1].field_1025:
                    mem[512] = 256 * stor11[arg1].field_1032
                else:
                    mem[512] = stor[sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 512
                    s = 0
                    while stor11[arg1].field_1025 + 480 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor11[arg1].field_0, 
               stor11[arg1].field_256,
               stor11[arg1].field_512,
               stor11[arg1].field_768,
               192,
               stor11[arg1].field_1280,
               2 * Mask(256, -1, stor11[arg1].field_1025),
               mem[512 len ceil32(stor11[arg1].field_1025)]
    if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
        revert with 'NH{q', 34
    if stor11[arg1].field_1024:
        if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1025:
            if 31 >= stor11[arg1].field_1025:
                mem[512] = 256 * stor11[arg1].field_1032
            else:
                mem[512] = stor[sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_0
                idx = 512
                s = 0
                while stor11[arg1].field_1025 + 480 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_1024 == stor11[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1025:
            if 31 >= stor11[arg1].field_1025:
                mem[512] = 256 * stor11[arg1].field_1032
            else:
                mem[512] = stor[sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_0
                idx = 512
                s = 0
                while stor11[arg1].field_1025 + 480 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor11', 11) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor11[arg1].field_0, 
           stor11[arg1].field_256,
           stor11[arg1].field_512,
           stor11[arg1].field_768,
           192,
           stor11[arg1].field_1280,
           stor11[arg1].field_1024,
           mem[512 len ceil32(stor11[arg1].field_1025)]
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function sub_1fdca128(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < stor14.length:
        mem[0] = 14
        if idx == -1:
            revert with 'NH{q', 17
        if address(stor14[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'Not Authorized to do this'
    if arg2 >= stor11.length:
        revert with 0, 'Group does not exist'
    if stor11[arg2].field_1024:
        if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
            revert with 'NH{q', 34
        if stor11[arg2].field_1024:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                if 31 >= stor11[arg2].field_1025:
                    mem[320] = 256 * stor11[arg2].field_1032
                else:
                    mem[320] = stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 320
                    s = 0
                    while stor11[arg2].field_1025 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                if 31 >= stor11[arg2].field_1025:
                    mem[320] = 256 * stor11[arg2].field_1032
                else:
                    mem[320] = stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 320
                    s = 0
                    while stor11[arg2].field_1025 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if arg2 >= stor11.length:
            revert with 'NH{q', 50
        if stor11[arg2].field_1024:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)][].field_0 = Array(len=stor11[arg2].field_1025, data=mem[320 len stor11[arg2].field_1025])
            else:
                stor11[arg2].field_1024 = 0
                idx = 0
                while stor11[arg2].field_1025 + 31 / 32 > idx:
                    stor[idx + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)][].field_0 = Array(len=stor11[arg2].field_1025, data=mem[320 len stor11[arg2].field_1025])
            else:
                stor11[arg2].field_1024 = 0
                idx = 0
                while stor11[arg2].field_1025 + 31 / 32 > idx:
                    stor[idx + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
            revert with 'NH{q', 34
        if stor11[arg2].field_1024:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                if 31 >= stor11[arg2].field_1025:
                    mem[320] = 256 * stor11[arg2].field_1032
                else:
                    mem[320] = stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 320
                    s = 0
                    while stor11[arg2].field_1025 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                if 31 >= stor11[arg2].field_1025:
                    mem[320] = 256 * stor11[arg2].field_1032
                else:
                    mem[320] = stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0
                    idx = 320
                    s = 0
                    while stor11[arg2].field_1025 + 288 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if arg2 >= stor11.length:
            revert with 'NH{q', 50
        if stor11[arg2].field_1024:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)][].field_0 = Array(len=stor11[arg2].field_1025, data=mem[320 len stor11[arg2].field_1025])
            else:
                stor11[arg2].field_1024 = 0
                idx = 0
                while stor11[arg2].field_1025 + 31 / 32 > idx:
                    stor[idx + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor11[arg2].field_1024 == stor11[arg2].field_1025 < 32:
                revert with 'NH{q', 34
            if stor11[arg2].field_1025:
                stor[sha3((6 * arg2) + ('name', 'stor11', 11) + 4)][].field_0 = Array(len=stor11[arg2].field_1025, data=mem[320 len stor11[arg2].field_1025])
            else:
                stor11[arg2].field_1024 = 0
                idx = 0
                while stor11[arg2].field_1025 + 31 / 32 > idx:
                    stor[idx + sha3((6 * arg2) + ('name', 'stor11', 11) + 4)].field_0 = 0
                    idx = idx + 1
                    continue 
    stor11[arg2].field_1280 = arg1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist'
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[192] = Mask(248, 8, stor10.length)
            else:
                if bool(stor10.length) != 1:
                    mem[64] = 1
                    _122 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_122) > _122:
                        mem[_122 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_122) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor10.length.field_1:
                    mem[idx + 192] = stor10[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor10.length.field_1 + 192] = '0'
            mem[stor10.length.field_1 + 193] = 32
            mem[stor10.length.field_1 + 225] = mem[160]
            mem[stor10.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor10.length.field_1 + mem[160] + 257] = 0
            return Array(len=mem[160], data=mem[stor10.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[192] = Mask(248, 8, stor10.length)
        else:
            if bool(stor10.length) != 1:
                mem[64] = 1
                _124 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_124) > _124:
                    mem[_124 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_124) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor10.length.field_1:
                mem[idx + 192] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor10.length.field_1 + 192] = '0'
        mem[stor10.length.field_1 + 193] = 32
        mem[stor10.length.field_1 + 225] = mem[160]
        mem[stor10.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor10.length.field_1 + mem[160] + 257] = 0
        return Array(len=mem[160], data=mem[stor10.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _359 = mem[64]
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[mem[64] + 32] = Mask(248, 8, stor10.length)
                _395 = mem[96]
                mem[mem[64] + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _587 = mem[64]
                    mem[64] = mem[64] + stor10.length.field_1 + mem[96] + 32
                    mem[_359 + stor10.length.field_1 + mem[96] + 32] = 32
                    _631 = mem[_587]
                    mem[_359 + stor10.length.field_1 + _395 + 64] = mem[_587]
                    mem[_359 + stor10.length.field_1 + _395 + 96 len ceil32(_631)] = mem[_587 + 32 len ceil32(_631)]
                    if ceil32(_631) > _631:
                        mem[_359 + stor10.length.field_1 + _395 + _631 + 96] = 0
                    return memory
                      from mem[64]
                       len _359 + stor10.length.field_1 + _395 + ceil32(_631) + -mem[64] + 96
                mem[mem[64] + stor10.length.field_1 + mem[96] + 32] = 0
                _600 = mem[64]
                mem[64] = _359 + stor10.length.field_1 + _395 + 32
                mem[_359 + stor10.length.field_1 + _395 + 32] = 32
                _639 = mem[_600]
                mem[_359 + stor10.length.field_1 + _395 + 64] = mem[_600]
                mem[_359 + stor10.length.field_1 + _395 + 96 len ceil32(_639)] = mem[_600 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_359 + stor10.length.field_1 + _395 + _639 + 96] = 0
                return 32, mem[_359 + stor10.length.field_1 + _395 + 64 len ceil32(_639) + 32]
            if bool(stor10.length) != 1:
                _399 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_399) <= _399:
                    _589 = mem[64]
                    mem[64] = _399
                    mem[_399] = 32
                    _632 = mem[_589]
                    mem[_399 + 32] = mem[_589]
                    mem[_399 + 64 len ceil32(_632)] = mem[_589 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_399 + _632 + 64] = 0
                    return 32, mem[_399 + 32 len ceil32(_632) + 32]
                mem[_399] = 0
                _602 = mem[64]
                mem[64] = _399
                mem[_399] = 32
                _640 = mem[_602]
                mem[_399 + 32] = mem[_602]
                mem[_399 + 64 len ceil32(_640)] = mem[_602 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_399 + _640 + 64] = 0
                return 32, mem[_399 + 32 len ceil32(_640) + 32]
            mem[0] = 10
            idx = 0
            s = 0
            while idx < stor10.length.field_1:
                mem[_359 + idx + 32] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _588 = mem[96]
            mem[_359 + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_588) <= _588:
                _767 = mem[64]
                mem[64] = _359 + stor10.length.field_1 + _588 + 32
                mem[_359 + stor10.length.field_1 + _588 + 32] = 32
                _815 = mem[_767]
                mem[_359 + stor10.length.field_1 + _588 + 64] = mem[_767]
                mem[_359 + stor10.length.field_1 + _588 + 96 len ceil32(_815)] = mem[_767 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_359 + stor10.length.field_1 + _588 + _815 + 96] = 0
                return 32, mem[_359 + stor10.length.field_1 + _588 + 64 len ceil32(_815) + 32]
            mem[_359 + stor10.length.field_1 + _588 + 32] = 0
            _772 = mem[64]
            mem[64] = _359 + stor10.length.field_1 + _588 + 32
            mem[_359 + stor10.length.field_1 + _588 + 32] = 32
            _819 = mem[_772]
            mem[_359 + stor10.length.field_1 + _588 + 64] = mem[_772]
            mem[_359 + stor10.length.field_1 + _588 + 96 len ceil32(_819)] = mem[_772 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_359 + stor10.length.field_1 + _588 + _819 + 96] = 0
            return 32, mem[_359 + stor10.length.field_1 + _588 + 64 len ceil32(_819) + 32]
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[mem[64] + 32] = Mask(248, 8, stor10.length)
            _400 = mem[96]
            mem[mem[64] + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _590 = mem[64]
                mem[64] = mem[64] + stor10.length.field_1 + mem[96] + 32
                mem[_359 + stor10.length.field_1 + mem[96] + 32] = 32
                _633 = mem[_590]
                mem[_359 + stor10.length.field_1 + _400 + 64] = mem[_590]
                mem[_359 + stor10.length.field_1 + _400 + 96 len ceil32(_633)] = mem[_590 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_359 + stor10.length.field_1 + _400 + _633 + 96] = 0
                return memory
                  from mem[64]
                   len _359 + stor10.length.field_1 + _400 + ceil32(_633) + -mem[64] + 96
            mem[mem[64] + stor10.length.field_1 + mem[96] + 32] = 0
            _604 = mem[64]
            mem[64] = _359 + stor10.length.field_1 + _400 + 32
            mem[_359 + stor10.length.field_1 + _400 + 32] = 32
            _641 = mem[_604]
            mem[_359 + stor10.length.field_1 + _400 + 64] = mem[_604]
            mem[_359 + stor10.length.field_1 + _400 + 96 len ceil32(_641)] = mem[_604 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_359 + stor10.length.field_1 + _400 + _641 + 96] = 0
            return 32, mem[_359 + stor10.length.field_1 + _400 + 64 len ceil32(_641) + 32]
        if bool(stor10.length) != 1:
            _403 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_403) <= _403:
                _592 = mem[64]
                mem[64] = _403
                mem[_403] = 32
                _634 = mem[_592]
                mem[_403 + 32] = mem[_592]
                mem[_403 + 64 len ceil32(_634)] = mem[_592 + 32 len ceil32(_634)]
                if ceil32(_634) > _634:
                    mem[_403 + _634 + 64] = 0
                return 32, mem[_403 + 32 len ceil32(_634) + 32]
            mem[_403] = 0
            _606 = mem[64]
            mem[64] = _403
            mem[_403] = 32
            _642 = mem[_606]
            mem[_403 + 32] = mem[_606]
            mem[_403 + 64 len ceil32(_642)] = mem[_606 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_403 + _642 + 64] = 0
            return 32, mem[_403 + 32 len ceil32(_642) + 32]
        mem[0] = 10
        idx = 0
        s = 0
        while idx < stor10.length.field_1:
            mem[_359 + idx + 32] = stor10[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _591 = mem[96]
        mem[_359 + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_591) <= _591:
            _768 = mem[64]
            mem[64] = _359 + stor10.length.field_1 + _591 + 32
            mem[_359 + stor10.length.field_1 + _591 + 32] = 32
            _816 = mem[_768]
            mem[_359 + stor10.length.field_1 + _591 + 64] = mem[_768]
            mem[_359 + stor10.length.field_1 + _591 + 96 len ceil32(_816)] = mem[_768 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_359 + stor10.length.field_1 + _591 + _816 + 96] = 0
            return 32, mem[_359 + stor10.length.field_1 + _591 + 64 len ceil32(_816) + 32]
        mem[_359 + stor10.length.field_1 + _591 + 32] = 0
        _774 = mem[64]
        mem[64] = _359 + stor10.length.field_1 + _591 + 32
        mem[_359 + stor10.length.field_1 + _591 + 32] = 32
        _820 = mem[_774]
        mem[_359 + stor10.length.field_1 + _591 + 64] = mem[_774]
        mem[_359 + stor10.length.field_1 + _591 + 96 len ceil32(_820)] = mem[_774 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_359 + stor10.length.field_1 + _591 + _820 + 96] = 0
        return 32, mem[_359 + stor10.length.field_1 + _591 + 64 len ceil32(_820) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _360 = mem[64]
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[mem[64] + 32] = Mask(248, 8, stor10.length)
            _396 = mem[96]
            mem[mem[64] + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _593 = mem[64]
                mem[64] = mem[64] + stor10.length.field_1 + mem[96] + 32
                mem[_360 + stor10.length.field_1 + mem[96] + 32] = 32
                _635 = mem[_593]
                mem[_360 + stor10.length.field_1 + _396 + 64] = mem[_593]
                mem[_360 + stor10.length.field_1 + _396 + 96 len ceil32(_635)] = mem[_593 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_360 + stor10.length.field_1 + _396 + _635 + 96] = 0
                return memory
                  from mem[64]
                   len _360 + stor10.length.field_1 + _396 + ceil32(_635) + -mem[64] + 96
            mem[mem[64] + stor10.length.field_1 + mem[96] + 32] = 0
            _608 = mem[64]
            mem[64] = _360 + stor10.length.field_1 + _396 + 32
            mem[_360 + stor10.length.field_1 + _396 + 32] = 32
            _643 = mem[_608]
            mem[_360 + stor10.length.field_1 + _396 + 64] = mem[_608]
            mem[_360 + stor10.length.field_1 + _396 + 96 len ceil32(_643)] = mem[_608 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_360 + stor10.length.field_1 + _396 + _643 + 96] = 0
            return 32, mem[_360 + stor10.length.field_1 + _396 + 64 len ceil32(_643) + 32]
        if bool(stor10.length) != 1:
            _401 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_401) <= _401:
                _595 = mem[64]
                mem[64] = _401
                mem[_401] = 32
                _636 = mem[_595]
                mem[_401 + 32] = mem[_595]
                mem[_401 + 64 len ceil32(_636)] = mem[_595 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_401 + _636 + 64] = 0
                return 32, mem[_401 + 32 len ceil32(_636) + 32]
            mem[_401] = 0
            _610 = mem[64]
            mem[64] = _401
            mem[_401] = 32
            _644 = mem[_610]
            mem[_401 + 32] = mem[_610]
            mem[_401 + 64 len ceil32(_644)] = mem[_610 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_401 + _644 + 64] = 0
            return 32, mem[_401 + 32 len ceil32(_644) + 32]
        mem[0] = 10
        idx = 0
        s = 0
        while idx < stor10.length.field_1:
            mem[_360 + idx + 32] = stor10[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _594 = mem[96]
        mem[_360 + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_594) <= _594:
            _769 = mem[64]
            mem[64] = _360 + stor10.length.field_1 + _594 + 32
            mem[_360 + stor10.length.field_1 + _594 + 32] = 32
            _817 = mem[_769]
            mem[_360 + stor10.length.field_1 + _594 + 64] = mem[_769]
            mem[_360 + stor10.length.field_1 + _594 + 96 len ceil32(_817)] = mem[_769 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_360 + stor10.length.field_1 + _594 + _817 + 96] = 0
            return 32, mem[_360 + stor10.length.field_1 + _594 + 64 len ceil32(_817) + 32]
        mem[_360 + stor10.length.field_1 + _594 + 32] = 0
        _776 = mem[64]
        mem[64] = _360 + stor10.length.field_1 + _594 + 32
        mem[_360 + stor10.length.field_1 + _594 + 32] = 32
        _821 = mem[_776]
        mem[_360 + stor10.length.field_1 + _594 + 64] = mem[_776]
        mem[_360 + stor10.length.field_1 + _594 + 96 len ceil32(_821)] = mem[_776 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_360 + stor10.length.field_1 + _594 + _821 + 96] = 0
        return 32, mem[_360 + stor10.length.field_1 + _594 + 64 len ceil32(_821) + 32]
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor10.length):
        mem[mem[64] + 32] = Mask(248, 8, stor10.length)
        _402 = mem[96]
        mem[mem[64] + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _596 = mem[64]
            mem[64] = mem[64] + stor10.length.field_1 + mem[96] + 32
            mem[_360 + stor10.length.field_1 + mem[96] + 32] = 32
            _637 = mem[_596]
            mem[_360 + stor10.length.field_1 + _402 + 64] = mem[_596]
            mem[_360 + stor10.length.field_1 + _402 + 96 len ceil32(_637)] = mem[_596 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_360 + stor10.length.field_1 + _402 + _637 + 96] = 0
            return memory
              from mem[64]
               len _360 + stor10.length.field_1 + _402 + ceil32(_637) + -mem[64] + 96
        mem[mem[64] + stor10.length.field_1 + mem[96] + 32] = 0
        _612 = mem[64]
        mem[64] = _360 + stor10.length.field_1 + _402 + 32
        mem[_360 + stor10.length.field_1 + _402 + 32] = 32
        _645 = mem[_612]
        mem[_360 + stor10.length.field_1 + _402 + 64] = mem[_612]
        mem[_360 + stor10.length.field_1 + _402 + 96 len ceil32(_645)] = mem[_612 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_360 + stor10.length.field_1 + _402 + _645 + 96] = 0
        return 32, mem[_360 + stor10.length.field_1 + _402 + 64 len ceil32(_645) + 32]
    if bool(stor10.length) != 1:
        _404 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_404) <= _404:
            _598 = mem[64]
            mem[64] = _404
            mem[_404] = 32
            _638 = mem[_598]
            mem[_404 + 32] = mem[_598]
            mem[_404 + 64 len ceil32(_638)] = mem[_598 + 32 len ceil32(_638)]
            if ceil32(_638) > _638:
                mem[_404 + _638 + 64] = 0
            return 32, mem[_404 + 32 len ceil32(_638) + 32]
        mem[_404] = 0
        _614 = mem[64]
        mem[64] = _404
        mem[_404] = 32
        _646 = mem[_614]
        mem[_404 + 32] = mem[_614]
        mem[_404 + 64 len ceil32(_646)] = mem[_614 + 32 len ceil32(_646)]
        if ceil32(_646) > _646:
            mem[_404 + _646 + 64] = 0
        return 32, mem[_404 + 32 len ceil32(_646) + 32]
    mem[0] = 10
    idx = 0
    s = 0
    while idx < stor10.length.field_1:
        mem[_360 + idx + 32] = stor10[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _597 = mem[96]
    mem[_360 + stor10.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_597) <= _597:
        _770 = mem[64]
        mem[64] = _360 + stor10.length.field_1 + _597 + 32
        mem[_360 + stor10.length.field_1 + _597 + 32] = 32
        _818 = mem[_770]
        mem[_360 + stor10.length.field_1 + _597 + 64] = mem[_770]
        mem[_360 + stor10.length.field_1 + _597 + 96 len ceil32(_818)] = mem[_770 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_360 + stor10.length.field_1 + _597 + _818 + 96] = 0
        return 32, mem[_360 + stor10.length.field_1 + _597 + 64 len ceil32(_818) + 32]
    mem[_360 + stor10.length.field_1 + _597 + 32] = 0
    _778 = mem[64]
    mem[64] = _360 + stor10.length.field_1 + _597 + 32
    mem[_360 + stor10.length.field_1 + _597 + 32] = 32
    _822 = mem[_778]
    mem[_360 + stor10.length.field_1 + _597 + 64] = mem[_778]
    mem[_360 + stor10.length.field_1 + _597 + 96 len ceil32(_822)] = mem[_778 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_360 + stor10.length.field_1 + _597 + _822 + 96] = 0
    return 32, mem[_360 + stor10.length.field_1 + _597 + 64 len ceil32(_822) + 32]
}

function sub_8166c9dc(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token Does not Exist'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        _40 = mem[64]
        mem[64] = mem[64] + 192
        mem[_40] = stor11[idx].field_0
        mem[_40 + 32] = stor11[idx].field_256
        mem[_40 + 64] = stor11[idx].field_512
        mem[_40 + 96] = stor11[idx].field_768
        if stor11[idx].field_1024:
            if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                revert with 'NH{q', 34
            else:
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(stor11[idx].field_1025) + 32
                mem[_41] = stor11[idx].field_1025
                if stor11[idx].field_1024:
                    if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                        revert with 'NH{q', 34
                    else:
                        if not stor11[idx].field_1025:
                            mem[_40 + 128] = _41
                            mem[_40 + 160] = stor11[idx].field_1280
                            if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                revert with 'NH{q', 17
                            else:
                                if arg1 < stor11[idx].field_768:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 < stor11[idx].field_1025:
                                mem[0] = (6 * idx) + sha3(11) + 4
                                mem[_41 + 32] = stor[sha3((6 * idx) + ('name', 'stor11', 11) + 4)].field_0
                                s = _41 + 32
                                t = sha3(mem[0])
                                while _41 + stor11[idx].field_1025 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_40 + 128] = _41
                                mem[_40 + 160] = stor11[idx].field_1280
                                if mem[_40 + 96] > -mem[_40 + 64] - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < mem[_40 + 96]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= mem[_40 + 96] + mem[_40 + 64]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[_41 + 32] = 256 * stor11[idx].field_1032
                                mem[_40 + 128] = _41
                                mem[_40 + 160] = stor11[idx].field_1280
                                if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < stor11[idx].field_768:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                else:
                    if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                        revert with 'NH{q', 34
                    else:
                        if not stor11[idx].field_1025:
                            mem[_40 + 128] = _41
                            mem[_40 + 160] = stor11[idx].field_1280
                            if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                revert with 'NH{q', 17
                            else:
                                if arg1 < stor11[idx].field_768:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 < stor11[idx].field_1025:
                                mem[0] = (6 * idx) + sha3(11) + 4
                                mem[_41 + 32] = stor[sha3((6 * idx) + ('name', 'stor11', 11) + 4)].field_0
                                s = _41 + 32
                                t = sha3(mem[0])
                                while _41 + stor11[idx].field_1025 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_40 + 128] = _41
                                mem[_40 + 160] = stor11[idx].field_1280
                                if mem[_40 + 96] > -mem[_40 + 64] - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < mem[_40 + 96]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= mem[_40 + 96] + mem[_40 + 64]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[_41 + 32] = 256 * stor11[idx].field_1032
                                mem[_40 + 128] = _41
                                mem[_40 + 160] = stor11[idx].field_1280
                                if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < stor11[idx].field_768:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
        else:
            if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                revert with 'NH{q', 34
            else:
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(stor11[idx].field_1025) + 32
                mem[_42] = stor11[idx].field_1025
                if stor11[idx].field_1024:
                    if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                        revert with 'NH{q', 34
                    else:
                        if not stor11[idx].field_1025:
                            mem[_40 + 128] = _42
                            mem[_40 + 160] = stor11[idx].field_1280
                            if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                revert with 'NH{q', 17
                            else:
                                if arg1 < stor11[idx].field_768:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 < stor11[idx].field_1025:
                                mem[0] = (6 * idx) + sha3(11) + 4
                                mem[_42 + 32] = stor[sha3((6 * idx) + ('name', 'stor11', 11) + 4)].field_0
                                s = _42 + 32
                                t = sha3(mem[0])
                                while _42 + stor11[idx].field_1025 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_40 + 128] = _42
                                mem[_40 + 160] = stor11[idx].field_1280
                                if mem[_40 + 96] > -mem[_40 + 64] - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < mem[_40 + 96]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= mem[_40 + 96] + mem[_40 + 64]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[_42 + 32] = 256 * stor11[idx].field_1032
                                mem[_40 + 128] = _42
                                mem[_40 + 160] = stor11[idx].field_1280
                                if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < stor11[idx].field_768:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                else:
                    if stor11[idx].field_1024 == stor11[idx].field_1025 < 32:
                        revert with 'NH{q', 34
                    else:
                        if not stor11[idx].field_1025:
                            mem[_40 + 128] = _42
                            mem[_40 + 160] = stor11[idx].field_1280
                            if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                revert with 'NH{q', 17
                            else:
                                if arg1 < stor11[idx].field_768:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                else:
                                    if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 < stor11[idx].field_1025:
                                mem[0] = (6 * idx) + sha3(11) + 4
                                mem[_42 + 32] = stor[sha3((6 * idx) + ('name', 'stor11', 11) + 4)].field_0
                                s = _42 + 32
                                t = sha3(mem[0])
                                while _42 + stor11[idx].field_1025 > s:
                                    mem[s + 32] = stor1[t].field_0
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_40 + 128] = _42
                                mem[_40 + 160] = stor11[idx].field_1280
                                if mem[_40 + 96] > -mem[_40 + 64] - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < mem[_40 + 96]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= mem[_40 + 96] + mem[_40 + 64]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[_42 + 32] = 256 * stor11[idx].field_1032
                                mem[_40 + 128] = _42
                                mem[_40 + 160] = stor11[idx].field_1280
                                if stor11[idx].field_768 > -stor11[idx].field_512 - 1:
                                    revert with 'NH{q', 17
                                else:
                                    if arg1 < stor11[idx].field_768:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if arg1 >= stor11[idx].field_768 + stor11[idx].field_512:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
    return 0
}



}
