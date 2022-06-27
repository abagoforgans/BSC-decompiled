contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
address owner;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of struct stor10;
array of struct stor11;
address stor12;
mapping of struct stor13;
array of struct sub_403756ae;
mapping of uint256 stor99;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_403756ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_403756ae[arg1].field_0, sub_403756ae[arg1].field_256, sub_403756ae[arg1].field_512
}

function owner() payable {
    return owner
}

function getTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_403756ae[arg1].field_512
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
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

function sub_96da0446(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return stor13[arg1].field_1024
    if arg2 != 15:
        return stor13[arg1].field_1536
    return stor13[arg1].field_1280
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xd9b67a2600000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xe89341c00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_cef43fac(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor12)
    call stor12.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balanceOf[arg3][address(arg2)] += arg4
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if not uint32(ext_code.size(msg.sender)):
        emit 0xa768951f: address(this.address), arg3, arg4, msg.sender, arg1, arg2
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    mem[288] = arg2
    mem[320] = 1
    mem[352] = arg3
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        if stor13[mem[(32 * idx) + 288]].field_256 > -mem[(32 * idx) + 352] - 1:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 288]].field_256 += mem[(32 * idx) + 352]
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 288]
        mem[32] = 13
        if stor13[mem[(32 * idx) + 288]].field_512 > -mem[(32 * idx) + 352] - 1:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 288]].field_512 += mem[(32 * idx) + 352]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function burn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg1][address(msg.sender)] < arg2:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg1][address(msg.sender)] -= arg2
    emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
    mem[288] = arg1
    mem[320] = 1
    mem[352] = arg2
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        if stor13[mem[(32 * idx) + 288]].field_256 < mem[(32 * idx) + 352]:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 288]].field_256 -= mem[(32 * idx) + 352]
        if idx >= 1:
            revert with 'NH{q', 50
        if idx >= 1:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 288]
        mem[32] = 13
        if stor13[mem[(32 * idx) + 288]].field_512 < mem[(32 * idx) + 352]:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 288]].field_512 -= mem[(32 * idx) + 352]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + floor32(arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130] = balanceOf[mem[(32 * idx) + floor32(arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg1.length])
}

function sub_a3349ca8(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'NFTMetaPetsMarketplace: Insufficient $NFTMP Token Balance'
    if sub_403756ae[cd[36]].field_512 and cd[132] > -1 / sub_403756ae[cd[36]].field_512:
        revert with 'NH{q', 17
    if sub_403756ae[cd[36]].field_512 * cd[132] != cd[4]:
        revert with 0, 'NFTMetaPetsMarketplace: $NFTMP tokens does not match the desired amount'
    if ('cd', 68).length != ('cd', 100).length:
        revert with 0, 'NFTMetaPetsMarketplace: Quantity does not match no. of tokens to buy'
    require ext_code.size(stor12)
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = 13
        if stor13[cd[((32 * idx) + cd[68] + 36)]].field_512 > -cd[((32 * idx) + cd[100] + 36)] - 1:
            revert with 'NH{q', 17
        stor13[cd[((32 * idx) + cd[68] + 36)]].field_512 += cd[((32 * idx) + cd[100] + 36)]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        mem[(2 * ceil32(return_data.size)) + 96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = cd[((32 * idx) + cd[68] + 36)]
        mem[(2 * ceil32(return_data.size)) + 196] = cd[((32 * idx) + cd[100] + 36)]
        mem[(2 * ceil32(return_data.size)) + 228] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        require ext_code.size(this.address)
        call this.address.0xf242432a with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x15dbf7c2: msg.sender, address(this.address), Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], ('cd', 100).length, call.data[cd[100] + 36 len 32 * ('cd', 100).length]), (32 * ('cd', 68).length) + 224, cd[4], cd[132]
}

