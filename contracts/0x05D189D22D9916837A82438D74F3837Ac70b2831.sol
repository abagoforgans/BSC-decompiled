contract main {




// =====================  Runtime code  =====================


#
#  - buyToken(uint256 arg1)
#  - getAsksByPage(uint256 arg1, uint256 arg2)
#
uint8 stor0; offset 160
address owner;
uint256 MAX_TRADABLE_TOKEN_ID;
address nftAddress;
address quoteErc20Address;
array of struct stor4;
mapping of uint256 stor5;
mapping of address stor6;
array of uint256 stor7;

function quoteErc20() payable {
    return quoteErc20Address
}

function nft() payable {
    return nftAddress
}

function paused() payable {
    return bool(stor0)
}

function MAX_TRADABLE_TOKEN_ID() payable {
    return MAX_TRADABLE_TOKEN_ID
}

function getAskLength() payable {
    return stor4.length
}

function owner() payable {
    return owner
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function updateMaxTradableTokenId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateMaxTradableTokenId(arg1, MAX_TRADABLE_TOKEN_ID);
    MAX_TRADABLE_TOKEN_ID = arg1
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

function setCurrentPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor7[msg.sender][1][arg1]:
        revert with 0, 'Only Seller can update price'
    if arg2 <= 0:
        revert with 0, 'Price must be granter than zero'
    if stor5[arg1]:
        require stor5[arg1] - 1 < stor4.length
        stor4[stor5[arg1] - 1].field_256 = arg2
    else:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_256 = arg2
        stor5[arg1] = stor4.length
    emit Ask(arg2, msg.sender, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function readyToSellToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(nftAddress)
    staticcall nftAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only Token Owner can sell token'
    if arg2 <= 0:
        revert with 0, 'Price must be granter than zero'
    if arg1 > MAX_TRADABLE_TOKEN_ID:
        revert with 0, 'TokenId must be less than MAX_TRADABLE_TOKEN_ID'
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1]:
        require stor5[arg1] - 1 < stor4.length
        stor4[stor5[arg1] - 1].field_256 = arg2
    else:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_256 = arg2
        stor5[arg1] = stor4.length
    uint256(stor6[arg1]) = msg.sender or Mask(96, 160, uint256(stor6[arg1]))
    if not stor7[msg.sender][1][arg1]:
        stor7[msg.sender]++
        stor7[msg.sender][stor7[msg.sender]] = arg1
        stor7[msg.sender][1][arg1] = stor7[msg.sender]
    emit Ask(arg2, msg.sender, arg1);
}

function cancelSellToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor7[msg.sender][1][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Seller can cancel sell token'
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1]:
        require stor4.length - 1 < stor4.length
        require stor5[arg1] - 1 < stor4.length
        stor4[stor5[arg1] - 1].field_0 = stor4[stor4.length - 1].field_0
        stor4[stor5[arg1] - 1].field_256 = stor4[stor4.length - 1].field_256
        stor5[stor4[stor4.length - 1].field_0] = stor5[arg1]
        require stor4.length
        stor4[stor4.length - 1].field_0 = 0
        stor4[stor4.length - 1].field_256 = 0
        stor4.length--
        stor5[arg1] = 0
    if stor7[address(stor6[arg1])][1][arg1]:
        require stor7[address(stor6[arg1])] - 1 < stor7[address(stor6[arg1])]
        require stor7[address(stor6[arg1])][1][arg1] - 1 < stor7[address(stor6[arg1])]
        stor7[address(stor6[arg1])][stor7[address(stor6[arg1])][1][arg1]] = stor7[address(stor6[arg1])][stor7[address(stor6[arg1])]]
        stor7[address(stor6[arg1])][1][stor7[address(stor6[arg1])][stor7[address(stor6[arg1])]]] = stor7[address(stor6[arg1])][1][arg1]
        require stor7[address(stor6[arg1])]
        stor7[address(stor6[arg1])][stor7[address(stor6[arg1])]] = 0
        stor7[address(stor6[arg1])]--
        stor7[address(stor6[arg1])][1][arg1] = 0
    address(stor6[arg1]) = 0
    emit CancelSellToken(msg.sender, arg1);
}

