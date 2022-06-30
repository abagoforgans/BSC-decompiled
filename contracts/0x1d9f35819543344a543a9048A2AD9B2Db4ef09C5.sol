contract main {




// =====================  Runtime code  =====================


mapping of address stor1;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of struct stor8;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
mapping of uint8 stor13;
array of struct stor14;
address deployerAddress;
uint256 stor17;
uint256 stor18;
address stor19;
array of struct stor20;
uint256 maxTokens;
uint256 stor22;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function getMaxTokens() {
    return maxTokens
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function deployer() {
    return deployerAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getPrices() {
    return stor17, stor18
}

function getTokensAvailable() {
    if maxTokens < stor22:
        revert with 0, 17
    return (maxTokens - stor22)
}

function sub_e1f8b811(?) {
    require calldata.size - 4 >= 32
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    stor18 = arg1
    return arg1
}

function sub_f1656781(?) {
    require calldata.size - 4 >= 32
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    stor17 = arg1
    return arg1
}

function sub_6260135b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    stor19 = address(arg1)
    return address(arg1)
}

function addManagers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    require not stor13[address(arg1)]
    stor13[address(arg1)] = 1
    stor14.length++
    stor14[stor14.length].field_0 = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_8f258ea4(?) {
    require calldata.size - 4 >= 32
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7362eb3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    require eth.balance(this.address) >= arg2
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_608f590c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function deleteManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'this is not manager'
    require deployerAddress != arg1
    if not stor13[address(arg1)]:
        revert with 0, 'Not deleted! Manager not present'
    if 1 >= stor14.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The contract requires at least one manager'
    stor13[address(arg1)] = 0
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx].field_0 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor14.length:
            revert with 0, 50
        stor14[idx].field_0 = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function viewManagers() {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        idx = 0
        s = (32 * stor14.length) + 192
        t = 128
        while idx < stor14.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor14.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor14.length) + -mem[64] + 192
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor5[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor5[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if bool(stor2.length):
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
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
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function sub_c395c8af(?) {
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        if ceil32(stor20.length.field_1) > stor20.length.field_1:
            mem[stor20.length.field_1 + ceil32(stor20.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 0, 34
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[stor20.length.field_1 + ceil32(stor20.length.field_1) + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor5[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    stor1[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 0, 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 0, 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        mem[ceil32(stor8[arg1].field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
            mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 0, 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 0, 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    mem[ceil32(stor8[arg1].field_1) + 224 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
        mem[stor8[arg1].field_1 + ceil32(stor8[arg1].field_1) + 224] = 0
    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 224 len 2 * ceil32(stor8[arg1].field_1)]), 
}

function sub_cd056399(?) {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor19)
    staticcall stor19.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor19)
        staticcall stor19.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_71]
        require mem[_71] <= test266151307()
        require _71 + return_data.size > _71 + mem[_71] + 31
        _75 = mem[_71 + mem[_71]]
        if mem[_71 + mem[_71]] > test266151307():
            revert with 0, 65
        if ceil32(mem[_71 + mem[_71]]) + 32 < 0 or _71 + ceil32(return_data.size) + ceil32(mem[_71 + mem[_71]]) + 32 > test266151307():
            revert with 0, 65
        mem[64] = _71 + ceil32(return_data.size) + ceil32(mem[_71 + mem[_71]]) + 32
        mem[_71 + ceil32(return_data.size)] = _75
        require _73 + _75 + 32 <= return_data.size
        mem[_71 + ceil32(return_data.size) + 32 len ceil32(_75)] = mem[_71 + _73 + 32 len ceil32(_75)]
        if ceil32(_75) <= _75:
            _127 = mem[64]
            mem[mem[64]] = stor19
            mem[mem[64] + 32] = 96
            mem[mem[64] + 96] = _5
            mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[_5 + mem[64] + 128] = 0
            mem[mem[64] + 64] = ceil32(_5) + 128
            mem[ceil32(_5) + _127 + 128] = _75
            mem[ceil32(_5) + _127 + 160 len ceil32(_75)] = mem[_71 + ceil32(return_data.size) + 32 len ceil32(_75)]
            if ceil32(_75) > _75:
                mem[_75 + ceil32(_5) + _127 + 160] = 0
            return memory
              from mem[64]
               len ceil32(_75) + ceil32(_5) + _127 + -mem[64] + 160
        mem[_75 + _71 + ceil32(return_data.size) + 32] = 0
        _128 = mem[64]
        mem[mem[64]] = stor19
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _5
        mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_5 + mem[64] + 128] = 0
        mem[mem[64] + 64] = ceil32(_5) + 128
        mem[ceil32(_5) + _128 + 128] = _75
        mem[ceil32(_5) + _128 + 160 len ceil32(_75)] = mem[_71 + ceil32(return_data.size) + 32 len ceil32(_75)]
        if ceil32(_75) > _75:
            mem[_75 + ceil32(_5) + _128 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_75) + ceil32(_5) + _128 + -mem[64] + 160
    mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor19)
    staticcall stor19.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_72]
    require mem[_72] <= test266151307()
    require _72 + return_data.size > _72 + mem[_72] + 31
    _76 = mem[_72 + mem[_72]]
    if mem[_72 + mem[_72]] > test266151307():
        revert with 0, 65
    if ceil32(mem[_72 + mem[_72]]) + 32 < 0 or _72 + ceil32(return_data.size) + ceil32(mem[_72 + mem[_72]]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = _72 + ceil32(return_data.size) + ceil32(mem[_72 + mem[_72]]) + 32
    mem[_72 + ceil32(return_data.size)] = _76
    require _74 + _76 + 32 <= return_data.size
    mem[_72 + ceil32(return_data.size) + 32 len ceil32(_76)] = mem[_72 + _74 + 32 len ceil32(_76)]
    if ceil32(_76) <= _76:
        _129 = mem[64]
        mem[mem[64]] = stor19
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _5
        mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[_5 + mem[64] + 128] = 0
        mem[mem[64] + 64] = ceil32(_5) + 128
        mem[ceil32(_5) + _129 + 128] = _76
        mem[ceil32(_5) + _129 + 160 len ceil32(_76)] = mem[_72 + ceil32(return_data.size) + 32 len ceil32(_76)]
        if ceil32(_76) > _76:
            mem[_76 + ceil32(_5) + _129 + 160] = 0
        return memory
          from mem[64]
           len ceil32(_76) + ceil32(_5) + _129 + -mem[64] + 160
    mem[_76 + _72 + ceil32(return_data.size) + 32] = 0
    _130 = mem[64]
    mem[mem[64]] = stor19
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = _5
    mem[mem[64] + 128 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 128] = 0
    mem[mem[64] + 64] = ceil32(_5) + 128
    mem[ceil32(_5) + _130 + 128] = _76
    mem[ceil32(_5) + _130 + 160 len ceil32(_76)] = mem[_72 + ceil32(return_data.size) + 32 len ceil32(_76)]
    if ceil32(_76) > _76:
        mem[_76 + ceil32(_5) + _130 + 160] = 0
    return memory
      from mem[64]
       len ceil32(_76) + ceil32(_5) + _130 + -mem[64] + 160
}

function sub_7ba1ffb1(?) payable {
    if stor22 >= maxTokens:
        revert with 0, 'reached maximum number of tokens'
    if msg.value < stor17:
        revert with 0, 'The payment must be greater', 0
    stor22++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor12[stor22] = tokenByIndex.length
    tokenByIndex.length++
    stor175B[stor11.length] = stor22
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor22
            stor10[stor22] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[stor22] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[stor22]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[stor22]
        stor12[stor22] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor22] = msg.sender
    emit Transfer(0, msg.sender, stor22);
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[192] = 256 * stor20.length.field_8
                else:
                    mem[192] = uint256(stor20.field_0)
                    idx = 192
                    s = 0
                    while stor20.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[192] = 256 * stor20.length.field_8
                else:
                    mem[192] = uint256(stor20.field_0)
                    idx = 192
                    s = 0
                    while stor20.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not ownerOf[stor22]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor8[stor22].field_0:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[192 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[192 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[192] = 256 * stor20.length.field_8
                else:
                    mem[192] = uint256(stor20.field_0)
                    idx = 192
                    s = 0
                    while stor20.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[192] = 256 * stor20.length.field_8
                else:
                    mem[192] = uint256(stor20.field_0)
                    idx = 192
                    s = 0
                    while stor20.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not ownerOf[stor22]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor8[stor22].field_0:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[192 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[192 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    emit 0x7d886c43: msg.sender, msg.value, stor22
}

function sub_3ddb720f(?) {
    if stor22 >= maxTokens:
        revert with 0, 'reached maximum number of tokens'
    mem[132] = this.address
    require ext_code.size(stor19)
    staticcall stor19.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = stor18
    require ext_code.size(stor19)
    call stor19.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Error during payment'
    stor22++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor22]:
        revert with 0, 'ERC721: token already minted'
    stor12[stor22] = tokenByIndex.length
    tokenByIndex.length++
    stor175B[stor11.length] = stor22
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor22
            stor10[stor22] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[stor22] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[stor22]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[stor22]
        stor12[stor22] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor22] = msg.sender
    emit Transfer(0, msg.sender, stor22);
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor20.length.field_8
                else:
                    mem[(2 * ceil32(return_data.size)) + 128] = uint256(stor20.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor20.length.field_8
                else:
                    mem[(2 * ceil32(return_data.size)) + 128] = uint256(stor20.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not ownerOf[stor22]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor8[stor22].field_0:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[(2 * ceil32(return_data.size)) + 128 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[(2 * ceil32(return_data.size)) + 128 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor20.length.field_8
                else:
                    mem[(2 * ceil32(return_data.size)) + 128] = uint256(stor20.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[(2 * ceil32(return_data.size)) + 128] = 256 * stor20.length.field_8
                else:
                    mem[(2 * ceil32(return_data.size)) + 128] = uint256(stor20.field_0)
                    idx = (2 * ceil32(return_data.size)) + 128
                    s = 0
                    while (2 * ceil32(return_data.size)) + stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not ownerOf[stor22]:
            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
        if stor8[stor22].field_0:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[(2 * ceil32(return_data.size)) + 128 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor8[stor22].field_0 == stor8[stor22].field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                stor8[stor22][].field_0 = Array(len=stor20.length.field_1, data=mem[(2 * ceil32(return_data.size)) + 128 len stor20.length.field_1])
            else:
                stor8[stor22].field_0 = 0
                idx = 0
                while stor8[stor22].field_1 + 31 / 32 > idx:
                    stor8[stor22][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    emit 0x7d886c43: msg.sender, stor18, stor22
}



}
