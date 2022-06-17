contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
uint256 maxPerWallet;
mapping of uint256 sub_29a98e15;
uint256 sub_eff769dd;
uint256 boxPrice;
array of struct nftTokens;

function sub_29a98e15(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_29a98e15[arg1]
}

function maxPerWallet() payable {
    return maxPerWallet
}

function owner() payable {
    return owner
}

function boxPrice() payable {
    return boxPrice
}

function nftTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < nftTokens.length
    return nftTokens[arg1].field_0, nftTokens[arg1].field_256, nftTokens[arg1].field_512
}

function sub_eff769dd(?) payable {
    return sub_eff769dd
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

function setMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPerWallet = arg1
}

function setRandomProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
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

function withdrawToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_19223891(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= nftTokens.length:
        revert with 'NH{q', 50
    if arg1 > nftTokens[arg2].field_512:
        revert with 0, 'Not enough fighters left.'
    if arg2 >= nftTokens.length:
        revert with 'NH{q', 50
    if nftTokens[arg2].field_512 < arg1:
        revert with 'NH{q', 17
    nftTokens[arg2].field_512 -= arg1
    if sub_29a98e15[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_29a98e15[address(msg.sender)] += arg1
    mem[32] = 5
    if sub_29a98e15[address(msg.sender)] > maxPerWallet:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet reached the maximum amount'
    if arg2 >= nftTokens.length:
        revert with 'NH{q', 50
    mem[0] = 8
    if nftTokens[arg2].field_0 and arg1 > -1 / nftTokens[arg2].field_0:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < nftTokens[arg2].field_0 * arg1:
        revert with 0, 'Not enough token!'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = nftTokens[arg2].field_0 * arg1
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), nftTokens[arg2].field_0 * arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg1:
        if arg2 >= nftTokens.length:
            revert with 'NH{q', 50
        mem[0] = 8
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = nftTokens[arg2].field_256
        call stor1.safeMint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, nftTokens[arg2].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_32] == mem[_32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0x4734f847: arg1, arg2
}

function buyBox(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > sub_eff769dd:
        revert with 0, 'Not enough fighters left.'
    if sub_eff769dd < arg1:
        revert with 'NH{q', 17
    sub_eff769dd -= arg1
    if sub_29a98e15[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_29a98e15[address(msg.sender)] += arg1
    mem[0] = msg.sender
    mem[32] = 5
    if sub_29a98e15[address(msg.sender)] > maxPerWallet:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet reached the maximum amount'
    if boxPrice and arg1 > -1 / boxPrice:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < boxPrice * arg1:
        revert with 0, 'Not enough token!'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = boxPrice * arg1
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), boxPrice * arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    s = 0
    while idx < arg1:
        mem[mem[64] + 4] = 1000
        call stor3.getRandom(uint256 arg1) with:
             gas gas_remaining wei
            args 1000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        mem[mem[64] + 4] = msg.sender
        if mem[_71] < 600:
            mem[mem[64] + 36] = 1
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _86 = mem[_82]
            require mem[_82] == mem[_82]
            mem[mem[64]] = mem[_82]
            mem[mem[64] + 32] = 1
            emit 0x2259fe1e: mem[mem[64]], 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 1
            s = _86
            continue 
        if mem[_71] < 800:
            mem[mem[64] + 36] = 2
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _89 = mem[_84]
            require mem[_84] == mem[_84]
            mem[mem[64]] = mem[_84]
            mem[mem[64] + 32] = 2
            emit 0x2259fe1e: mem[mem[64]], 2
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 2
            s = _89
            continue 
        if mem[_71] < 910:
            mem[mem[64] + 36] = 3
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _92 = mem[_87]
            require mem[_87] == mem[_87]
            mem[mem[64]] = mem[_87]
            mem[mem[64] + 32] = 3
            emit 0x2259fe1e: mem[mem[64]], 3
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 3
            s = _92
            continue 
        if mem[_71] < 966:
            mem[mem[64] + 36] = 4
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_90]
            require mem[_90] == mem[_90]
            mem[mem[64]] = mem[_90]
            mem[mem[64] + 32] = 4
            emit 0x2259fe1e: mem[mem[64]], 4
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 4
            s = _95
            continue 
        if mem[_71] < 981:
            mem[mem[64] + 36] = 5
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 5
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _100 = mem[_93]
            require mem[_93] == mem[_93]
            mem[mem[64]] = mem[_93]
            mem[mem[64] + 32] = 5
            emit 0x2259fe1e: mem[mem[64]], 5
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 5
            s = _100
            continue 
        if mem[_71] < 990:
            mem[mem[64] + 36] = 6
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 6
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _104 = mem[_96]
            require mem[_96] == mem[_96]
            mem[mem[64]] = mem[_96]
            mem[mem[64] + 32] = 6
            emit 0x2259fe1e: mem[mem[64]], 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 6
            s = _104
            continue 
        if mem[_71] >= 997:
            mem[mem[64] + 36] = 8
            call stor1.safeMint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 8
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _106 = mem[_101]
            require mem[_101] == mem[_101]
            mem[mem[64]] = mem[_101]
            mem[mem[64] + 32] = 8
            emit 0x2259fe1e: mem[mem[64]], 8
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 8
            s = _106
            continue 
        mem[mem[64] + 36] = 7
        call stor1.safeMint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 7
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_102]
        require mem[_102] == mem[_102]
        mem[mem[64]] = mem[_102]
        mem[mem[64] + 32] = 7
        emit 0x2259fe1e: mem[mem[64]], 7
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 7
        s = _107
        continue 
}



}