function getAsks() payable {
    require stor4.length <= test266151307()
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if stor4.length:
        mem[64] = (32 * stor4.length) + 192
        mem[(32 * stor4.length) + 128] = 0
        mem[(32 * stor4.length) + 160] = 0
        mem[var12001] = (32 * stor4.length) + 128
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor4.length) + 128] = 0
            mem[(32 * stor4.length) + 160] = 0
            mem[s + 32] = (32 * stor4.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var37002 < stor4.length:
            if var43001 >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            require var45003 < stor4.length
            mem[mem[64]] = var51002
            require var51005 < mem[96]
            # nil
        else:
            _144 = mem[64]
            mem[mem[64]] = 32
            _146 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _146:
                _170 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_170 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _144 + (64 * _146) + -mem[64] + 64
    else:
        if var30002 >= stor4.length:
            mem[(32 * stor4.length) + 128] = 32
            mem[(32 * stor4.length) + 160] = stor4.length
            idx = 0
            s = 128
            t = (32 * stor4.length) + 192
            while idx < mem[96]:
                _119 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_119 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor4.length) + -mem[64] + 192
        if var36001 >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        require var38003 < stor4.length
        mem[0] = 4
        mem[64] = (32 * stor4.length) + 192
        mem[(32 * stor4.length) + 128] = var44002
        mem[(32 * stor4.length) + 160] = var44001
        require var44005 < stor4.length
        mem[(32 * var46001) + 128] = var46003
        if var56002 < stor4.length:
            # nil
        else:
            mem[(32 * stor4.length) + 192] = 32
            mem[(32 * stor4.length) + 224] = stor4.length
            idx = 0
            s = 128
            t = (32 * stor4.length) + 256
            while idx < mem[96]:
                _391 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_391 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor4.length) + -mem[64] + 256
}

function getAsksByUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    require stor7[address(arg1)] <= test266151307()
    mem[96] = stor7[address(arg1)]
    mem[64] = (32 * stor7[address(arg1)]) + 128
    if not stor7[address(arg1)]:
        mem[0] = arg1
        mem[32] = 7
        if var44002 >= var44001:
            mem[(32 * stor7[address(arg1)]) + 128] = 32
            mem[(32 * stor7[address(arg1)]) + 160] = stor7[address(arg1)]
            idx = 0
            s = 128
            t = (32 * stor7[address(arg1)]) + 192
            while idx < mem[96]:
                _267 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_267 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor7[address(arg1)]) + -mem[64] + 192
        if var50001 >= stor[var50002]:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var52002 < stor[var52003]
        mem[64] = (32 * stor7[address(arg1)]) + 192
        mem[(32 * stor7[address(arg1)]) + 128] = 30
        mem[(32 * stor7[address(arg1)]) + 160] = 'EnumerableMap: nonexistent key'
        mem[0] = var64002
        mem[32] = 5
        if stor5[var64002]:
            require var66002 - 1 < stor4.length
            # nil
        else:
            mem[(32 * stor7[address(arg1)]) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * stor7[address(arg1)]) + 196] = 32
            _671 = mem[var64001]
            mem[(32 * stor7[address(arg1)]) + 228] = mem[var64001]
            mem[(32 * stor7[address(arg1)]) + 260 len ceil32(_671)] = mem[var64001 + 32 len ceil32(_671)]
            if ceil32(_671) > _671:
                mem[_671 + (32 * stor7[address(arg1)]) + 260] = 0
            revert with 0, 32, mem[(32 * stor7[address(arg1)]) + 228 len ceil32(_671) + 32]
    else:
        mem[64] = (32 * stor7[address(arg1)]) + 192
        mem[(32 * stor7[address(arg1)]) + 128] = 0
        mem[(32 * stor7[address(arg1)]) + 160] = 0
        mem[var18001] = (32 * stor7[address(arg1)]) + 128
        s = var18001
        idx = var18002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor7[address(arg1)]) + 128] = 0
            mem[(32 * stor7[address(arg1)]) + 160] = 0
            mem[s + 32] = (32 * stor7[address(arg1)]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        mem[0] = arg1
        mem[32] = 7
        if var51002 >= var51001:
            _315 = mem[64]
            mem[mem[64]] = 32
            _317 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _317:
                _363 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_363 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _315 + (64 * _317) + -mem[64] + 64
        mem[32] = 7
        if var57001 >= stor[var57002]:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var59002 < stor[var59003]
        mem[0] = var61002
        _715 = mem[64]
        mem[64] = mem[64] + 64
        mem[_715] = 30
        mem[_715 + 32] = 'EnumerableMap: nonexistent key'
        mem[0] = var71002
        mem[32] = 5
        if stor5[var71002]:
            require var73002 - 1 < stor4.length
            # nil
        else:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _765 = mem[var71001]
            mem[mem[64] + 36] = mem[var71001]
            mem[mem[64] + 68 len ceil32(_765)] = mem[var71001 + 32 len ceil32(_765)]
            if ceil32(_765) > _765:
                mem[_765 + mem[64] + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_765) + 32]
}

