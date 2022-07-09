contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(uint256 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5, uint256[] arg6, string arg7)
#
address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 contractURI;
array of struct tokenURIPrefix;
mapping of struct stor8;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
array of uint256 name;
array of uint256 symbol;
array of struct fees;
mapping of uint8 stor16;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
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
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function fees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < fees[arg1].field_0
    return fees[arg1][arg2].field_0, fees[arg1][arg2].field_256
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

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor16[address(arg1)])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenURIPrefix() payable {
    return tokenURIPrefix[0 len tokenURIPrefix.length].field_0
}

function contractURI() payable {
    return contractURI[0 len contractURI.length]
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

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor16[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor16[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor16[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor16[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractURI[] = Array(len=arg1.length, data=arg1[all])
}

function setTokenURIPrefix(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenURIPrefix[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function removeSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor16[address(arg1)] = 0
    emit SignerRemoved(arg1);
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
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 15)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
            _47 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        mem[mem[64] + 64 len 32 * _59] = mem[_26 + 32 len 32 * _59]
        return 32, mem[mem[64] + 32 len (32 * _59) + 32]
    mem[_26 + 32 len 32 * _25] = code.data[14113 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    mem[mem[64] + 64 len 32 * _60] = mem[_26 + 32 len 32 * _60]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + tokenURIPrefix.length + 128 > idx:
        mem[idx + 32] = tokenURIPrefix[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if tokenURIPrefix.length + stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len tokenURIPrefix.length + stor8[arg1].length] = code.data[14113 len tokenURIPrefix.length + stor8[arg1].length]
    idx = 0
    s = 0
    while idx < tokenURIPrefix.length:
        require idx < tokenURIPrefix.length
        require s < tokenURIPrefix.length + stor8[arg1].length
        mem[s + ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = tokenURIPrefix.length
    while idx < stor8[arg1].length:
        require idx < stor8[arg1].length
        require s < tokenURIPrefix.length + stor8[arg1].length
        mem[s + ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=tokenURIPrefix.length + stor8[arg1].length, data=mem[ceil32(stor8[arg1].length) + ceil32(tokenURIPrefix.length) + 192 len floor32(tokenURIPrefix.length + stor8[arg1].length + 31)]), 
}

function getFeeRecipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * fees[arg1].field_0) + 128
    mem[96] = fees[arg1].field_0
    s = 128
    idx = 0
    while idx < fees[arg1].field_0:
        mem[0] = sha3(arg1, 15)
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = fees[arg1][idx].field_0
        mem[_28 + 32] = fees[arg1][idx].field_256
        mem[s] = _28
        s = s + 32
        idx = idx + 1
        continue 
    _25 = mem[96]
    _26 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _25) + 32
    if not _25:
        _47 = mem[96]
        idx = 0
        while idx < _47:
            require idx < mem[96]
            require idx < mem[_26]
            mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
            _47 = mem[96]
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[_26]
        mem[mem[64] + 32] = mem[_26]
        idx = 0
        s = _26 + 32
        t = mem[64] + 64
        while idx < _59:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _51 + (32 * _59) + -mem[64] + 64
    mem[_26 + 32 len 32 * _25] = code.data[14113 len 32 * _25]
    _48 = mem[96]
    idx = 0
    while idx < _48:
        require idx < mem[96]
        require idx < mem[_26]
        mem[(32 * idx) + _26 + 32] = mem[mem[(32 * idx) + 128] + 12 len 20]
        _48 = mem[96]
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[_26]
    mem[mem[64] + 32] = mem[_26]
    idx = 0
    s = _26 + 32
    t = mem[64] + 64
    while idx < _60:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _55 + (32 * _60) + -mem[64] + 64
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
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor10[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor10[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor10[stor9[address(arg1)][stor9[address(arg1)]]] = stor10[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
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
    if approved[arg3]:
        approved[arg3] = 0
    mem[ceil32(arg4.length) + 128] = 30
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor10[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor10[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor10[stor9[address(arg1)][stor9[address(arg1)]]] = stor10[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor10[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 452] = 0
            mem[(2 * ceil32(arg4.length)) + 452 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 452 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 616] = 0
            call arg2.mem[(2 * ceil32(arg4.length)) + 452 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 456 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length:
                        revert with arg4[all]
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 484] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 484])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
        if approved[arg1]:
            approved[arg1] = 0
        if 1 > balanceOf[stor2[arg1]]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        balanceOf[stor2[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
        if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]]--
            if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                    tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                    idx = idx + 1
                    continue 
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    var78001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
            require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
            tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
            stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
            tokenOfOwnerByIndex[stor2[arg1]]--
            if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                    tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                    idx = idx + 1
                    continue 
                stor10[arg1] = 0
                if 1 > tokenByIndex.length:
                    var81001 = 32
                    revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] == msg.sender:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
            if approved[arg1]:
                approved[arg1] = 0
            if 1 > balanceOf[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            balanceOf[stor2[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var84001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
                require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
                tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
                stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var87001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
        else:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: burn of token that is not own'
            if approved[arg1]:
                approved[arg1] = 0
            if 1 > balanceOf[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            balanceOf[stor2[arg1]]--
            ownerOf[arg1] = 0
            emit Transfer(ownerOf[arg1], 0, arg1);
            if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if tokenOfOwnerByIndex[stor2[arg1]] - 1 == stor10[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var86001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
            else:
                require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
                require stor10[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
                tokenOfOwnerByIndex[stor2[arg1]][stor10[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
                stor10[stor9[stor2[arg1]][stor9[stor2[arg1]]]] = stor10[arg1]
                tokenOfOwnerByIndex[stor2[arg1]]--
                if tokenOfOwnerByIndex[stor2[arg1]] <= tokenOfOwnerByIndex[stor2[arg1]] - 1:
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                else:
                    idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
                    while tokenOfOwnerByIndex[stor2[arg1]] > idx:
                        tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
                        idx = idx + 1
                        continue 
                    stor10[arg1] = 0
                    if 1 > tokenByIndex.length:
                        var89001 = 32
                        revert with 0, 'SafeMath: subtraction overflow', 0
    ('le', 1, ('stor', ('length', ('name', 'tokenByIndex', 11))))
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor12[arg1] < tokenByIndex.length
    tokenByIndex[stor12[arg1]] = tokenByIndex[tokenByIndex.length]
    stor12[stor11[stor11.length]] = stor12[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor12[arg1] = 0
    if Mask(255, 1, stor8[arg1].field_0 and (256 * not stor8[arg1].field_0) - 1):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
