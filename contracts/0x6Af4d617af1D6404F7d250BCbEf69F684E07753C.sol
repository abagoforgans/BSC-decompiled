contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of struct symbol;
array of struct stor8;
array of uint256 baseURI;
address owner;
mapping of uint8 stor11;
uint256 stor12;
mapping of struct stor13;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
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
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function isOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function sub_b9ce1e35(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Auth: addr can not be 0x0'
    stor11[address(arg1)] = 1
    emit AddAuth(arg1);
}

function removeAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Auth: addr can not be 0x0'
    stor11[address(arg1)] = 0
    emit 0x54cba8c8: arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2a751e42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor11[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_fef222e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[128] = stor13[arg1][1].field_0
    idx = 128
    s = 0
    while stor13[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor13[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor13[arg1].field_0, 
           Array(len=stor13[arg1][1].length, data=mem[128 len ceil32(stor13[arg1][1].length)]),
           stor13[arg1].field_512,
           stor13[arg1].field_768
}

function sub_bedfc018(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[384] = stor13[address(arg1)][1].field_0
    idx = 384
    s = 0
    while stor13[address(arg1)][1].length + 352 > idx:
        mem[idx + 32] = stor13[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, stor13[address(arg1)].field_0, 
           128,
           stor13[address(arg1)].field_512,
           stor13[address(arg1)].field_768,
           stor13[address(arg1)][1].length,
           mem[384 len ceil32(stor13[address(arg1)][1].length)]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function sub_d1194e2b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor11[address(msg.sender)]:
        revert with 0, 'Auth: caller is not the operator'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Recipient address cannot be zero!'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity cannot be less than zero!'
    stor12++
    mem[128] = uint256(symbol.field_0)
    idx = 128
    s = 0
    while symbol.length + 96 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor13[address(arg1)].field_0 = stor12
    stor13[address(arg1)][1][].field_0 = Array(len=symbol.length, data=mem[128 len symbol.length])
    stor13[address(arg1)].field_512 = address(arg1)
    stor13[address(arg1)].field_768 = arg2
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor12]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor12]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor12
        tokenOfOwnerByIndex[address(arg1)][1][stor12] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[stor12]:
        require stor3[stor12] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor12] - 1].field_256 = address(arg1)
        tokenByIndex[stor3[stor12] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor12
        tokenByIndex[tokenByIndex.length].field_256 = address(arg1)
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor12] = tokenByIndex.length
    emit Transfer(0, address(arg1), stor12);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[32] = 8
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var38001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length > 0:
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 160] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 160] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 192] = mem[ceil32(stor8[arg1].length) + 128]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 128]) > mem[ceil32(stor8[arg1].length) + 128]:
                mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + mem[ceil32(stor8[arg1].length) + 128] + 224] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
        if bool(baseURI.length) != 1:
            var42001 = ceil32(stor8[arg1].length)
            mem[64] = stor8[arg1].length
            if ceil32(stor8[arg1].length) <= stor8[arg1].length:
                _848 = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
                mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
                if ceil32(_848) > _848:
                    mem[stor8[arg1].length + _848 + 64] = 0
                return 32, mem[stor8[arg1].length + 32 len ceil32(_848) + 32]
            _862 = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 32] = mem[ceil32(stor8[arg1].length) + 128]
            mem[stor8[arg1].length + 64 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
            if ceil32(_862) > _862:
                mem[stor8[arg1].length + _862 + 64] = 0
            return 32, mem[stor8[arg1].length + 32 len ceil32(_862) + 32]
        idx = 0
        s = 0
        while idx < baseURI.length.field_1:
            mem[ceil32(stor8[arg1].length) + idx + 160] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 160 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        var49001 = ceil32(stor8[arg1].length)
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 160] = 32
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 192] = mem[ceil32(stor8[arg1].length) + 128]
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]
        if ceil32(mem[ceil32(stor8[arg1].length) + 128]) > mem[ceil32(stor8[arg1].length) + 128]:
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + mem[ceil32(stor8[arg1].length) + 128] + 224] = 0
        return Array(len=mem[ceil32(stor8[arg1].length) + 128], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 128])]), 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = '0'
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + 224] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = '0'
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 225] = 32
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor8[arg1].length) + 192]
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
                mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + mem[ceil32(stor8[arg1].length) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
        if bool(baseURI.length) != 1:
            mem[64] = 1
            _859 = mem[ceil32(stor8[arg1].length) + 192]
            mem[33] = mem[ceil32(stor8[arg1].length) + 192]
            mem[65 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
            if ceil32(_859) > _859:
                mem[_859 + 65] = 0
            return memory
              from mem[64]
               len ceil32(_859) + -mem[64] + 65
        idx = 0
        s = 0
        while idx < baseURI.length.field_1:
            mem[ceil32(stor8[arg1].length) + idx + 224] = baseURI[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 224] = '0'
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 225] = 32
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 257] = mem[ceil32(stor8[arg1].length) + 192]
        mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])] = mem[ceil32(stor8[arg1].length) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]
        if ceil32(mem[ceil32(stor8[arg1].length) + 192]) > mem[ceil32(stor8[arg1].length) + 192]:
            mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + mem[ceil32(stor8[arg1].length) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor8[arg1].length) + 192], data=mem[ceil32(stor8[arg1].length) + baseURI.length.field_1 + 289 len ceil32(mem[ceil32(stor8[arg1].length) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + 128] = s
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1618 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1618) > _1618:
                    mem[s + _1618 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1618) + 32]
            _1627 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1627) > _1627:
                mem[s + _1627 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1627) + 32]
    else:
        mem[ceil32(stor8[arg1].length) + 160 len s] = code.data[16933 len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if not bool(baseURI.length):
            mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = Mask(248, 8, baseURI.length)
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
                mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
        if bool(baseURI.length) != 1:
            mem[64] = s
            if ceil32(s) <= s:
                _1620 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
                mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
                if ceil32(_1620) > _1620:
                    mem[s + _1620 + 64] = 0
                return 32, mem[s + 32 len ceil32(_1620) + 32]
            _1630 = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 32] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
            mem[s + 64 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
            if ceil32(_1630) > _1630:
                mem[s + _1630 + 64] = 0
            return 32, mem[s + 32 len ceil32(_1630) + 32]
    ('eq', ('type', 1, ('stor', ('length', ('name', 'baseURI', 9)))), 1)
    idx = 0
    t = 0
    while idx < baseURI.length.field_1:
        mem[ceil32(stor8[arg1].length) + ceil32(s) + idx + 192] = baseURI[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + 192 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 192] = 32
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 224] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(s) + 160]:
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + mem[ceil32(stor8[arg1].length) + ceil32(s) + 160] + 256] = 0
    return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(s) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length.field_1 + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(s) + 160])]), 
}



}