function getAsksDesc() payable {
    require stor4.length <= test266151307()
    mem[96] = stor4.length
    mem[64] = (32 * stor4.length) + 128
    if not stor4.length:
        if stor4.length <= 0:
            mem[(32 * stor4.length) + 128] = 32
            mem[(32 * stor4.length) + 160] = stor4.length
            idx = 0
            s = 128
            t = (32 * stor4.length) + 192
            while idx < mem[96]:
                _47 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_47 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor4.length) + -mem[64] + 192
        idx = stor4.length - 1
        while idx:
            if idx >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _59 = mem[64]
            mem[64] = mem[64] + 64
            mem[_59] = stor4[idx].field_0
            mem[_59 + 32] = stor4[idx].field_256
            require stor4.length + -idx - 1 < mem[96]
            mem[(32 * stor4.length + -idx - 1) + 128] = _59
            idx = idx - 1
            continue 
        if 0 >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _58 = mem[64]
        mem[64] = mem[64] + 64
        mem[_58] = uint256(stor4.field_0)
        mem[_58 + 32] = uint256(stor4.field_256)
        require stor4.length - 1 < mem[96]
        mem[(32 * stor4.length - 1) + 128] = _58
        _64 = mem[64]
        mem[mem[64]] = 32
        _68 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _68:
            _91 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_91 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _64 + (64 * _68) + -mem[64] + 64
    mem[64] = (32 * stor4.length) + 192
    mem[(32 * stor4.length) + 128] = 0
    mem[(32 * stor4.length) + 160] = 0
    mem[var12001] = (32 * stor4.length) + 128
    s = var12001
    idx = var12002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor4.length) + 128] = 0
        mem[(32 * stor4.length) + 160] = 0
        mem[s + 32] = (32 * stor4.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if stor4.length <= 0:
        _95 = mem[64]
        mem[mem[64]] = 32
        _96 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _96:
            _117 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_117 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _95 + (64 * _96) + -mem[64] + 64
    idx = stor4.length - 1
    while idx:
        if idx >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = stor4[idx].field_0
        mem[_128 + 32] = stor4[idx].field_256
        require stor4.length + -idx - 1 < mem[96]
        mem[(32 * stor4.length + -idx - 1) + 128] = _128
        idx = idx - 1
        continue 
    if 0 >= stor4.length:
        revert with 0, 'EnumerableMap: index out of bounds'
    mem[0] = 4
    _127 = mem[64]
    mem[64] = mem[64] + 64
    mem[_127] = uint256(stor4.field_0)
    mem[_127 + 32] = uint256(stor4.field_256)
    require stor4.length - 1 < mem[96]
    mem[(32 * stor4.length - 1) + 128] = _127
    _131 = mem[64]
    mem[mem[64]] = 32
    _132 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _132:
        _137 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_137 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _131 + (64 * _132) + -mem[64] + 64
}

