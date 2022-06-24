contract main {




// =====================  Runtime code  =====================


#
#  - batchMintNFT(address arg1, uint256 arg2, uint256 arg3)
#  - mintNFT(address arg1, uint256 arg2)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address owner;
array of struct minter;
mapping of uint256 stor13;
array of struct stor14;
mapping of uint256 stor15;
array of struct sub_be3c7b1f;
mapping of uint256 stor17;
uint256 stor18;
array of struct stor19;
array of struct stor20;
array of uint256 stor21;
mapping of uint256 stor22;

function getMinterLength() payable {
    return minter.length
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function getMinter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if minter.length < 1:
        revert with 'NH{q', 17
    if arg1 > minter.length - 1:
        revert with 0, 'ExplorerNFT: index out of bounds'
    if arg1 >= minter.length:
        revert with 'NH{q', 50
    return minter[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_9ab6a38e(?) payable {
    return sub_be3c7b1f.length
}

function sub_be3c7b1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if sub_be3c7b1f.length < 1:
        revert with 'NH{q', 17
    if arg1 > sub_be3c7b1f.length - 1:
        revert with 0, 'ExplorerNFT: index out of bounds'
    if arg1 >= sub_be3c7b1f.length:
        revert with 'NH{q', 50
    return sub_be3c7b1f[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isBlack(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor15[address(arg1)]
}

function isWhite(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor17[address(arg1)]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor13[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if arg1 >= 3:
        revert with 0, 'ExplorerNFT: status is not allow'
    stor18 = arg1
    return 1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _addMinter is the zero address'
    if stor15[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _addMinter is the blacklist address'
    if stor13[address(arg1)]:
        return 0
    minter.length++
    minter[minter.length].field_0 = arg1
    minter[minter.length].field_160 = 0
    stor13[address(arg1)] = minter.length
    return 1
}

function sub_0d96a0f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if not stor15[address(arg1)]:
        return 0
    if stor15[address(arg1)] < 1:
        revert with 'NH{q', 17
    if stor14.length < 1:
        revert with 'NH{q', 17
    if stor14.length - 1 != stor15[address(arg1)] - 1:
        if stor14.length - 1 >= stor14.length:
            revert with 'NH{q', 50
        if stor15[address(arg1)] - 1 >= stor14.length:
            revert with 'NH{q', 50
        stor14[stor15[address(arg1)]].field_0 = stor14[stor14.length].field_0
        stor15[stor14[stor14.length].field_0] = stor15[address(arg1)]
    if not stor14.length:
        revert with 'NH{q', 49
    stor14[stor14.length].field_0 = 0
    stor14.length--
    stor15[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) payable {
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

function delMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _delMinter is the owner address'
    if not stor13[address(arg1)]:
        return 0
    if stor13[address(arg1)] < 1:
        revert with 'NH{q', 17
    if minter.length < 1:
        revert with 'NH{q', 17
    if minter.length - 1 != stor13[address(arg1)] - 1:
        if minter.length - 1 >= minter.length:
            revert with 'NH{q', 50
        if stor13[address(arg1)] - 1 >= minter.length:
            revert with 'NH{q', 50
        minter[stor13[address(arg1)]].field_0 = minter[minter.length].field_0
        stor13[stor12[stor12.length].field_0] = stor13[address(arg1)]
    if not minter.length:
        revert with 'NH{q', 49
    minter[minter.length].field_0 = 0
    minter.length--
    stor13[address(arg1)] = 0
    return 1
}

function sub_6c4ff1f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if address(arg1) == owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _delWhite is the owner address'
    if not stor17[address(arg1)]:
        return 0
    if stor17[address(arg1)] < 1:
        revert with 'NH{q', 17
    if sub_be3c7b1f.length < 1:
        revert with 'NH{q', 17
    if sub_be3c7b1f.length - 1 != stor17[address(arg1)] - 1:
        if sub_be3c7b1f.length - 1 >= sub_be3c7b1f.length:
            revert with 'NH{q', 50
        if stor17[address(arg1)] - 1 >= sub_be3c7b1f.length:
            revert with 'NH{q', 50
        sub_be3c7b1f[stor17[address(arg1)]].field_0 = sub_be3c7b1f[sub_be3c7b1f.length].field_0
        stor17[stor16[stor16.length].field_0] = stor17[address(arg1)]
    if not sub_be3c7b1f.length:
        revert with 'NH{q', 49
    sub_be3c7b1f[sub_be3c7b1f.length].field_0 = 0
    sub_be3c7b1f.length--
    stor17[address(arg1)] = 0
    return 1
}

function sub_16ba10e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function addWhite(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _addWhite is the zero address'
    if stor15[address(arg1)]:
        if not stor13[address(msg.sender)]:
            revert with 0, 'caller is not the minter'
        if stor15[address(arg1)]:
            if stor15[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor14.length < 1:
                revert with 'NH{q', 17
            if stor14.length - 1 != stor15[address(arg1)] - 1:
                if stor14.length - 1 >= stor14.length:
                    revert with 'NH{q', 50
                if stor15[address(arg1)] - 1 >= stor14.length:
                    revert with 'NH{q', 50
                stor14[stor15[address(arg1)]].field_0 = stor14[stor14.length].field_0
                stor15[stor14[stor14.length].field_0] = stor15[address(arg1)]
            if not stor14.length:
                revert with 'NH{q', 49
            stor14[stor14.length].field_0 = 0
            stor14.length--
            stor15[address(arg1)] = 0
    if stor17[address(arg1)]:
        return 0
    sub_be3c7b1f.length++
    sub_be3c7b1f[sub_be3c7b1f.length].field_0 = arg1
    sub_be3c7b1f[sub_be3c7b1f.length].field_160 = 0
    stor17[address(arg1)] = sub_be3c7b1f.length
    return 1
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: recipient is zero address'
    if not arg1:
        if eth.balance(this.address) < arg3:
            revert with 0, 'ExplorerNFT: amount over balance'
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_code.size(arg1) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _token is not contract address'
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg3:
            revert with 0, 'ExplorerNFT: amount over balance'
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addBlack(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if arg1 == owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _addBlack is the owner address'
    if stor17[address(arg1)]:
        if not stor13[address(msg.sender)]:
            revert with 0, 'caller is not the minter'
        if arg1 == owner:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _delWhite is the owner address'
        if stor17[address(arg1)]:
            if stor17[address(arg1)] < 1:
                revert with 'NH{q', 17
            if sub_be3c7b1f.length < 1:
                revert with 'NH{q', 17
            if sub_be3c7b1f.length - 1 != stor17[address(arg1)] - 1:
                if sub_be3c7b1f.length - 1 >= sub_be3c7b1f.length:
                    revert with 'NH{q', 50
                if stor17[address(arg1)] - 1 >= sub_be3c7b1f.length:
                    revert with 'NH{q', 50
                sub_be3c7b1f[stor17[address(arg1)]].field_0 = sub_be3c7b1f[sub_be3c7b1f.length].field_0
                stor17[stor16[stor16.length].field_0] = stor17[address(arg1)]
            if not sub_be3c7b1f.length:
                revert with 'NH{q', 49
            sub_be3c7b1f[sub_be3c7b1f.length].field_0 = 0
            sub_be3c7b1f.length--
            stor17[address(arg1)] = 0
    if stor13[address(arg1)]:
        if not stor13[address(msg.sender)]:
            revert with 0, 'caller is not the minter'
        if arg1 == owner:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ExplorerNFT: _delWhite is the owner address'
        if stor17[address(arg1)]:
            if stor17[address(arg1)] < 1:
                revert with 'NH{q', 17
            if sub_be3c7b1f.length < 1:
                revert with 'NH{q', 17
            if sub_be3c7b1f.length - 1 != stor17[address(arg1)] - 1:
                if sub_be3c7b1f.length - 1 >= sub_be3c7b1f.length:
                    revert with 'NH{q', 50
                if stor17[address(arg1)] - 1 >= sub_be3c7b1f.length:
                    revert with 'NH{q', 50
                sub_be3c7b1f[stor17[address(arg1)]].field_0 = sub_be3c7b1f[sub_be3c7b1f.length].field_0
                stor17[stor16[stor16.length].field_0] = stor17[address(arg1)]
            if not sub_be3c7b1f.length:
                revert with 'NH{q', 49
            sub_be3c7b1f[sub_be3c7b1f.length].field_0 = 0
            sub_be3c7b1f.length--
            stor17[address(arg1)] = 0
    if stor15[address(arg1)]:
        return 0
    stor14.length++
    stor14[stor14.length].field_0 = arg1
    stor14[stor14.length].field_160 = 0
    stor15[address(arg1)] = stor14.length
    return 1
}

function name() payable {
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

function symbol() payable {
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

function getBaseUri() payable {
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function sub_d1d64794(?) payable {
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
            mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if stor18 == 1:
        revert with 0, 'AXM: All transactions have been prohibited'
    if stor15[address(arg1)]:
        revert with 0, 'AXM: blacklist have been prohibited'
    if stor15[address(arg2)]:
        revert with 0, 'AXM: blacklist have been prohibited'
    if stor18 == 2:
        if not stor17[address(arg1)]:
            revert with 0, 'AXM: Only allow whitelist to initiate transactions '
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.0x150b7a02 with:
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if stor18 == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AXM: All transactions have been prohibited'
    if stor15[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AXM: blacklist have been prohibited'
    if stor15[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AXM: blacklist have been prohibited'
    if stor18 == 2:
        if not stor17[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'AXM: Only allow whitelist to initiate transactions '
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor13[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    if stor22[arg1]:
        if stor22[arg1] < 1:
            revert with 'NH{q', 17
        if stor21.length < 1:
            revert with 'NH{q', 17
        if stor21.length - 1 != stor22[arg1] - 1:
            if stor21.length - 1 >= stor21.length:
                revert with 'NH{q', 50
            if stor22[arg1] - 1 >= stor21.length:
                revert with 'NH{q', 50
            stor21[stor22[arg1]] = stor21[stor21.length]
            stor22[stor21[stor21.length]] = stor22[arg1]
        if not stor21.length:
            revert with 'NH{q', 49
        stor21[stor21.length] = 0
        stor21.length--
        stor22[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if stor8[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor8[stor7[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor8[arg1]
    stor8[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor10[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg1]
    stor10[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if stor6[arg1].field_0:
                if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1:
                    idx = 0
                    while stor6[arg1].field_1 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1:
                    idx = 0
                    while stor6[arg1].field_1 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_1:
            if stor6[arg1].field_0:
                if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1:
                    idx = 0
                    while stor6[arg1].field_1 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1:
                    idx = 0
                    while stor6[arg1].field_1 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if stor18 == 1:
        revert with 0, 'AXM: All transactions have been prohibited'
    if stor15[address(arg1)]:
        revert with 0, 'AXM: blacklist have been prohibited'
    if stor15[address(arg2)]:
        revert with 0, 'AXM: blacklist have been prohibited'
    if stor18 == 2:
        if not stor17[address(arg1)]:
            revert with 0, 'AXM: Only allow whitelist to initiate transactions '
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.0x150b7a02 with:
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



}
