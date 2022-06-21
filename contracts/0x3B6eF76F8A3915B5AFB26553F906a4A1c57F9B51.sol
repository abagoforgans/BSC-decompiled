contract main {




// =====================  Runtime code  =====================


#
#  - batchMint(address arg1, uint256 arg2)
#  - mint(address arg1)
#
const sub_01fcdd79(?) = 300

const sub_a4083041(?) = 700


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
array of struct stor8;
array of struct stor9;
uint256 mintPrice;
mapping of uint8 stor11;
mapping of uint256 sub_b1408be8;
uint256 whiteListLength;
uint256 sub_c15d19d3;
uint256 sub_42f08b53;
uint256 sub_2ff0781c;
uint256 sub_aaa7e7c4;
uint256 sub_64d081da;
address sub_863af2c5Address;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_2ff0781c(?) {
    return sub_2ff0781c
}

function sub_42f08b53(?) {
    return sub_42f08b53
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_64d081da(?) {
    return sub_64d081da
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_863af2c5(?) {
    return sub_863af2c5Address
}

function owner() {
    return owner
}

function sub_aaa7e7c4(?) {
    return sub_aaa7e7c4
}

function sub_b1408be8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b1408be8[arg1]
}

function sub_c15d19d3(?) {
    return sub_c15d19d3
}

function sub_c4ecfe42(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function whiteListLength() {
    return whiteListLength
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_470e83dd(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c15d19d3 = arg1
    sub_42f08b53 = arg2
    return 1
}

function sub_9d0d40f5(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ff0781c = arg1
    sub_aaa7e7c4 = arg2
    mintPrice = arg3
    return 1
}

function sub_71d08d2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_863af2c5Address = address(arg1)
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function removeWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    u = 32 * arg1.length
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if stor11[mem[(32 * idx) + 140 len 20]]:
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            stor11[mem[(32 * idx) + 140 len 20]] = 0
            if not whiteListLength:
                revert with 0, 17
            whiteListLength--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function addWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    u = 32 * arg1.length
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        if not stor11[mem[(32 * idx) + 140 len 20]]:
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            stor11[mem[(32 * idx) + 140 len 20]] = 1
            if whiteListLength == -1:
                revert with 0, 17
            whiteListLength++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
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
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_863af2c5Address:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(sub_863af2c5Address)
        staticcall sub_863af2c5Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_863af2c5Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_863af2c5Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 1
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                revert with 0, 34
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
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                revert with 0, 34
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
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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
            revert with 0, 34
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[stor8.length.field_1 + ceil32(stor8.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[stor8.length.field_1 + ceil32(stor8.length.field_1) + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function defaultURI() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not stor8.length.field_1:
            if bool(stor9.length):
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor9.length):
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if stor9.length.field_1:
                        if 31 < stor9.length.field_1:
                            mem[128] = uint256(stor9.field_0)
                            idx = 128
                            s = 0
                            while stor9.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                        mem[128] = 256 * stor9.length.field_8
                else:
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 0, 34
                    if stor9.length.field_1:
                        if 31 < stor9.length.field_1:
                            mem[128] = uint256(stor9.field_0)
                            idx = 128
                            s = 0
                            while stor9.length.field_1 + 96 > idx:
                                mem[idx + 32] = stor9[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                        mem[128] = 256 * stor9.length.field_8
                mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
                if ceil32(stor9.length.field_1) > stor9.length.field_1:
                    mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
                return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if bool(stor9.length):
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if stor9.length.field_1:
                    if 31 < stor9.length.field_1:
                        mem[128] = uint256(stor9.field_0)
                        idx = 128
                        s = 0
                        while stor9.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
                    mem[128] = 256 * stor9.length.field_8
            else:
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if stor9.length.field_1:
                    if 31 < stor9.length.field_1:
                        mem[128] = uint256(stor9.field_0)
                        idx = 128
                        s = 0
                        while stor9.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
                    mem[128] = 256 * stor9.length.field_8
            mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
            return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor8.length):
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[192] = Mask(248, 8, stor8.length)
                else:
                    if bool(stor8.length) != 1:
                        mem[64] = 1
                        _433 = mem[160]
                        mem[33] = mem[160]
                        mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_433) > _433:
                            mem[_433 + 65] = 0
                        return memory
                          from mem[64]
                           len ceil32(_433) + -mem[64] + 65
                    idx = 0
                    s = 0
                    while idx < stor8.length.field_1:
                        mem[idx + 192] = stor8[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[stor8.length.field_1 + 193] = 32
                mem[stor8.length.field_1 + 225] = mem[160]
                mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + stor8.length.field_1 + 257] = 0
                return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[192] = Mask(248, 8, stor8.length)
            else:
                if bool(stor8.length) != 1:
                    mem[64] = 1
                    _437 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_437) > _437:
                        mem[_437 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_437) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + 192] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor8.length.field_1 + 193] = 32
            mem[stor8.length.field_1 + 225] = mem[160]
            mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor8.length.field_1 + 257] = 0
            return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _942 = mem[64]
            if bool(stor8.length):
                if bool(stor8.length) == stor8.length.field_1 < 32:
                    revert with 0, 34
                if not bool(stor8.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                    _1010 = mem[96]
                    mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        _1422 = mem[64]
                        mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                        mem[mem[96] + _942 + stor8.length.field_1 + 32] = 32
                        _1510 = mem[_1422]
                        mem[_1010 + _942 + stor8.length.field_1 + 64] = mem[_1422]
                        mem[_1010 + _942 + stor8.length.field_1 + 96 len ceil32(_1510)] = mem[_1422 + 32 len ceil32(_1510)]
                        if ceil32(_1510) > _1510:
                            mem[_1510 + _1010 + _942 + stor8.length.field_1 + 96] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1510) + _1010 + _942 + stor8.length.field_1 + -mem[64] + 96
                    mem[mem[96] + mem[64] + stor8.length.field_1 + 32] = 0
                    _1423 = mem[64]
                    mem[64] = _1010 + _942 + stor8.length.field_1 + 32
                    mem[_1010 + _942 + stor8.length.field_1 + 32] = 32
                    _1511 = mem[_1423]
                    mem[_1010 + _942 + stor8.length.field_1 + 64] = mem[_1423]
                    mem[_1010 + _942 + stor8.length.field_1 + 96 len ceil32(_1511)] = mem[_1423 + 32 len ceil32(_1511)]
                    if ceil32(_1511) > _1511:
                        mem[_1511 + _1010 + _942 + stor8.length.field_1 + 96] = 0
                    return 32, mem[_1010 + _942 + stor8.length.field_1 + 64 len ceil32(_1511) + 32]
                if bool(stor8.length) != 1:
                    _1026 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(_1026) <= _1026:
                        _1424 = mem[64]
                        mem[64] = _1026
                        mem[_1026] = 32
                        _1512 = mem[_1424]
                        mem[_1026 + 32] = mem[_1424]
                        mem[_1026 + 64 len ceil32(_1512)] = mem[_1424 + 32 len ceil32(_1512)]
                        if ceil32(_1512) > _1512:
                            mem[_1512 + _1026 + 64] = 0
                        return 32, mem[_1026 + 32 len ceil32(_1512) + 32]
                    mem[_1026] = 0
                    _1425 = mem[64]
                    mem[64] = _1026
                    mem[_1026] = 32
                    _1513 = mem[_1425]
                    mem[_1026 + 32] = mem[_1425]
                    mem[_1026 + 64 len ceil32(_1513)] = mem[_1425 + 32 len ceil32(_1513)]
                    if ceil32(_1513) > _1513:
                        mem[_1513 + _1026 + 64] = 0
                    return 32, mem[_1026 + 32 len ceil32(_1513) + 32]
                mem[0] = 8
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + _942 + 32] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1414 = mem[96]
                mem[_942 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1414) <= _1414:
                    _1778 = mem[64]
                    mem[64] = _1414 + _942 + stor8.length.field_1 + 32
                    mem[_1414 + _942 + stor8.length.field_1 + 32] = 32
                    _1870 = mem[_1778]
                    mem[_1414 + _942 + stor8.length.field_1 + 64] = mem[_1778]
                    mem[_1414 + _942 + stor8.length.field_1 + 96 len ceil32(_1870)] = mem[_1778 + 32 len ceil32(_1870)]
                    if ceil32(_1870) > _1870:
                        mem[_1870 + _1414 + _942 + stor8.length.field_1 + 96] = 0
                    return 32, mem[_1414 + _942 + stor8.length.field_1 + 64 len ceil32(_1870) + 32]
                mem[_1414 + _942 + stor8.length.field_1 + 32] = 0
                _1779 = mem[64]
                mem[64] = _1414 + _942 + stor8.length.field_1 + 32
                mem[_1414 + _942 + stor8.length.field_1 + 32] = 32
                _1871 = mem[_1779]
                mem[_1414 + _942 + stor8.length.field_1 + 64] = mem[_1779]
                mem[_1414 + _942 + stor8.length.field_1 + 96 len ceil32(_1871)] = mem[_1779 + 32 len ceil32(_1871)]
                if ceil32(_1871) > _1871:
                    mem[_1871 + _1414 + _942 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1414 + _942 + stor8.length.field_1 + 64 len ceil32(_1871) + 32]
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _1027 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1027) <= _1027:
                    _1426 = mem[64]
                    mem[64] = _1027 + _942 + stor8.length.field_1 + 32
                    mem[_1027 + _942 + stor8.length.field_1 + 32] = 32
                    _1514 = mem[_1426]
                    mem[_1027 + _942 + stor8.length.field_1 + 64] = mem[_1426]
                    mem[_1027 + _942 + stor8.length.field_1 + 96 len ceil32(_1514)] = mem[_1426 + 32 len ceil32(_1514)]
                    if ceil32(_1514) > _1514:
                        mem[_1514 + _1027 + _942 + stor8.length.field_1 + 96] = 0
                    return 32, mem[_1027 + _942 + stor8.length.field_1 + 64 len ceil32(_1514) + 32]
                mem[_1027 + _942 + stor8.length.field_1 + 32] = 0
                _1427 = mem[64]
                mem[64] = _1027 + _942 + stor8.length.field_1 + 32
                mem[_1027 + _942 + stor8.length.field_1 + 32] = 32
                _1515 = mem[_1427]
                mem[_1027 + _942 + stor8.length.field_1 + 64] = mem[_1427]
                mem[_1027 + _942 + stor8.length.field_1 + 96 len ceil32(_1515)] = mem[_1427 + 32 len ceil32(_1515)]
                if ceil32(_1515) > _1515:
                    mem[_1515 + _1027 + _942 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1027 + _942 + stor8.length.field_1 + 64 len ceil32(_1515) + 32]
            if bool(stor8.length) != 1:
                _1038 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1038) <= _1038:
                    _1428 = mem[64]
                    mem[64] = _1038
                    mem[_1038] = 32
                    _1516 = mem[_1428]
                    mem[_1038 + 32] = mem[_1428]
                    mem[_1038 + 64 len ceil32(_1516)] = mem[_1428 + 32 len ceil32(_1516)]
                    if ceil32(_1516) > _1516:
                        mem[_1516 + _1038 + 64] = 0
                    return 32, mem[_1038 + 32 len ceil32(_1516) + 32]
                mem[_1038] = 0
                _1429 = mem[64]
                mem[64] = _1038
                mem[_1038] = 32
                _1517 = mem[_1429]
                mem[_1038 + 32] = mem[_1429]
                mem[_1038 + 64 len ceil32(_1517)] = mem[_1429 + 32 len ceil32(_1517)]
                if ceil32(_1517) > _1517:
                    mem[_1517 + _1038 + 64] = 0
                return 32, mem[_1038 + 32 len ceil32(_1517) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _942 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1415 = mem[96]
            mem[_942 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1415) <= _1415:
                _1788 = mem[64]
                mem[64] = _1415 + _942 + stor8.length.field_1 + 32
                mem[_1415 + _942 + stor8.length.field_1 + 32] = 32
                _1872 = mem[_1788]
                mem[_1415 + _942 + stor8.length.field_1 + 64] = mem[_1788]
                mem[_1415 + _942 + stor8.length.field_1 + 96 len ceil32(_1872)] = mem[_1788 + 32 len ceil32(_1872)]
                if ceil32(_1872) > _1872:
                    mem[_1872 + _1415 + _942 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1415 + _942 + stor8.length.field_1 + 64 len ceil32(_1872) + 32]
            mem[_1415 + _942 + stor8.length.field_1 + 32] = 0
            _1789 = mem[64]
            mem[64] = _1415 + _942 + stor8.length.field_1 + 32
            mem[_1415 + _942 + stor8.length.field_1 + 32] = 32
            _1873 = mem[_1789]
            mem[_1415 + _942 + stor8.length.field_1 + 64] = mem[_1789]
            mem[_1415 + _942 + stor8.length.field_1 + 96 len ceil32(_1873)] = mem[_1789 + 32 len ceil32(_1873)]
            if ceil32(_1873) > _1873:
                mem[_1873 + _1415 + _942 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1415 + _942 + stor8.length.field_1 + 64 len ceil32(_1873) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _943 = mem[64]
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _1012 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _1430 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                    mem[mem[96] + _943 + stor8.length.field_1 + 32] = 32
                    _1518 = mem[_1430]
                    mem[_1012 + _943 + stor8.length.field_1 + 64] = mem[_1430]
                    mem[_1012 + _943 + stor8.length.field_1 + 96 len ceil32(_1518)] = mem[_1430 + 32 len ceil32(_1518)]
                    if ceil32(_1518) > _1518:
                        mem[_1518 + _1012 + _943 + stor8.length.field_1 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1518) + _1012 + _943 + stor8.length.field_1 + -mem[64] + 96
                mem[mem[96] + mem[64] + stor8.length.field_1 + 32] = 0
                _1431 = mem[64]
                mem[64] = _1012 + _943 + stor8.length.field_1 + 32
                mem[_1012 + _943 + stor8.length.field_1 + 32] = 32
                _1519 = mem[_1431]
                mem[_1012 + _943 + stor8.length.field_1 + 64] = mem[_1431]
                mem[_1012 + _943 + stor8.length.field_1 + 96 len ceil32(_1519)] = mem[_1431 + 32 len ceil32(_1519)]
                if ceil32(_1519) > _1519:
                    mem[_1519 + _1012 + _943 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1012 + _943 + stor8.length.field_1 + 64 len ceil32(_1519) + 32]
            if bool(stor8.length) != 1:
                _1029 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1029) <= _1029:
                    _1432 = mem[64]
                    mem[64] = _1029
                    mem[_1029] = 32
                    _1520 = mem[_1432]
                    mem[_1029 + 32] = mem[_1432]
                    mem[_1029 + 64 len ceil32(_1520)] = mem[_1432 + 32 len ceil32(_1520)]
                    if ceil32(_1520) > _1520:
                        mem[_1520 + _1029 + 64] = 0
                    return 32, mem[_1029 + 32 len ceil32(_1520) + 32]
                mem[_1029] = 0
                _1433 = mem[64]
                mem[64] = _1029
                mem[_1029] = 32
                _1521 = mem[_1433]
                mem[_1029 + 32] = mem[_1433]
                mem[_1029 + 64 len ceil32(_1521)] = mem[_1433 + 32 len ceil32(_1521)]
                if ceil32(_1521) > _1521:
                    mem[_1521 + _1029 + 64] = 0
                return 32, mem[_1029 + 32 len ceil32(_1521) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _943 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1416 = mem[96]
            mem[_943 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1416) <= _1416:
                _1798 = mem[64]
                mem[64] = _1416 + _943 + stor8.length.field_1 + 32
                mem[_1416 + _943 + stor8.length.field_1 + 32] = 32
                _1874 = mem[_1798]
                mem[_1416 + _943 + stor8.length.field_1 + 64] = mem[_1798]
                mem[_1416 + _943 + stor8.length.field_1 + 96 len ceil32(_1874)] = mem[_1798 + 32 len ceil32(_1874)]
                if ceil32(_1874) > _1874:
                    mem[_1874 + _1416 + _943 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1416 + _943 + stor8.length.field_1 + 64 len ceil32(_1874) + 32]
            mem[_1416 + _943 + stor8.length.field_1 + 32] = 0
            _1799 = mem[64]
            mem[64] = _1416 + _943 + stor8.length.field_1 + 32
            mem[_1416 + _943 + stor8.length.field_1 + 32] = 32
            _1875 = mem[_1799]
            mem[_1416 + _943 + stor8.length.field_1 + 64] = mem[_1799]
            mem[_1416 + _943 + stor8.length.field_1 + 96 len ceil32(_1875)] = mem[_1799 + 32 len ceil32(_1875)]
            if ceil32(_1875) > _1875:
                mem[_1875 + _1416 + _943 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1416 + _943 + stor8.length.field_1 + 64 len ceil32(_1875) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _1030 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1030) <= _1030:
                _1434 = mem[64]
                mem[64] = _1030 + _943 + stor8.length.field_1 + 32
                mem[_1030 + _943 + stor8.length.field_1 + 32] = 32
                _1522 = mem[_1434]
                mem[_1030 + _943 + stor8.length.field_1 + 64] = mem[_1434]
                mem[_1030 + _943 + stor8.length.field_1 + 96 len ceil32(_1522)] = mem[_1434 + 32 len ceil32(_1522)]
                if ceil32(_1522) > _1522:
                    mem[_1522 + _1030 + _943 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1030 + _943 + stor8.length.field_1 + 64 len ceil32(_1522) + 32]
            mem[_1030 + _943 + stor8.length.field_1 + 32] = 0
            _1435 = mem[64]
            mem[64] = _1030 + _943 + stor8.length.field_1 + 32
            mem[_1030 + _943 + stor8.length.field_1 + 32] = 32
            _1523 = mem[_1435]
            mem[_1030 + _943 + stor8.length.field_1 + 64] = mem[_1435]
            mem[_1030 + _943 + stor8.length.field_1 + 96 len ceil32(_1523)] = mem[_1435 + 32 len ceil32(_1523)]
            if ceil32(_1523) > _1523:
                mem[_1523 + _1030 + _943 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1030 + _943 + stor8.length.field_1 + 64 len ceil32(_1523) + 32]
        if bool(stor8.length) != 1:
            _1040 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1040) <= _1040:
                _1436 = mem[64]
                mem[64] = _1040
                mem[_1040] = 32
                _1524 = mem[_1436]
                mem[_1040 + 32] = mem[_1436]
                mem[_1040 + 64 len ceil32(_1524)] = mem[_1436 + 32 len ceil32(_1524)]
                if ceil32(_1524) > _1524:
                    mem[_1524 + _1040 + 64] = 0
                return 32, mem[_1040 + 32 len ceil32(_1524) + 32]
            mem[_1040] = 0
            _1437 = mem[64]
            mem[64] = _1040
            mem[_1040] = 32
            _1525 = mem[_1437]
            mem[_1040 + 32] = mem[_1437]
            mem[_1040 + 64 len ceil32(_1525)] = mem[_1437 + 32 len ceil32(_1525)]
            if ceil32(_1525) > _1525:
                mem[_1525 + _1040 + 64] = 0
            return 32, mem[_1040 + 32 len ceil32(_1525) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _943 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1417 = mem[96]
        mem[_943 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1417) <= _1417:
            _1808 = mem[64]
            mem[64] = _1417 + _943 + stor8.length.field_1 + 32
            mem[_1417 + _943 + stor8.length.field_1 + 32] = 32
            _1876 = mem[_1808]
            mem[_1417 + _943 + stor8.length.field_1 + 64] = mem[_1808]
            mem[_1417 + _943 + stor8.length.field_1 + 96 len ceil32(_1876)] = mem[_1808 + 32 len ceil32(_1876)]
            if ceil32(_1876) > _1876:
                mem[_1876 + _1417 + _943 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1417 + _943 + stor8.length.field_1 + 64 len ceil32(_1876) + 32]
        mem[_1417 + _943 + stor8.length.field_1 + 32] = 0
        _1809 = mem[64]
        mem[64] = _1417 + _943 + stor8.length.field_1 + 32
        mem[_1417 + _943 + stor8.length.field_1 + 32] = 32
        _1877 = mem[_1809]
        mem[_1417 + _943 + stor8.length.field_1 + 64] = mem[_1809]
        mem[_1417 + _943 + stor8.length.field_1 + 96 len ceil32(_1877)] = mem[_1809 + 32 len ceil32(_1877)]
        if ceil32(_1877) > _1877:
            mem[_1877 + _1417 + _943 + stor8.length.field_1 + 96] = 0
        return 32, mem[_1417 + _943 + stor8.length.field_1 + 64 len ceil32(_1877) + 32]
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if not stor8.length.field_1:
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if bool(stor9.length):
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if stor9.length.field_1:
                    if 31 < stor9.length.field_1:
                        mem[128] = uint256(stor9.field_0)
                        idx = 128
                        s = 0
                        while stor9.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                    mem[128] = 256 * stor9.length.field_8
            else:
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 0, 34
                if stor9.length.field_1:
                    if 31 < stor9.length.field_1:
                        mem[128] = uint256(stor9.field_0)
                        idx = 128
                        s = 0
                        while stor9.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor9[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                    mem[128] = 256 * stor9.length.field_8
            mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
            if ceil32(stor9.length.field_1) > stor9.length.field_1:
                mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
            return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
        return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[192] = Mask(248, 8, stor8.length)
            else:
                if bool(stor8.length) != 1:
                    mem[64] = 1
                    _441 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_441) > _441:
                        mem[_441 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_441) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor8.length.field_1:
                    mem[idx + 192] = stor8[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor8.length.field_1 + 193] = 32
            mem[stor8.length.field_1 + 225] = mem[160]
            mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor8.length.field_1 + 257] = 0
            return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[192] = Mask(248, 8, stor8.length)
        else:
            if bool(stor8.length) != 1:
                mem[64] = 1
                _445 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_445) > _445:
                    mem[_445 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_445) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + 192] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor8.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor8.length.field_1 + 193] = 32
        mem[stor8.length.field_1 + 225] = mem[160]
        mem[stor8.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor8.length.field_1 + 257] = 0
        return Array(len=mem[160], data=mem[stor8.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _944 = mem[64]
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor8.length):
                mem[mem[64] + 32] = Mask(248, 8, stor8.length)
                _1018 = mem[96]
                mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _1446 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                    mem[mem[96] + _944 + stor8.length.field_1 + 32] = 32
                    _1526 = mem[_1446]
                    mem[_1018 + _944 + stor8.length.field_1 + 64] = mem[_1446]
                    mem[_1018 + _944 + stor8.length.field_1 + 96 len ceil32(_1526)] = mem[_1446 + 32 len ceil32(_1526)]
                    if ceil32(_1526) > _1526:
                        mem[_1526 + _1018 + _944 + stor8.length.field_1 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1526) + _1018 + _944 + stor8.length.field_1 + -mem[64] + 96
                mem[mem[96] + mem[64] + stor8.length.field_1 + 32] = 0
                _1447 = mem[64]
                mem[64] = _1018 + _944 + stor8.length.field_1 + 32
                mem[_1018 + _944 + stor8.length.field_1 + 32] = 32
                _1527 = mem[_1447]
                mem[_1018 + _944 + stor8.length.field_1 + 64] = mem[_1447]
                mem[_1018 + _944 + stor8.length.field_1 + 96 len ceil32(_1527)] = mem[_1447 + 32 len ceil32(_1527)]
                if ceil32(_1527) > _1527:
                    mem[_1527 + _1018 + _944 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1018 + _944 + stor8.length.field_1 + 64 len ceil32(_1527) + 32]
            if bool(stor8.length) != 1:
                _1032 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_1032) <= _1032:
                    _1448 = mem[64]
                    mem[64] = _1032
                    mem[_1032] = 32
                    _1528 = mem[_1448]
                    mem[_1032 + 32] = mem[_1448]
                    mem[_1032 + 64 len ceil32(_1528)] = mem[_1448 + 32 len ceil32(_1528)]
                    if ceil32(_1528) > _1528:
                        mem[_1528 + _1032 + 64] = 0
                    return 32, mem[_1032 + 32 len ceil32(_1528) + 32]
                mem[_1032] = 0
                _1449 = mem[64]
                mem[64] = _1032
                mem[_1032] = 32
                _1529 = mem[_1449]
                mem[_1032 + 32] = mem[_1449]
                mem[_1032 + 64 len ceil32(_1529)] = mem[_1449 + 32 len ceil32(_1529)]
                if ceil32(_1529) > _1529:
                    mem[_1529 + _1032 + 64] = 0
                return 32, mem[_1032 + 32 len ceil32(_1529) + 32]
            mem[0] = 8
            idx = 0
            s = 0
            while idx < stor8.length.field_1:
                mem[idx + _944 + 32] = stor8[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1418 = mem[96]
            mem[_944 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1418) <= _1418:
                _1818 = mem[64]
                mem[64] = _1418 + _944 + stor8.length.field_1 + 32
                mem[_1418 + _944 + stor8.length.field_1 + 32] = 32
                _1878 = mem[_1818]
                mem[_1418 + _944 + stor8.length.field_1 + 64] = mem[_1818]
                mem[_1418 + _944 + stor8.length.field_1 + 96 len ceil32(_1878)] = mem[_1818 + 32 len ceil32(_1878)]
                if ceil32(_1878) > _1878:
                    mem[_1878 + _1418 + _944 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1418 + _944 + stor8.length.field_1 + 64 len ceil32(_1878) + 32]
            mem[_1418 + _944 + stor8.length.field_1 + 32] = 0
            _1819 = mem[64]
            mem[64] = _1418 + _944 + stor8.length.field_1 + 32
            mem[_1418 + _944 + stor8.length.field_1 + 32] = 32
            _1879 = mem[_1819]
            mem[_1418 + _944 + stor8.length.field_1 + 64] = mem[_1819]
            mem[_1418 + _944 + stor8.length.field_1 + 96 len ceil32(_1879)] = mem[_1819 + 32 len ceil32(_1879)]
            if ceil32(_1879) > _1879:
                mem[_1879 + _1418 + _944 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1418 + _944 + stor8.length.field_1 + 64 len ceil32(_1879) + 32]
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _1033 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1033) <= _1033:
                _1450 = mem[64]
                mem[64] = _1033 + _944 + stor8.length.field_1 + 32
                mem[_1033 + _944 + stor8.length.field_1 + 32] = 32
                _1530 = mem[_1450]
                mem[_1033 + _944 + stor8.length.field_1 + 64] = mem[_1450]
                mem[_1033 + _944 + stor8.length.field_1 + 96 len ceil32(_1530)] = mem[_1450 + 32 len ceil32(_1530)]
                if ceil32(_1530) > _1530:
                    mem[_1530 + _1033 + _944 + stor8.length.field_1 + 96] = 0
                return 32, mem[_1033 + _944 + stor8.length.field_1 + 64 len ceil32(_1530) + 32]
            mem[_1033 + _944 + stor8.length.field_1 + 32] = 0
            _1451 = mem[64]
            mem[64] = _1033 + _944 + stor8.length.field_1 + 32
            mem[_1033 + _944 + stor8.length.field_1 + 32] = 32
            _1531 = mem[_1451]
            mem[_1033 + _944 + stor8.length.field_1 + 64] = mem[_1451]
            mem[_1033 + _944 + stor8.length.field_1 + 96 len ceil32(_1531)] = mem[_1451 + 32 len ceil32(_1531)]
            if ceil32(_1531) > _1531:
                mem[_1531 + _1033 + _944 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1033 + _944 + stor8.length.field_1 + 64 len ceil32(_1531) + 32]
        if bool(stor8.length) != 1:
            _1042 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1042) <= _1042:
                _1452 = mem[64]
                mem[64] = _1042
                mem[_1042] = 32
                _1532 = mem[_1452]
                mem[_1042 + 32] = mem[_1452]
                mem[_1042 + 64 len ceil32(_1532)] = mem[_1452 + 32 len ceil32(_1532)]
                if ceil32(_1532) > _1532:
                    mem[_1532 + _1042 + 64] = 0
                return 32, mem[_1042 + 32 len ceil32(_1532) + 32]
            mem[_1042] = 0
            _1453 = mem[64]
            mem[64] = _1042
            mem[_1042] = 32
            _1533 = mem[_1453]
            mem[_1042 + 32] = mem[_1453]
            mem[_1042 + 64 len ceil32(_1533)] = mem[_1453 + 32 len ceil32(_1533)]
            if ceil32(_1533) > _1533:
                mem[_1533 + _1042 + 64] = 0
            return 32, mem[_1042 + 32 len ceil32(_1533) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _944 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1419 = mem[96]
        mem[_944 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1419) <= _1419:
            _1828 = mem[64]
            mem[64] = _1419 + _944 + stor8.length.field_1 + 32
            mem[_1419 + _944 + stor8.length.field_1 + 32] = 32
            _1880 = mem[_1828]
            mem[_1419 + _944 + stor8.length.field_1 + 64] = mem[_1828]
            mem[_1419 + _944 + stor8.length.field_1 + 96 len ceil32(_1880)] = mem[_1828 + 32 len ceil32(_1880)]
            if ceil32(_1880) > _1880:
                mem[_1880 + _1419 + _944 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1419 + _944 + stor8.length.field_1 + 64 len ceil32(_1880) + 32]
        mem[_1419 + _944 + stor8.length.field_1 + 32] = 0
        _1829 = mem[64]
        mem[64] = _1419 + _944 + stor8.length.field_1 + 32
        mem[_1419 + _944 + stor8.length.field_1 + 32] = 32
        _1881 = mem[_1829]
        mem[_1419 + _944 + stor8.length.field_1 + 64] = mem[_1829]
        mem[_1419 + _944 + stor8.length.field_1 + 96 len ceil32(_1881)] = mem[_1829 + 32 len ceil32(_1881)]
        if ceil32(_1881) > _1881:
            mem[_1881 + _1419 + _944 + stor8.length.field_1 + 96] = 0
        return 32, mem[_1419 + _944 + stor8.length.field_1 + 64 len ceil32(_1881) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _945 = mem[64]
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor8.length):
            mem[mem[64] + 32] = Mask(248, 8, stor8.length)
            _1020 = mem[96]
            mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _1454 = mem[64]
                mem[64] = mem[96] + mem[64] + stor8.length.field_1 + 32
                mem[mem[96] + _945 + stor8.length.field_1 + 32] = 32
                _1534 = mem[_1454]
                mem[_1020 + _945 + stor8.length.field_1 + 64] = mem[_1454]
                mem[_1020 + _945 + stor8.length.field_1 + 96 len ceil32(_1534)] = mem[_1454 + 32 len ceil32(_1534)]
                if ceil32(_1534) > _1534:
                    mem[_1534 + _1020 + _945 + stor8.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_1534) + _1020 + _945 + stor8.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor8.length.field_1 + 32] = 0
            _1455 = mem[64]
            mem[64] = _1020 + _945 + stor8.length.field_1 + 32
            mem[_1020 + _945 + stor8.length.field_1 + 32] = 32
            _1535 = mem[_1455]
            mem[_1020 + _945 + stor8.length.field_1 + 64] = mem[_1455]
            mem[_1020 + _945 + stor8.length.field_1 + 96 len ceil32(_1535)] = mem[_1455 + 32 len ceil32(_1535)]
            if ceil32(_1535) > _1535:
                mem[_1535 + _1020 + _945 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1020 + _945 + stor8.length.field_1 + 64 len ceil32(_1535) + 32]
        if bool(stor8.length) != 1:
            _1035 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_1035) <= _1035:
                _1456 = mem[64]
                mem[64] = _1035
                mem[_1035] = 32
                _1536 = mem[_1456]
                mem[_1035 + 32] = mem[_1456]
                mem[_1035 + 64 len ceil32(_1536)] = mem[_1456 + 32 len ceil32(_1536)]
                if ceil32(_1536) > _1536:
                    mem[_1536 + _1035 + 64] = 0
                return 32, mem[_1035 + 32 len ceil32(_1536) + 32]
            mem[_1035] = 0
            _1457 = mem[64]
            mem[64] = _1035
            mem[_1035] = 32
            _1537 = mem[_1457]
            mem[_1035 + 32] = mem[_1457]
            mem[_1035 + 64 len ceil32(_1537)] = mem[_1457 + 32 len ceil32(_1537)]
            if ceil32(_1537) > _1537:
                mem[_1537 + _1035 + 64] = 0
            return 32, mem[_1035 + 32 len ceil32(_1537) + 32]
        mem[0] = 8
        idx = 0
        s = 0
        while idx < stor8.length.field_1:
            mem[idx + _945 + 32] = stor8[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1420 = mem[96]
        mem[_945 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1420) <= _1420:
            _1838 = mem[64]
            mem[64] = _1420 + _945 + stor8.length.field_1 + 32
            mem[_1420 + _945 + stor8.length.field_1 + 32] = 32
            _1882 = mem[_1838]
            mem[_1420 + _945 + stor8.length.field_1 + 64] = mem[_1838]
            mem[_1420 + _945 + stor8.length.field_1 + 96 len ceil32(_1882)] = mem[_1838 + 32 len ceil32(_1882)]
            if ceil32(_1882) > _1882:
                mem[_1882 + _1420 + _945 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1420 + _945 + stor8.length.field_1 + 64 len ceil32(_1882) + 32]
        mem[_1420 + _945 + stor8.length.field_1 + 32] = 0
        _1839 = mem[64]
        mem[64] = _1420 + _945 + stor8.length.field_1 + 32
        mem[_1420 + _945 + stor8.length.field_1 + 32] = 32
        _1883 = mem[_1839]
        mem[_1420 + _945 + stor8.length.field_1 + 64] = mem[_1839]
        mem[_1420 + _945 + stor8.length.field_1 + 96 len ceil32(_1883)] = mem[_1839 + 32 len ceil32(_1883)]
        if ceil32(_1883) > _1883:
            mem[_1883 + _1420 + _945 + stor8.length.field_1 + 96] = 0
        return 32, mem[_1420 + _945 + stor8.length.field_1 + 64 len ceil32(_1883) + 32]
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor8.length):
        mem[mem[64] + 32] = Mask(248, 8, stor8.length)
        _1036 = mem[96]
        mem[mem[64] + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1036) <= _1036:
            _1458 = mem[64]
            mem[64] = _1036 + _945 + stor8.length.field_1 + 32
            mem[_1036 + _945 + stor8.length.field_1 + 32] = 32
            _1538 = mem[_1458]
            mem[_1036 + _945 + stor8.length.field_1 + 64] = mem[_1458]
            mem[_1036 + _945 + stor8.length.field_1 + 96 len ceil32(_1538)] = mem[_1458 + 32 len ceil32(_1538)]
            if ceil32(_1538) > _1538:
                mem[_1538 + _1036 + _945 + stor8.length.field_1 + 96] = 0
            return 32, mem[_1036 + _945 + stor8.length.field_1 + 64 len ceil32(_1538) + 32]
        mem[_1036 + _945 + stor8.length.field_1 + 32] = 0
        _1459 = mem[64]
        mem[64] = _1036 + _945 + stor8.length.field_1 + 32
        mem[_1036 + _945 + stor8.length.field_1 + 32] = 32
        _1539 = mem[_1459]
        mem[_1036 + _945 + stor8.length.field_1 + 64] = mem[_1459]
        mem[_1036 + _945 + stor8.length.field_1 + 96 len ceil32(_1539)] = mem[_1459 + 32 len ceil32(_1539)]
        if ceil32(_1539) > _1539:
            mem[_1539 + _1036 + _945 + stor8.length.field_1 + 96] = 0
        return 32, mem[_1036 + _945 + stor8.length.field_1 + 64 len ceil32(_1539) + 32]
    if bool(stor8.length) != 1:
        _1044 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_1044) <= _1044:
            _1460 = mem[64]
            mem[64] = _1044
            mem[_1044] = 32
            _1540 = mem[_1460]
            mem[_1044 + 32] = mem[_1460]
            mem[_1044 + 64 len ceil32(_1540)] = mem[_1460 + 32 len ceil32(_1540)]
            if ceil32(_1540) > _1540:
                mem[_1540 + _1044 + 64] = 0
            return 32, mem[_1044 + 32 len ceil32(_1540) + 32]
        mem[_1044] = 0
        _1461 = mem[64]
        mem[64] = _1044
        mem[_1044] = 32
        _1541 = mem[_1461]
        mem[_1044 + 32] = mem[_1461]
        mem[_1044 + 64 len ceil32(_1541)] = mem[_1461 + 32 len ceil32(_1541)]
        if ceil32(_1541) > _1541:
            mem[_1541 + _1044 + 64] = 0
        return 32, mem[_1044 + 32 len ceil32(_1541) + 32]
    mem[0] = 8
    idx = 0
    s = 0
    while idx < stor8.length.field_1:
        mem[idx + _945 + 32] = stor8[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1421 = mem[96]
    mem[_945 + stor8.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_1421) <= _1421:
        _1848 = mem[64]
        mem[64] = _1421 + _945 + stor8.length.field_1 + 32
        mem[_1421 + _945 + stor8.length.field_1 + 32] = 32
        _1884 = mem[_1848]
        mem[_1421 + _945 + stor8.length.field_1 + 64] = mem[_1848]
        mem[_1421 + _945 + stor8.length.field_1 + 96 len ceil32(_1884)] = mem[_1848 + 32 len ceil32(_1884)]
        if ceil32(_1884) > _1884:
            mem[_1884 + _1421 + _945 + stor8.length.field_1 + 96] = 0
        return 32, mem[_1421 + _945 + stor8.length.field_1 + 64 len ceil32(_1884) + 32]
    mem[_1421 + _945 + stor8.length.field_1 + 32] = 0
    _1849 = mem[64]
    mem[64] = _1421 + _945 + stor8.length.field_1 + 32
    mem[_1421 + _945 + stor8.length.field_1 + 32] = 32
    _1885 = mem[_1849]
    mem[_1421 + _945 + stor8.length.field_1 + 64] = mem[_1849]
    mem[_1421 + _945 + stor8.length.field_1 + 96 len ceil32(_1885)] = mem[_1849 + 32 len ceil32(_1885)]
    if ceil32(_1885) > _1885:
        mem[_1885 + _1421 + _945 + stor8.length.field_1 + 96] = 0
    return 32, mem[_1421 + _945 + stor8.length.field_1 + 64 len ceil32(_1885) + 32]
}



}