function getAsksByUserDesc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    require stor7[address(arg1)] <= test266151307()
    mem[96] = stor7[address(arg1)]
    mem[64] = (32 * stor7[address(arg1)]) + 128
    if not stor7[address(arg1)]:
        mem[0] = arg1
        mem[32] = 7
        if stor7[address(arg1)] <= 0:
            mem[(32 * stor7[address(arg1)]) + 128] = 32
            mem[(32 * stor7[address(arg1)]) + 160] = stor7[address(arg1)]
            idx = 0
            s = 128
            t = (32 * stor7[address(arg1)]) + 192
            while idx < mem[96]:
                _92 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_92 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * stor7[address(arg1)]) + -mem[64] + 192
        mem[0] = arg1
        mem[32] = 7
        idx = stor[sha3(mem[0 len 64])] - 1
        while idx:
            mem[32] = 7
            if idx >= stor7[address(arg1)]:
                revert with 0, 'EnumerableSet: index out of bounds'
            mem[0] = sha3(address(arg1), 7)
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 30
            mem[_107 + 32] = 'EnumerableMap: nonexistent key'
            mem[32] = 5
            if not stor5[stor7[address(arg1)][idx]]:
                _113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _113 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                mem[_113 + 98] = 0
                revert with memory
                  from mem[64]
                   len _113 + -mem[64] + 100
            require stor5[stor7[address(arg1)][idx]] - 1 < stor4.length
            mem[0] = 4
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = stor7[address(arg1)][idx]
            mem[_126 + 32] = stor4[stor5[stor7[address(arg1)][idx]] - 1].field_256
            mem[0] = arg1
            mem[32] = 7
            require stor7[address(arg1)] + -idx - 1 < mem[96]
            mem[(32 * stor7[address(arg1)] + -idx - 1) + 128] = _126
            idx = idx - 1
            continue 
        mem[32] = 7
        if 0 >= stor7[address(arg1)]:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(address(arg1), 7)
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = 30
        mem[_106 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 5
        if not stor5[stor7[address(arg1)]]:
            revert with 0, 'EnumerableMap: nonexistent key', 0
        require stor5[stor7[address(arg1)]] - 1 < stor4.length
        mem[0] = 4
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = stor7[address(arg1)]
        mem[_123 + 32] = stor4[stor5[stor7[address(arg1)]] - 1].field_256
        mem[0] = arg1
        mem[32] = 7
        require stor7[address(arg1)] - 1 < mem[96]
        mem[(32 * stor7[address(arg1)] - 1) + 128] = _123
        _143 = mem[64]
        mem[mem[64]] = 32
        _144 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _144:
            _178 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_178 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _143 + (64 * _144) + -mem[64] + 64
    mem[64] = (32 * stor7[address(arg1)]) + 192
    mem[(32 * stor7[address(arg1)]) + 128] = 0
    mem[(32 * stor7[address(arg1)]) + 160] = 0
    mem[var18001] = (32 * stor7[address(arg1)]) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * stor7[address(arg1)]) + 128] = 0
        mem[(32 * stor7[address(arg1)]) + 160] = 0
        mem[s + 32] = (32 * stor7[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 7
    if stor7[address(arg1)] <= 0:
        _190 = mem[64]
        mem[mem[64]] = 32
        _191 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _191:
            _232 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_232 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _190 + (64 * _191) + -mem[64] + 64
    mem[0] = arg1
    mem[32] = 7
    idx = stor[sha3(mem[0 len 64])] - 1
    while idx:
        mem[32] = 7
        if idx >= stor7[address(arg1)]:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(address(arg1), 7)
        _245 = mem[64]
        mem[64] = mem[64] + 64
        mem[_245] = 30
        mem[_245 + 32] = 'EnumerableMap: nonexistent key'
        mem[32] = 5
        if not stor5[stor7[address(arg1)][idx]]:
            _249 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _249 + 68] = mem[idx + _245 + 32]
                idx = idx + 32
                continue 
            mem[_249 + 98] = 0
            revert with memory
              from mem[64]
               len _249 + -mem[64] + 100
        require stor5[stor7[address(arg1)][idx]] - 1 < stor4.length
        mem[0] = 4
        _257 = mem[64]
        mem[64] = mem[64] + 64
        mem[_257] = stor7[address(arg1)][idx]
        mem[_257 + 32] = stor4[stor5[stor7[address(arg1)][idx]] - 1].field_256
        mem[0] = arg1
        mem[32] = 7
        require stor7[address(arg1)] + -idx - 1 < mem[96]
        mem[(32 * stor7[address(arg1)] + -idx - 1) + 128] = _257
        idx = idx - 1
        continue 
    mem[32] = 7
    if 0 >= stor7[address(arg1)]:
        revert with 0, 'EnumerableSet: index out of bounds'
    mem[0] = sha3(address(arg1), 7)
    _244 = mem[64]
    mem[64] = mem[64] + 64
    mem[_244] = 30
    mem[_244 + 32] = 'EnumerableMap: nonexistent key'
    mem[32] = 5
    if not stor5[stor7[address(arg1)]]:
        revert with 0, 'EnumerableMap: nonexistent key', 0
    require stor5[stor7[address(arg1)]] - 1 < stor4.length
    mem[0] = 4
    _254 = mem[64]
    mem[64] = mem[64] + 64
    mem[_254] = stor7[address(arg1)]
    mem[_254 + 32] = stor4[stor5[stor7[address(arg1)]] - 1].field_256
    mem[0] = arg1
    mem[32] = 7
    require stor7[address(arg1)] - 1 < mem[96]
    mem[(32 * stor7[address(arg1)] - 1) + 128] = _254
    _266 = mem[64]
    mem[mem[64]] = 32
    _267 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _267:
        _272 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_272 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _266 + (64 * _267) + -mem[64] + 64
}