function sub_ab97bc74(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor13[arg1].field_1792):
        if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
            revert with 'NH{q', 34
        if bool(stor13[arg1].field_1792):
            if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
                revert with 'NH{q', 34
            if uint255(stor13[arg1].field_1793):
                if 31 >= uint255(stor13[arg1].field_1793):
                    mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
                else:
                    mem[128] = stor13[arg1][7].field_0
                    idx = 128
                    s = 0
                    while uint255(stor13[arg1].field_1793) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
                revert with 'NH{q', 34
            if stor13[arg1].field_1793 % 128:
                if 31 >= stor13[arg1].field_1793 % 128:
                    mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
                else:
                    mem[128] = stor13[arg1][7].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor13[arg1].field_0, 
               stor13[arg1].field_256,
               stor13[arg1].field_512,
               stor13[arg1].field_768,
               stor13[arg1].field_1024,
               stor13[arg1].field_1280,
               stor13[arg1].field_1536,
               Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1793)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1793))])
    if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13[arg1].field_1792):
        if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
            revert with 'NH{q', 34
        if uint255(stor13[arg1].field_1793):
            if 31 >= uint255(stor13[arg1].field_1793):
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
            else:
                mem[128] = stor13[arg1][7].field_0
                idx = 128
                s = 0
                while uint255(stor13[arg1].field_1793) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
            revert with 'NH{q', 34
        if stor13[arg1].field_1793 % 128:
            if 31 >= stor13[arg1].field_1793 % 128:
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
            else:
                mem[128] = stor13[arg1][7].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor13[arg1].field_0, 
           stor13[arg1].field_256,
           stor13[arg1].field_512,
           stor13[arg1].field_768,
           stor13[arg1].field_1024,
           stor13[arg1].field_1280,
           stor13[arg1].field_1536,
           Array(len=stor13[arg1].field_1792 % 128, data=mem[128 len ceil32(stor13[arg1].field_1793 % 128)])
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg2.length) + floor32(arg3.length) + 130] = this.address
    mem[floor32(arg2.length) + floor32(arg3.length) + 162] = 96
    mem[floor32(arg2.length) + floor32(arg3.length) + 226] = arg2.length
    mem[floor32(arg2.length) + floor32(arg3.length) + 258 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[floor32(arg2.length) + floor32(arg3.length) + 194] = (32 * arg2.length) + 128
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 258] = arg3.length
    mem[floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + 290 len 32 * arg3.length] = mem[floor32(arg2.length) + 129 len 32 * arg3.length]
    emit 0x3a89e87b: address(this.address), Array(len=arg2.length, data=mem[floor32(arg2.length) + floor32(arg3.length) + 258 len (32 * arg2.length) + (32 * arg3.length) + 32]), (32 * arg2.length) + 128, msg.sender, 0, arg1
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155_NFTMetaPets: Array leenghs must equal.'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if stor13[mem[(32 * idx) + 128]].field_256 > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 128]].field_256 += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        if stor13[mem[(32 * idx) + 128]].field_512 > -mem[(32 * idx) + floor32(arg2.length) + 129] - 1:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 128]].field_512 += mem[(32 * idx) + floor32(arg2.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function burnBatch(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] < mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg1.length) + floor32(arg2.length) + 130] = this.address
    mem[floor32(arg1.length) + floor32(arg2.length) + 162] = 96
    mem[floor32(arg1.length) + floor32(arg2.length) + 226] = arg1.length
    mem[floor32(arg1.length) + floor32(arg2.length) + 258 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    mem[floor32(arg1.length) + floor32(arg2.length) + 194] = (32 * arg1.length) + 128
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 258] = arg2.length
    mem[floor32(arg1.length) + floor32(arg2.length) + (32 * arg1.length) + 290 len 32 * arg2.length] = mem[floor32(arg1.length) + 129 len 32 * arg2.length]
    emit 0x3a89e87b: address(this.address), Array(len=arg1.length, data=mem[floor32(arg1.length) + floor32(arg2.length) + 258 len (32 * arg1.length) + (32 * arg2.length) + 32]), (32 * arg1.length) + 128, msg.sender, msg.sender, 0
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155_NFTMetaPets: Array leenghs must equal.'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if stor13[mem[(32 * idx) + 128]].field_256 < mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 128]].field_256 -= mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 13
        if stor13[mem[(32 * idx) + 128]].field_512 < mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 'NH{q', 17
        stor13[mem[(32 * idx) + 128]].field_512 -= mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + floor32(arg4.length) + 98] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[floor32(arg3.length) + floor32(arg4.length) + 130 len arg5.length] = arg5[all]
    mem[floor32(arg3.length) + floor32(arg4.length) + arg5.length + 130] = 0
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if idx >= arg4.length:
            revert with 'NH{q', 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + floor32(arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + floor32(arg3.length) + 129]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > -mem[(32 * idx) + floor32(arg3.length) + 129] - 1:
            revert with 'NH{q', 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + floor32(arg3.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99] = this.address
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 131] = 96
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 195] = arg3.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 163] = (32 * arg3.length) + 128
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227] = arg4.length
    mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[floor32(arg3.length) + 129 len 32 * arg4.length]
    emit 0x3a89e87b: address(this.address), Array(len=arg3.length, data=mem[floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 227 len (32 * arg3.length) + (32 * arg4.length) + 32]), (32 * arg3.length) + 128, msg.sender, arg1, arg2
}