function getAsksByPageDesc(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4.length <= 0:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _188 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_188 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    if not arg1:
        if arg2 >= stor4.length:
            require stor4.length <= test266151307()
            mem[96] = stor4.length
            mem[64] = (32 * stor4.length) + 128
            if not stor4.length:
                s = 0
                idx = stor4.length - 1
                while idx > 0:
                    if idx >= stor4.length:
                        revert with 0, 'EnumerableMap: index out of bounds'
                    mem[0] = 4
                    _241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_241] = stor4[idx].field_0
                    mem[_241 + 32] = stor4[idx].field_256
                    require s < mem[96]
                    mem[(32 * s) + 128] = _241
                    s = s + 1
                    idx = idx - 1
                    continue 
                if 0 >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = uint256(stor4.field_0)
                mem[_239 + 32] = uint256(stor4.field_256)
                require stor4.length - 1 < mem[96]
                mem[(32 * stor4.length - 1) + 128] = _239
                _275 = mem[64]
                mem[mem[64]] = 32
                _290 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _290:
                    _378 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_378 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _275 + (64 * _290) + -mem[64] + 64
            mem[64] = (32 * stor4.length) + 192
            mem[(32 * stor4.length) + 128] = 0
            mem[(32 * stor4.length) + 160] = 0
            mem[var36001] = (32 * stor4.length) + 128
            s = var36001
            idx = var36002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[(32 * stor4.length) + 128] = 0
                mem[(32 * stor4.length) + 160] = 0
                mem[s + 32] = (32 * stor4.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            s = 0
            idx = stor4.length - 1
            while idx > 0:
                if idx >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = stor4[idx].field_0
                mem[_527 + 32] = stor4[idx].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _527
                s = s + 1
                idx = idx - 1
                continue 
            if 0 >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = uint256(stor4.field_0)
            mem[_525 + 32] = uint256(stor4.field_256)
            require stor4.length - 1 < mem[96]
            mem[(32 * stor4.length - 1) + 128] = _525
            _545 = mem[64]
            mem[mem[64]] = 32
            _549 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _549:
                _574 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_574 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _545 + (64 * _549) + -mem[64] + 64
        require arg2 <= test266151307()
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            if stor4.length - arg2:
                s = 0
                idx = stor4.length - 1
                while idx >= stor4.length - arg2:
                    if idx >= stor4.length:
                        revert with 0, 'EnumerableMap: index out of bounds'
                    mem[0] = 4
                    _233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_233] = stor4[idx].field_0
                    mem[_233 + 32] = stor4[idx].field_256
                    require s < mem[96]
                    mem[(32 * s) + 128] = _233
                    s = s + 1
                    idx = idx - 1
                    continue 
                _196 = mem[64]
                mem[mem[64]] = 32
                _208 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                while idx < _208:
                    _372 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_372 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _196 + (64 * _208) + -mem[64] + 64
            s = 0
            idx = stor4.length - 1
            while idx > stor4.length - arg2:
                if idx >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _237 = mem[64]
                mem[64] = mem[64] + 64
                mem[_237] = stor4[idx].field_0
                mem[_237 + 32] = stor4[idx].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _237
                s = s + 1
                idx = idx - 1
                continue 
            if 0 >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_235] = uint256(stor4.field_0)
            mem[_235 + 32] = uint256(stor4.field_256)
            require arg2 - 1 < mem[96]
            mem[(32 * arg2 - 1) + 128] = _235
            _270 = mem[64]
            mem[mem[64]] = 32
            _286 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _286:
                _375 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_375 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _270 + (64 * _286) + -mem[64] + 64
        mem[64] = (32 * arg2) + 192
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[var35001] = (32 * arg2) + 128
        s = var35001
        idx = var35002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if stor4.length - arg2:
            s = 0
            idx = stor4.length - 1
            while idx >= stor4.length - arg2:
                if idx >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_519] = stor4[idx].field_0
                mem[_519 + 32] = stor4[idx].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _519
                s = s + 1
                idx = idx - 1
                continue 
            _482 = mem[64]
            mem[mem[64]] = 32
            _494 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _494:
                _568 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_568 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _482 + (64 * _494) + -mem[64] + 64
        s = 0
        idx = stor4.length - 1
        while idx > stor4.length - arg2:
            if idx >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _523 = mem[64]
            mem[64] = mem[64] + 64
            mem[_523] = stor4[idx].field_0
            mem[_523 + 32] = stor4[idx].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _523
            s = s + 1
            idx = idx - 1
            continue 
        if 0 >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _521 = mem[64]
        mem[64] = mem[64] + 64
        mem[_521] = uint256(stor4.field_0)
        mem[_521 + 32] = uint256(stor4.field_256)
        require arg2 - 1 < mem[96]
        mem[(32 * arg2 - 1) + 128] = _521
        _544 = mem[64]
        mem[mem[64]] = 32
        _548 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _548:
            _571 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_571 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _544 + (64 * _548) + -mem[64] + 64
    if arg1 * arg2 >= stor4.length:
        require stor4.length + arg2 - (arg1 * arg2) <= test266151307()
        mem[96] = stor4.length + arg2 - (arg1 * arg2)
        mem[64] = (32 * stor4.length + arg2 - (arg1 * arg2)) + 128
        if not stor4.length + arg2 - (arg1 * arg2):
            s = 0
            idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
            while idx > 0:
                if idx >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_254] = stor4[idx].field_0
                mem[_254 + 32] = stor4[idx].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _254
                s = s + 1
                idx = idx - 1
                continue 
            if 0 >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_252] = uint256(stor4.field_0)
            mem[_252 + 32] = uint256(stor4.field_256)
            require stor4.length + arg2 + (-1 * arg1 * arg2) - 1 < mem[96]
            mem[(32 * stor4.length + arg2 + (-1 * arg1 * arg2) - 1) + 128] = _252
            _283 = mem[64]
            mem[mem[64]] = 32
            _297 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _297:
                _387 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_387 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _283 + (64 * _297) + -mem[64] + 64
        mem[64] = (32 * stor4.length + arg2 - (arg1 * arg2)) + 192
        mem[(32 * stor4.length + arg2 - (arg1 * arg2)) + 128] = 0
        mem[(32 * stor4.length + arg2 - (arg1 * arg2)) + 160] = 0
        mem[var36001] = (32 * stor4.length + arg2 - (arg1 * arg2)) + 128
        s = var36001
        idx = var36002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor4.length + arg2 - (arg1 * arg2)) + 128] = 0
            mem[(32 * stor4.length + arg2 - (arg1 * arg2)) + 160] = 0
            mem[s + 32] = (32 * stor4.length + arg2 - (arg1 * arg2)) + 128
            s = s + 32
            idx = idx - 1
            continue 
        s = 0
        idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx > 0:
            if idx >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _540 = mem[64]
            mem[64] = mem[64] + 64
            mem[_540] = stor4[idx].field_0
            mem[_540 + 32] = stor4[idx].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _540
            s = s + 1
            idx = idx - 1
            continue 
        if 0 >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _538 = mem[64]
        mem[64] = mem[64] + 64
        mem[_538] = uint256(stor4.field_0)
        mem[_538 + 32] = uint256(stor4.field_256)
        require stor4.length + arg2 + (-1 * arg1 * arg2) - 1 < mem[96]
        mem[(32 * stor4.length + arg2 + (-1 * arg1 * arg2) - 1) + 128] = _538
        _547 = mem[64]
        mem[mem[64]] = 32
        _551 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _551:
            _583 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_583 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _547 + (64 * _551) + -mem[64] + 64
    require arg2 - (arg1 * arg2) + (arg1 * arg2) <= test266151307()
    mem[96] = arg2 - (arg1 * arg2) + (arg1 * arg2)
    mem[64] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
    if not arg2 - (arg1 * arg2) + (arg1 * arg2):
        if stor4.length - (arg1 * arg2):
            s = 0
            idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
            while idx >= stor4.length - (arg1 * arg2):
                if idx >= stor4.length:
                    revert with 0, 'EnumerableMap: index out of bounds'
                mem[0] = 4
                _246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_246] = stor4[idx].field_0
                mem[_246 + 32] = stor4[idx].field_256
                require s < mem[96]
                mem[(32 * s) + 128] = _246
                s = s + 1
                idx = idx - 1
                continue 
            _202 = mem[64]
            mem[mem[64]] = 32
            _214 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _214:
                _381 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_381 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _202 + (64 * _214) + -mem[64] + 64
        s = 0
        idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx > stor4.length - (arg1 * arg2):
            if idx >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = stor4[idx].field_0
            mem[_250 + 32] = stor4[idx].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _250
            s = s + 1
            idx = idx - 1
            continue 
        if 0 >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _248 = mem[64]
        mem[64] = mem[64] + 64
        mem[_248] = uint256(stor4.field_0)
        mem[_248 + 32] = uint256(stor4.field_256)
        require arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1 < mem[96]
        mem[(32 * arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1) + 128] = _248
        _278 = mem[64]
        mem[mem[64]] = 32
        _293 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _293:
            _384 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_384 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _278 + (64 * _293) + -mem[64] + 64
    mem[64] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 192
    mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128] = 0
    mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 160] = 0
    mem[var35001] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
    s = var35001
    idx = var35002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128] = 0
        mem[(32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 160] = 0
        mem[s + 32] = (32 * arg2 - (arg1 * arg2) + (arg1 * arg2)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if stor4.length - (arg1 * arg2):
        s = 0
        idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
        while idx >= stor4.length - (arg1 * arg2):
            if idx >= stor4.length:
                revert with 0, 'EnumerableMap: index out of bounds'
            mem[0] = 4
            _532 = mem[64]
            mem[64] = mem[64] + 64
            mem[_532] = stor4[idx].field_0
            mem[_532 + 32] = stor4[idx].field_256
            require s < mem[96]
            mem[(32 * s) + 128] = _532
            s = s + 1
            idx = idx - 1
            continue 
        _488 = mem[64]
        mem[mem[64]] = 32
        _500 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _500:
            _577 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_577 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _488 + (64 * _500) + -mem[64] + 64
    s = 0
    idx = stor4.length + arg2 + (-1 * arg1 * arg2) - 1
    while idx > stor4.length - (arg1 * arg2):
        if idx >= stor4.length:
            revert with 0, 'EnumerableMap: index out of bounds'
        mem[0] = 4
        _536 = mem[64]
        mem[64] = mem[64] + 64
        mem[_536] = stor4[idx].field_0
        mem[_536 + 32] = stor4[idx].field_256
        require s < mem[96]
        mem[(32 * s) + 128] = _536
        s = s + 1
        idx = idx - 1
        continue 
    if 0 >= stor4.length:
        revert with 0, 'EnumerableMap: index out of bounds'
    mem[0] = 4
    _534 = mem[64]
    mem[64] = mem[64] + 64
    mem[_534] = uint256(stor4.field_0)
    mem[_534 + 32] = uint256(stor4.field_256)
    require arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1 < mem[96]
    mem[(32 * arg2 + (-1 * arg1 * arg2) + (arg1 * arg2) - 1) + 128] = _534
    _546 = mem[64]
    mem[mem[64]] = 32
    _550 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _550:
        _580 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_580 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _546 + (64 * _550) + -mem[64] + 64
}



}