function name() payable {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10.length.field_1):
                if 31 < uint255(stor10.length.field_1):
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor10.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1 % 128:
                if 31 < stor10.length.field_1 % 128:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        mem[ceil32(uint255(stor10.length.field_1)) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) > uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))], mem[(2 * ceil32(uint255(stor10.length.field_1))) + 192 len 2 * ceil32(uint255(stor10.length.field_1))]), 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10.length.field_1):
            if 31 < uint255(stor10.length.field_1):
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while uint255(stor10.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1 % 128:
            if 31 < stor10.length.field_1 % 128:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
    mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
    if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)], mem[(2 * ceil32(stor10.length.field_1 % 128)) + 192 len 2 * ceil32(stor10.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor11.length.field_1):
                if 31 < uint255(stor11.length.field_1):
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor11.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1 % 128:
                if 31 < stor11.length.field_1 % 128:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        mem[ceil32(uint255(stor11.length.field_1)) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) > uint255(stor11.length.field_1):
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))], mem[(2 * ceil32(uint255(stor11.length.field_1))) + 192 len 2 * ceil32(uint255(stor11.length.field_1))]), 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor11.length.field_1):
            if 31 < uint255(stor11.length.field_1):
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while uint255(stor11.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1 % 128:
            if 31 < stor11.length.field_1 % 128:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    mem[ceil32(stor11.length.field_1 % 128) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) > stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)], mem[(2 * ceil32(stor11.length.field_1 % 128)) + 192 len 2 * ceil32(stor11.length.field_1 % 128)]), 
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor13[arg1].field_1792):
        if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
            revert with 'NH{q', 34
        if bool(stor13[arg1].field_1792):
            if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
                revert with 'NH{q', 34
            if uint255(stor13[arg1].field_1793):
                if 31 < uint255(stor13[arg1].field_1793):
                    mem[128] = stor13[arg1][7].field_0
                    idx = 128
                    s = 0
                    while uint255(stor13[arg1].field_1793) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1793)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1793))]), 
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
        else:
            if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
                revert with 'NH{q', 34
            if stor13[arg1].field_1793 % 128:
                if 31 < stor13[arg1].field_1793 % 128:
                    mem[128] = stor13[arg1][7].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1793)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1793))]), 
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
        mem[ceil32(uint255(stor13[arg1].field_1793)) + 192 len ceil32(uint255(stor13[arg1].field_1793))] = mem[128 len ceil32(uint255(stor13[arg1].field_1793))]
        if ceil32(uint255(stor13[arg1].field_1793)) > uint255(stor13[arg1].field_1793):
            mem[ceil32(uint255(stor13[arg1].field_1793)) + uint255(stor13[arg1].field_1793) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1793)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1793))], mem[(2 * ceil32(uint255(stor13[arg1].field_1793))) + 192 len 2 * ceil32(uint255(stor13[arg1].field_1793))]), 
    if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13[arg1].field_1792):
        if bool(stor13[arg1].field_1792) == uint255(stor13[arg1].field_1793) < 32:
            revert with 'NH{q', 34
        if uint255(stor13[arg1].field_1793):
            if 31 < uint255(stor13[arg1].field_1793):
                mem[128] = stor13[arg1][7].field_0
                idx = 128
                s = 0
                while uint255(stor13[arg1].field_1793) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_1792 % 128, data=mem[128 len ceil32(stor13[arg1].field_1793 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
    else:
        if bool(stor13[arg1].field_1792) == stor13[arg1].field_1793 % 128 < 32:
            revert with 'NH{q', 34
        if stor13[arg1].field_1793 % 128:
            if 31 < stor13[arg1].field_1793 % 128:
                mem[128] = stor13[arg1][7].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_1792 % 128, data=mem[128 len ceil32(stor13[arg1].field_1793 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_1800)
    mem[ceil32(stor13[arg1].field_1793 % 128) + 192 len ceil32(stor13[arg1].field_1793 % 128)] = mem[128 len ceil32(stor13[arg1].field_1793 % 128)]
    if ceil32(stor13[arg1].field_1793 % 128) > stor13[arg1].field_1793 % 128:
        mem[ceil32(stor13[arg1].field_1793 % 128) + stor13[arg1].field_1793 % 128 + 192] = 0
    return Array(len=stor13[arg1].field_1792 % 128, data=mem[128 len ceil32(stor13[arg1].field_1793 % 128)], mem[(2 * ceil32(stor13[arg1].field_1793 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1793 % 128)]), 
}

function sub_bacc1161(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NFTMetaPets1155: Input array parameters must be of the same length'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NFTMetaPets1155: Input array parameters must be of the same length'
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        if stor5 == -1:
            revert with 'NH{q', 17
        stor5++
        sub_403756ae[stor5].field_0 = stor5
        sub_403756ae[stor5].field_256 = ('cd', 4).length
        mem[0] = stor5
        mem[32] = 14
        sub_403756ae[stor5].field_512 = cd[100]
        idx = 0
        while idx < ('cd', 4).length:
            if stor4 == -1:
                revert with 'NH{q', 17
            stor4++
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor4
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor6 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor6:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor7 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor7:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor8 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor8:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            _592 = mem[64]
            mem[64] = mem[64] + 256
            mem[_592] = stor4
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[_592 + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[_592 + 64] = 0
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[_592 + 96] = cd[((32 * idx) + cd[36] + 36)]
            mem[_592 + 128] = stor6 * cd[((32 * idx) + cd[36] + 36)] / stor9
            mem[_592 + 160] = stor7 * cd[((32 * idx) + cd[36] + 36)] / stor9
            mem[_592 + 192] = stor8 * cd[((32 * idx) + cd[36] + 36)] / stor9
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 32
            mem[_594] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            mem[_594 + 32 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
            mem[_594 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32] = 0
            mem[_592 + 224] = _594
            mem[32] = 13
            stor13[stor4].field_0 = stor4
            stor13[stor4].field_256 = cd[((32 * idx) + cd[4] + 36)]
            stor13[stor4].field_512 = 0
            stor13[stor4].field_768 = cd[((32 * idx) + cd[36] + 36)]
            stor13[stor4].field_1024 = stor6 * cd[((32 * idx) + cd[36] + 36)] / stor9
            stor13[stor4].field_1280 = stor7 * cd[((32 * idx) + cd[36] + 36)] / stor9
            stor13[stor4].field_1536 = stor8 * cd[((32 * idx) + cd[36] + 36)] / stor9
            if bool(stor13[stor4].field_1792):
                if bool(stor13[stor4].field_1792) == uint255(stor13[stor4].field_1793) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor4, 13) + 7
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor13[stor4].field_1792 = 0
                    s = sha3(sha3(stor4, 13) + 7)
                    while sha3(sha3(stor4, 13) + 7) + (uint255(stor13[stor4].field_1793) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor13[stor4].field_1792 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(stor4, 13) + 7)
                    t = _594 + 32
                    while _594 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor4, 13) + 7) + (Mask(251, 0, cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                    while sha3(sha3(stor4, 13) + 7) + (uint255(stor13[stor4].field_1793) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor13[stor4].field_1792) == stor13[stor4].field_1793 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor4, 13) + 7
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor13[stor4].field_1792 = 0
                    s = sha3(sha3(stor4, 13) + 7)
                    while sha3(sha3(stor4, 13) + 7) + (stor13[stor4].field_1793 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor13[stor4].field_1792 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(stor4, 13) + 7)
                    t = _594 + 32
                    while _594 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor4, 13) + 7) + (Mask(251, 0, cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                    while sha3(sha3(stor4, 13) + 7) + (stor13[stor4].field_1793 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            mem[0] = stor4
            mem[32] = 13
            mem[mem[64]] = sub_403756ae[stor5].field_0
            mem[mem[64] + 32] = stor13[stor4].field_0
            mem[mem[64] + 64] = this.address
            mem[mem[64] + 96] = stor13[stor4].field_256
            mem[mem[64] + 128] = stor13[stor4].field_512
            mem[mem[64] + 160] = stor13[stor4].field_768
            mem[mem[64] + 192] = stor13[stor4].field_1024
            mem[mem[64] + 224] = stor13[stor4].field_1280
            mem[mem[64] + 256] = stor13[stor4].field_1536
            mem[mem[64] + 288] = 320
            if bool(stor13[stor4].field_1792):
                if bool(stor13[stor4].field_1792) == uint255(stor13[stor4].field_1793) < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 320] = uint255(stor13[stor4].field_1793)
                if not bool(stor13[stor4].field_1792):
                    mem[mem[64] + 352] = Mask(248, 8, stor13[stor4].field_1792)
                    emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=2 * Mask(256, -1, uint255(stor13[stor4].field_1793)), data=Mask(248, 8, stor13[stor4].field_1792))
                else:
                    if bool(stor13[stor4].field_1792) != 1:
                        emit 0xf1629a32: mem[mem[64] len -mem[64]]
                    else:
                        mem[0] = sha3(stor4, 13) + 7
                        s = 0
                        t = sha3(sha3(stor4, 13) + 7)
                        while s < uint255(stor13[stor4].field_1793):
                            mem[mem[64] + s + 352] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=2 * Mask(256, -1, uint255(stor13[stor4].field_1793)), data=mem[mem[64] + 352 len ceil32(uint255(stor13[stor4].field_1793))])
            else:
                if bool(stor13[stor4].field_1792) == stor13[stor4].field_1793 % 128 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 320] = stor13[stor4].field_1793 % 128
                if not bool(stor13[stor4].field_1792):
                    mem[mem[64] + 352] = Mask(248, 8, stor13[stor4].field_1792)
                    emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=stor13[stor4].field_1792 % 128, data=Mask(248, 8, stor13[stor4].field_1792))
                else:
                    if bool(stor13[stor4].field_1792) != 1:
                        emit 0xf1629a32: mem[mem[64] len -mem[64]]
                    else:
                        mem[0] = sha3(stor4, 13) + 7
                        s = 0
                        t = sha3(sha3(stor4, 13) + 7)
                        while s < stor13[stor4].field_1793 % 128:
                            mem[mem[64] + s + 352] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=stor13[stor4].field_1792 % 128, data=mem[mem[64] + 352 len ceil32(stor13[stor4].field_1793 % 128)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_403756ae[stor5].field_768 = mem[96]
        if not mem[96]:
            idx = 0
            while sub_403756ae[stor5].field_768 > idx:
                sub_403756ae[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = stor5
            mem[32] = 14
            _931 = mem[64]
            mem[64] = mem[64] + (32 * sub_403756ae[stor5].field_768) + 32
            mem[_931] = sub_403756ae[stor5].field_768
            if not sub_403756ae[stor5].field_768:
                _1054 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1054] = ('cd', 4).length
                mem[_1054 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1054 + (32 * ('cd', 4).length) + 32] = 0
                _1055 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1055] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1054]:
                        revert with 'NH{q', 50
                    _1344 = mem[(32 * idx) + _1054 + 32]
                    if idx >= mem[_931]:
                        revert with 'NH{q', 50
                    _1349 = sha3(mem[(32 * idx) + _931 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _931 + 32], 0)
                    if stor[_1349][address(this.address)] > -_1344 - 1:
                        revert with 'NH{q', 17
                    stor[_1349][address(this.address)] += _1344
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1340 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1436 = mem[_931]
                mem[mem[64] + 96] = mem[_931]
                mem[mem[64] + 128 len 32 * _1436] = mem[_931 + 32 len 32 * _1436]
                mem[mem[64] + 64] = (32 * _1436) + 128
                _1562 = mem[_1054]
                mem[_1340 + (32 * _1436) + 128] = mem[_1054]
                mem[_1340 + (32 * _1436) + 160 len 32 * _1562] = mem[_1054 + 32 len 32 * _1562]
                emit 0x3a89e87b: mem[mem[64] len _1340 + (32 * _1436) + (32 * _1562) + -mem[64] + 160], msg.sender, 0, this.address
            else:
                mem[0] = sha3(stor5, 14) + 3
                mem[_931 + 32] = sub_403756ae[stor5][3].field_0
                idx = _931 + 32
                s = 0
                while _931 + (32 * sub_403756ae[stor5].field_768) > idx:
                    mem[idx + 32] = sub_403756ae[stor5][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1532 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1532] = ('cd', 4).length
                mem[_1532 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1532 + (32 * ('cd', 4).length) + 32] = 0
                _1533 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1533] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1532]:
                        revert with 'NH{q', 50
                    _1666 = mem[(32 * idx) + _1532 + 32]
                    if idx >= mem[_931]:
                        revert with 'NH{q', 50
                    _1678 = sha3(mem[(32 * idx) + _931 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _931 + 32], 0)
                    if stor[_1678][address(this.address)] > -_1666 - 1:
                        revert with 'NH{q', 17
                    stor[_1678][address(this.address)] += _1666
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1659 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1702 = mem[_931]
                mem[mem[64] + 96] = mem[_931]
                mem[mem[64] + 128 len 32 * _1702] = mem[_931 + 32 len 32 * _1702]
                mem[mem[64] + 64] = (32 * _1702) + 128
                _1804 = mem[_1532]
                mem[_1659 + (32 * _1702) + 128] = mem[_1532]
                mem[_1659 + (32 * _1702) + 160 len 32 * _1804] = mem[_1532 + 32 len 32 * _1804]
                emit 0x3a89e87b: mem[mem[64] len _1659 + (32 * _1702) + (32 * _1804) + -mem[64] + 160], msg.sender, 0, this.address
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                sub_403756ae[stor5][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_403756ae[stor5].field_768 > idx:
                sub_403756ae[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = stor5
            mem[32] = 14
            _1352 = mem[64]
            mem[64] = mem[64] + (32 * sub_403756ae[stor5].field_768) + 32
            mem[_1352] = sub_403756ae[stor5].field_768
            if not sub_403756ae[stor5].field_768:
                _1398 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1398] = ('cd', 4).length
                mem[_1398 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1398 + (32 * ('cd', 4).length) + 32] = 0
                _1399 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1399] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1398]:
                        revert with 'NH{q', 50
                    _1547 = mem[(32 * idx) + _1398 + 32]
                    if idx >= mem[_1352]:
                        revert with 'NH{q', 50
                    _1556 = sha3(mem[(32 * idx) + _1352 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _1352 + 32], 0)
                    if stor[_1556][address(this.address)] > -_1547 - 1:
                        revert with 'NH{q', 17
                    stor[_1556][address(this.address)] += _1547
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1539 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1581 = mem[_1352]
                mem[mem[64] + 96] = mem[_1352]
                mem[mem[64] + 128 len 32 * _1581] = mem[_1352 + 32 len 32 * _1581]
                mem[mem[64] + 64] = (32 * _1581) + 128
                _1690 = mem[_1398]
                mem[_1539 + (32 * _1581) + 128] = mem[_1398]
                mem[_1539 + (32 * _1581) + 160 len 32 * _1690] = mem[_1398 + 32 len 32 * _1690]
                emit 0x3a89e87b: mem[mem[64] len _1539 + (32 * _1581) + (32 * _1690) + -mem[64] + 160], msg.sender, 0, this.address
            else:
                mem[0] = sha3(stor5, 14) + 3
                mem[_1352 + 32] = sub_403756ae[stor5][3].field_0
                idx = _1352 + 32
                s = 0
                while _1352 + (32 * sub_403756ae[stor5].field_768) > idx:
                    mem[idx + 32] = sub_403756ae[stor5][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1653 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1653] = ('cd', 4).length
                mem[_1653 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1653 + (32 * ('cd', 4).length) + 32] = 0
                _1654 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1654] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1653]:
                        revert with 'NH{q', 50
                    _1790 = mem[(32 * idx) + _1653 + 32]
                    if idx >= mem[_1352]:
                        revert with 'NH{q', 50
                    _1797 = sha3(mem[(32 * idx) + _1352 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _1352 + 32], 0)
                    if stor[_1797][address(this.address)] > -_1790 - 1:
                        revert with 'NH{q', 17
                    stor[_1797][address(this.address)] += _1790
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1784 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1814 = mem[_1352]
                mem[mem[64] + 96] = mem[_1352]
                mem[mem[64] + 128 len 32 * _1814] = mem[_1352 + 32 len 32 * _1814]
                mem[mem[64] + 64] = (32 * _1814) + 128
                _1868 = mem[_1653]
                mem[_1784 + (32 * _1814) + 128] = mem[_1653]
                mem[_1784 + (32 * _1814) + 160 len 32 * _1868] = mem[_1653 + 32 len 32 * _1868]
                emit 0x3a89e87b: mem[mem[64] len _1784 + (32 * _1814) + (32 * _1868) + -mem[64] + 160], msg.sender, 0, this.address
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if stor5 == -1:
            revert with 'NH{q', 17
        stor5++
        sub_403756ae[stor5].field_0 = stor5
        sub_403756ae[stor5].field_256 = ('cd', 4).length
        mem[0] = stor5
        mem[32] = 14
        sub_403756ae[stor5].field_512 = cd[100]
        idx = 0
        while idx < ('cd', 4).length:
            if stor4 == -1:
                revert with 'NH{q', 17
            stor4++
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor4
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor6 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor6:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor7 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor7:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if stor8 and cd[((32 * idx) + cd[36] + 36)] > -1 / stor8:
                revert with 'NH{q', 17
            if not stor9:
                revert with 'NH{q', 18
            _593 = mem[64]
            mem[64] = mem[64] + 256
            mem[_593] = stor4
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[_593 + 32] = cd[((32 * idx) + cd[4] + 36)]
            mem[_593 + 64] = 0
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[_593 + 96] = cd[((32 * idx) + cd[36] + 36)]
            mem[_593 + 128] = stor6 * cd[((32 * idx) + cd[36] + 36)] / stor9
            mem[_593 + 160] = stor7 * cd[((32 * idx) + cd[36] + 36)] / stor9
            mem[_593 + 192] = stor8 * cd[((32 * idx) + cd[36] + 36)] / stor9
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 32
            mem[_605] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            mem[_605 + 32 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
            mem[_605 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32] = 0
            mem[_593 + 224] = _605
            mem[32] = 13
            stor13[stor4].field_0 = stor4
            stor13[stor4].field_256 = cd[((32 * idx) + cd[4] + 36)]
            stor13[stor4].field_512 = 0
            stor13[stor4].field_768 = cd[((32 * idx) + cd[36] + 36)]
            stor13[stor4].field_1024 = stor6 * cd[((32 * idx) + cd[36] + 36)] / stor9
            stor13[stor4].field_1280 = stor7 * cd[((32 * idx) + cd[36] + 36)] / stor9
            stor13[stor4].field_1536 = stor8 * cd[((32 * idx) + cd[36] + 36)] / stor9
            if bool(stor13[stor4].field_1792):
                if bool(stor13[stor4].field_1792) == uint255(stor13[stor4].field_1793) < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor4, 13) + 7
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor13[stor4].field_1792 = 0
                    s = sha3(sha3(stor4, 13) + 7)
                    while sha3(sha3(stor4, 13) + 7) + (uint255(stor13[stor4].field_1793) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor13[stor4].field_1792 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(stor4, 13) + 7)
                    t = _605 + 32
                    while _605 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor4, 13) + 7) + (Mask(251, 0, cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                    while sha3(sha3(stor4, 13) + 7) + (uint255(stor13[stor4].field_1793) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            else:
                if bool(stor13[stor4].field_1792) == stor13[stor4].field_1793 % 128 < 32:
                    revert with 'NH{q', 34
                mem[0] = sha3(stor4, 13) + 7
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor13[stor4].field_1792 = 0
                    s = sha3(sha3(stor4, 13) + 7)
                    while sha3(sha3(stor4, 13) + 7) + (stor13[stor4].field_1793 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor13[stor4].field_1792 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(stor4, 13) + 7)
                    t = _605 + 32
                    while _605 + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 32 > t:
                        stor[s] = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(stor4, 13) + 7) + (Mask(251, 0, cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                    while sha3(sha3(stor4, 13) + 7) + (stor13[stor4].field_1793 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
            mem[0] = stor4
            mem[32] = 13
            mem[mem[64]] = sub_403756ae[stor5].field_0
            mem[mem[64] + 32] = stor13[stor4].field_0
            mem[mem[64] + 64] = this.address
            mem[mem[64] + 96] = stor13[stor4].field_256
            mem[mem[64] + 128] = stor13[stor4].field_512
            mem[mem[64] + 160] = stor13[stor4].field_768
            mem[mem[64] + 192] = stor13[stor4].field_1024
            mem[mem[64] + 224] = stor13[stor4].field_1280
            mem[mem[64] + 256] = stor13[stor4].field_1536
            mem[mem[64] + 288] = 320
            if bool(stor13[stor4].field_1792):
                if bool(stor13[stor4].field_1792) == uint255(stor13[stor4].field_1793) < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 320] = uint255(stor13[stor4].field_1793)
                if not bool(stor13[stor4].field_1792):
                    mem[mem[64] + 352] = Mask(248, 8, stor13[stor4].field_1792)
                    emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=2 * Mask(256, -1, uint255(stor13[stor4].field_1793)), data=Mask(248, 8, stor13[stor4].field_1792))
                else:
                    if bool(stor13[stor4].field_1792) != 1:
                        emit 0xf1629a32: mem[mem[64] len -mem[64]]
                    else:
                        mem[0] = sha3(stor4, 13) + 7
                        s = 0
                        t = sha3(sha3(stor4, 13) + 7)
                        while s < uint255(stor13[stor4].field_1793):
                            mem[mem[64] + s + 352] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=2 * Mask(256, -1, uint255(stor13[stor4].field_1793)), data=mem[mem[64] + 352 len ceil32(uint255(stor13[stor4].field_1793))])
            else:
                if bool(stor13[stor4].field_1792) == stor13[stor4].field_1793 % 128 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 320] = stor13[stor4].field_1793 % 128
                if not bool(stor13[stor4].field_1792):
                    mem[mem[64] + 352] = Mask(248, 8, stor13[stor4].field_1792)
                    emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=stor13[stor4].field_1792 % 128, data=Mask(248, 8, stor13[stor4].field_1792))
                else:
                    if bool(stor13[stor4].field_1792) != 1:
                        emit 0xf1629a32: mem[mem[64] len -mem[64]]
                    else:
                        mem[0] = sha3(stor4, 13) + 7
                        s = 0
                        t = sha3(sha3(stor4, 13) + 7)
                        while s < stor13[stor4].field_1793 % 128:
                            mem[mem[64] + s + 352] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        emit 0xf1629a32: sub_403756ae[stor5].field_0, stor13[stor4].field_0, address(this.address), stor13[stor4].field_256, stor13[stor4].field_512, stor13[stor4].field_768, stor13[stor4].field_1024, stor13[stor4].field_1280, stor13[stor4].field_1536, Array(len=stor13[stor4].field_1792 % 128, data=mem[mem[64] + 352 len ceil32(stor13[stor4].field_1793 % 128)])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_403756ae[stor5].field_768 = mem[96]
        if not mem[96]:
            idx = 0
            while sub_403756ae[stor5].field_768 > idx:
                sub_403756ae[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = stor5
            mem[32] = 14
            _993 = mem[64]
            mem[64] = mem[64] + (32 * sub_403756ae[stor5].field_768) + 32
            mem[_993] = sub_403756ae[stor5].field_768
            if not sub_403756ae[stor5].field_768:
                _1057 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1057] = ('cd', 4).length
                mem[_1057 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1057 + (32 * ('cd', 4).length) + 32] = 0
                _1058 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1058] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1057]:
                        revert with 'NH{q', 50
                    _1346 = mem[(32 * idx) + _1057 + 32]
                    if idx >= mem[_993]:
                        revert with 'NH{q', 50
                    _1374 = sha3(mem[(32 * idx) + _993 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _993 + 32], 0)
                    if stor[_1374][address(this.address)] > -_1346 - 1:
                        revert with 'NH{q', 17
                    stor[_1374][address(this.address)] += _1346
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1342 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1437 = mem[_993]
                mem[mem[64] + 96] = mem[_993]
                mem[mem[64] + 128 len 32 * _1437] = mem[_993 + 32 len 32 * _1437]
                mem[mem[64] + 64] = (32 * _1437) + 128
                _1567 = mem[_1057]
                mem[_1342 + (32 * _1437) + 128] = mem[_1057]
                mem[_1342 + (32 * _1437) + 160 len 32 * _1567] = mem[_1057 + 32 len 32 * _1567]
                emit 0x3a89e87b: mem[mem[64] len _1342 + (32 * _1437) + (32 * _1567) + -mem[64] + 160], msg.sender, 0, this.address
            else:
                mem[0] = sha3(stor5, 14) + 3
                mem[_993 + 32] = sub_403756ae[stor5][3].field_0
                idx = _993 + 32
                s = 0
                while _993 + (32 * sub_403756ae[stor5].field_768) > idx:
                    mem[idx + 32] = sub_403756ae[stor5][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1535 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1535] = ('cd', 4).length
                mem[_1535 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1535 + (32 * ('cd', 4).length) + 32] = 0
                _1536 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1536] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1535]:
                        revert with 'NH{q', 50
                    _1671 = mem[(32 * idx) + _1535 + 32]
                    if idx >= mem[_993]:
                        revert with 'NH{q', 50
                    _1683 = sha3(mem[(32 * idx) + _993 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _993 + 32], 0)
                    if stor[_1683][address(this.address)] > -_1671 - 1:
                        revert with 'NH{q', 17
                    stor[_1683][address(this.address)] += _1671
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1663 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1706 = mem[_993]
                mem[mem[64] + 96] = mem[_993]
                mem[mem[64] + 128 len 32 * _1706] = mem[_993 + 32 len 32 * _1706]
                mem[mem[64] + 64] = (32 * _1706) + 128
                _1809 = mem[_1535]
                mem[_1663 + (32 * _1706) + 128] = mem[_1535]
                mem[_1663 + (32 * _1706) + 160 len 32 * _1809] = mem[_1535 + 32 len 32 * _1809]
                emit 0x3a89e87b: mem[mem[64] len _1663 + (32 * _1706) + (32 * _1809) + -mem[64] + 160], msg.sender, 0, this.address
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                sub_403756ae[stor5][s + 3].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_403756ae[stor5].field_768 > idx:
                sub_403756ae[stor5][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = stor5
            mem[32] = 14
            _1377 = mem[64]
            mem[64] = mem[64] + (32 * sub_403756ae[stor5].field_768) + 32
            mem[_1377] = sub_403756ae[stor5].field_768
            if not sub_403756ae[stor5].field_768:
                _1413 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1413] = ('cd', 4).length
                mem[_1413 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1413 + (32 * ('cd', 4).length) + 32] = 0
                _1414 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1414] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1413]:
                        revert with 'NH{q', 50
                    _1552 = mem[(32 * idx) + _1413 + 32]
                    if idx >= mem[_1377]:
                        revert with 'NH{q', 50
                    _1560 = sha3(mem[(32 * idx) + _1377 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _1377 + 32], 0)
                    if stor[_1560][address(this.address)] > -_1552 - 1:
                        revert with 'NH{q', 17
                    stor[_1560][address(this.address)] += _1552
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1542 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1585 = mem[_1377]
                mem[mem[64] + 96] = mem[_1377]
                mem[mem[64] + 128 len 32 * _1585] = mem[_1377 + 32 len 32 * _1585]
                mem[mem[64] + 64] = (32 * _1585) + 128
                _1695 = mem[_1413]
                mem[_1542 + (32 * _1585) + 128] = mem[_1413]
                mem[_1542 + (32 * _1585) + 160 len 32 * _1695] = mem[_1413 + 32 len 32 * _1695]
                emit 0x3a89e87b: mem[mem[64] len _1542 + (32 * _1585) + (32 * _1695) + -mem[64] + 160], msg.sender, 0, this.address
            else:
                mem[0] = sha3(stor5, 14) + 3
                mem[_1377 + 32] = sub_403756ae[stor5][3].field_0
                idx = _1377 + 32
                s = 0
                while _1377 + (32 * sub_403756ae[stor5].field_768) > idx:
                    mem[idx + 32] = sub_403756ae[stor5][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1656 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                mem[_1656] = ('cd', 4).length
                mem[_1656 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                mem[_1656 + (32 * ('cd', 4).length) + 32] = 0
                _1657 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1657] = 0
                if not this.address:
                    revert with 0, 'ERC1155: mint to the zero address'
                if sub_403756ae[stor5].field_768 != ('cd', 4).length:
                    revert with 0, 'ERC1155: ids and amounts length mismatch'
                idx = 0
                while idx < sub_403756ae[stor5].field_768:
                    if idx >= mem[_1656]:
                        revert with 'NH{q', 50
                    _1792 = mem[(32 * idx) + _1656 + 32]
                    if idx >= mem[_1377]:
                        revert with 'NH{q', 50
                    _1802 = sha3(mem[(32 * idx) + _1377 + 32], 0)
                    mem[0] = this.address
                    mem[32] = sha3(mem[(32 * idx) + _1377 + 32], 0)
                    if stor[_1802][address(this.address)] > -_1792 - 1:
                        revert with 'NH{q', 17
                    stor[_1802][address(this.address)] += _1792
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1788 = mem[64]
                mem[mem[64]] = this.address
                mem[mem[64] + 32] = 96
                _1815 = mem[_1377]
                mem[mem[64] + 96] = mem[_1377]
                mem[mem[64] + 128 len 32 * _1815] = mem[_1377 + 32 len 32 * _1815]
                mem[mem[64] + 64] = (32 * _1815) + 128
                _1873 = mem[_1656]
                mem[_1788 + (32 * _1815) + 128] = mem[_1656]
                mem[_1788 + (32 * _1815) + 160 len 32 * _1873] = mem[_1656 + 32 len 32 * _1873]
                emit 0x3a89e87b: mem[mem[64] len _1788 + (32 * _1815) + (32 * _1873) + -mem[64] + 160], msg.sender, 0, this.address
    mem[32] = 14
    mem[mem[64] + 64] = sub_403756ae[stor5].field_256
    mem[mem[64] + 96] = cd[100]
    idx = 0
    s = 0
    t = mem[64] + 192
    while idx < sub_403756ae[stor5].field_768:
        mem[t] = sub_403756ae[stor5][s + 3].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x9aaa5136: sub_403756ae[stor5].field_0, address(this.address), sub_403756ae[stor5].field_256, cd[100], Array(len=sub_403756ae[stor5].field_768, data=mem[mem[64] + 192 len 32 * sub_403756ae[stor5].field_768])
}



}
