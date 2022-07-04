contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address nftAddress;
address devWalletAddress;
address sub_c89806f9Address;
mapping of struct sub_4774a42d;
uint256 sub_c5f92704;
uint8 stor6;
address sub_4b7e68c2Address; offset 8
uint256 sub_293ca78f;

function devWalletAddress() {
    return devWalletAddress
}

function sub_13ea522d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_4774a42d[arg1].field_1792)
}

function sub_293ca78f(?) {
    return sub_293ca78f
}

function sub_321f5327(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4774a42d[arg1].field_0, 
           sub_4774a42d[arg1].field_256,
           sub_4774a42d[arg1].field_512,
           sub_4774a42d[arg1].field_768,
           sub_4774a42d[arg1].field_1024,
           sub_4774a42d[arg1].field_1280,
           sub_4774a42d[arg1].field_1536,
           bool(sub_4774a42d[arg1].field_1792)
}

function sub_4774a42d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4774a42d[arg1].field_256, 
           sub_4774a42d[arg1].field_512,
           sub_4774a42d[arg1].field_768,
           sub_4774a42d[arg1].field_1024,
           sub_4774a42d[arg1].field_1280,
           sub_4774a42d[arg1].field_1536
}

function sub_48029778(?) {
    return bool(stor6)
}

function sub_4b7e68c2(?) {
    return sub_4b7e68c2Address
}

function nftAddress() {
    return nftAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_c5f92704(?) {
    return sub_c5f92704
}

function sub_c89806f9(?) {
    return sub_c89806f9Address
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    nftAddress = arg1
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    devWalletAddress = arg1
}

function sub_72236565(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_c89806f9Address = address(arg1)
}

function sub_87b07624(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(sub_4774a42d[arg1].field_1792) != 1:
        return 0
    return sub_4774a42d[arg1].field_768
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_80b2315d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == arg3
    require msg.sender == owner
    sub_4b7e68c2Address = address(arg1)
    stor6 = uint8(bool(arg2))
    sub_293ca78f = arg3
}

function sub_8aab4274(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != 1:
        if arg2 != 2:
            return 0
    else:
        if arg2 != 2:
            return sub_4774a42d[arg1].field_256
    ('eq', ('param', 'arg2'), 2)
    return sub_4774a42d[arg1].field_512
}

function sub_d662bc09(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(nftAddress)
    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), devWalletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4774a42d[arg1].field_1792 = 0
}

function sub_89876e04(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require msg.sender == owner
    require arg1 > 0
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args devWalletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a02e5107(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(sub_4774a42d[arg1].field_1792) != 1:
        if not msg.sender:
            require ext_code.size(nftAddress)
            if bool(sub_4774a42d[arg1].field_1792) != 1:
                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), 0, arg1
            else:
                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), sub_4774a42d[arg1].field_768, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_4774a42d[arg1].field_1792 = 0
    else:
        if msg.sender == sub_4774a42d[arg1].field_768:
            require ext_code.size(nftAddress)
            if bool(sub_4774a42d[arg1].field_1792) != 1:
                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), 0, arg1
            else:
                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), sub_4774a42d[arg1].field_768, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_4774a42d[arg1].field_1792 = 0
}

function sub_6b3eb340(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require ext_code.size(nftAddress)
    staticcall nftAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        sub_4774a42d[arg1].field_0 = arg1
        sub_4774a42d[arg1].field_256 = arg2
        sub_4774a42d[arg1].field_512 = arg3
        sub_4774a42d[arg1].field_768 = msg.sender
        sub_4774a42d[arg1].field_1024 = arg4
        sub_4774a42d[arg1].field_1280 = arg5
        sub_4774a42d[arg1].field_1536 = arg6
        sub_4774a42d[arg1].field_1792 = 1
    else:
        if bool(sub_4774a42d[arg1].field_1792) != 1:
            if 0 == msg.sender:
                sub_4774a42d[arg1].field_0 = arg1
                sub_4774a42d[arg1].field_256 = arg2
                sub_4774a42d[arg1].field_512 = arg3
                sub_4774a42d[arg1].field_768 = msg.sender
                sub_4774a42d[arg1].field_1024 = arg4
                sub_4774a42d[arg1].field_1280 = arg5
                sub_4774a42d[arg1].field_1536 = arg6
                sub_4774a42d[arg1].field_1792 = 1
        else:
            if sub_4774a42d[arg1].field_768 == msg.sender:
                sub_4774a42d[arg1].field_0 = arg1
                sub_4774a42d[arg1].field_256 = arg2
                sub_4774a42d[arg1].field_512 = arg3
                sub_4774a42d[arg1].field_768 = msg.sender
                sub_4774a42d[arg1].field_1024 = arg4
                sub_4774a42d[arg1].field_1280 = arg5
                sub_4774a42d[arg1].field_1536 = arg6
                sub_4774a42d[arg1].field_1792 = 1
}

function sub_aa528c18(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not uint8(stor0.field_160)
    if arg1 >= sub_4774a42d[arg2].field_512:
        if sub_c5f92704 and 3 > -1 / sub_c5f92704:
            revert with 'NH{q', 17
        if 3 * sub_c5f92704 > -sub_4774a42d[arg2].field_1024 - 1:
            revert with 'NH{q', 17
        if (3 * sub_c5f92704) + sub_4774a42d[arg2].field_1024 > -sub_4774a42d[arg2].field_1280 - 1:
            revert with 'NH{q', 17
        if (3 * sub_c5f92704) + sub_4774a42d[arg2].field_1024 + sub_4774a42d[arg2].field_1280 > -sub_4774a42d[arg2].field_1536 - 1:
            revert with 'NH{q', 17
        if arg1 and 15 > -1 / arg1:
            revert with 'NH{q', 17
        if arg1 > -(15 * arg1 / 100) - 1:
            revert with 'NH{q', 17
        require ext_code.size(sub_c89806f9Address)
        call sub_c89806f9Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 + (15 * arg1 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_c5f92704 > -sub_4774a42d[arg2].field_1280 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg2].field_1280 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 and sub_c5f92704 + sub_4774a42d[arg2].field_1280 > -1 / arg1:
            revert with 'NH{q', 17
        if sub_c5f92704 > -sub_4774a42d[arg2].field_1024 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg2].field_1024 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 and sub_c5f92704 + sub_4774a42d[arg2].field_1024 > -1 / arg1:
            revert with 'NH{q', 17
        if sub_c5f92704 > -sub_4774a42d[arg2].field_1536 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg2].field_1536 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 and sub_c5f92704 + sub_4774a42d[arg2].field_1536 > -1 / arg1:
            revert with 'NH{q', 17
        if arg1 and (3 * sub_c5f92704) + sub_4774a42d[arg2].field_1024 + sub_4774a42d[arg2].field_1280 + sub_4774a42d[arg2].field_1536 > -1 / arg1:
            revert with 'NH{q', 17
        if arg1 < (3 * sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1024 * arg1) + (sub_4774a42d[arg2].field_1280 * arg1) + (sub_4774a42d[arg2].field_1536 * arg1) / 100:
            revert with 'NH{q', 17
        require ext_code.size(nftAddress)
        staticcall nftAddress.getAuthorAddres(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_c89806f9Address)
        if bool(sub_4774a42d[arg2].field_1792) != 1:
            call sub_c89806f9Address.0xa9059cbb with:
                 gas gas_remaining wei
                args 0, arg1 - ((3 * sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1024 * arg1) + (sub_4774a42d[arg2].field_1280 * arg1) + (sub_4774a42d[arg2].field_1536 * arg1) / 100)
        else:
            call sub_c89806f9Address.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_4774a42d[arg2].field_768, arg1 - ((3 * sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1024 * arg1) + (sub_4774a42d[arg2].field_1280 * arg1) + (sub_4774a42d[arg2].field_1536 * arg1) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_c89806f9Address)
        call sub_c89806f9Address.0xa9059cbb with:
             gas gas_remaining wei
            args devWalletAddress, (sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1280 * arg1) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_c89806f9Address)
        call sub_c89806f9Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), (sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1024 * arg1) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(nftAddress)
        call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_c89806f9Address)
        call sub_c89806f9Address.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, (sub_c5f92704 * arg1) + (sub_4774a42d[arg2].field_1536 * arg1) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if bool(stor6) == 1:
            if arg1 and sub_293ca78f > -1 / arg1:
                revert with 'NH{q', 17
            require ext_code.size(sub_4b7e68c2Address)
            staticcall sub_4b7e68c2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= arg1 * sub_293ca78f / 100:
                require ext_code.size(sub_4b7e68c2Address)
                call sub_4b7e68c2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_293ca78f / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_4774a42d[arg2].field_1792 = 0
}

function purchaseToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor0.field_160)
    require msg.sender
    require this.address != msg.sender
    if sub_c5f92704 and 3 > -1 / sub_c5f92704:
        revert with 'NH{q', 17
    if 3 * sub_c5f92704 > -sub_4774a42d[arg1].field_1024 - 1:
        revert with 'NH{q', 17
    if (3 * sub_c5f92704) + sub_4774a42d[arg1].field_1024 > -sub_4774a42d[arg1].field_1280 - 1:
        revert with 'NH{q', 17
    if (3 * sub_c5f92704) + sub_4774a42d[arg1].field_1024 + sub_4774a42d[arg1].field_1280 > -sub_4774a42d[arg1].field_1536 - 1:
        revert with 'NH{q', 17
    if msg.value >= sub_4774a42d[arg1].field_256:
        mem[100] = arg1
        require ext_code.size(nftAddress)
        staticcall nftAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[0] = arg1
        mem[32] = 4
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(nftAddress)
        staticcall nftAddress.getAuthorAddres(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(nftAddress)
        call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_c5f92704 > -sub_4774a42d[arg1].field_1536 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg1].field_1536 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value and sub_c5f92704 + sub_4774a42d[arg1].field_1536 > -1 / msg.value:
            revert with 'NH{q', 17
        if sub_c5f92704 > -sub_4774a42d[arg1].field_1280 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg1].field_1280 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value and sub_c5f92704 + sub_4774a42d[arg1].field_1280 > -1 / msg.value:
            revert with 'NH{q', 17
        if sub_c5f92704 > -sub_4774a42d[arg1].field_1024 - 1:
            revert with 'NH{q', 17
        if sub_c5f92704 + sub_4774a42d[arg1].field_1024 < sub_c5f92704:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value and sub_c5f92704 + sub_4774a42d[arg1].field_1024 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value and (3 * sub_c5f92704) + sub_4774a42d[arg1].field_1024 + sub_4774a42d[arg1].field_1280 + sub_4774a42d[arg1].field_1536 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value < (3 * sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1024 * msg.value) + (sub_4774a42d[arg1].field_1280 * msg.value) + (sub_4774a42d[arg1].field_1536 * msg.value) / 100:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[(2 * ceil32(return_data.size)) + 160] = 0xde619a9e0eeeaa9f8cd39522ed788234837f3b26
        if block.timestamp > -26:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 0
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if bool(sub_4774a42d[arg1].field_1792) == 1:
            mem[(2 * ceil32(return_data.size)) + 260] = sub_4774a42d[arg1].field_768
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - ((3 * sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1024 * msg.value) + (sub_4774a42d[arg1].field_1280 * msg.value) + (sub_4774a42d[arg1].field_1536 * msg.value) / 100) wei
                 gas gas_remaining wei
                args 0, 128, sub_4774a42d[arg1].field_768, block.timestamp + 25, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _105 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _107 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _105 + (32 * _107) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _105 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _107:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if block.timestamp > -26:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            _159 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 164
            while idx < _159:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = 57005
            mem[mem[64] + 100] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value (sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1536 * msg.value) / 100 wei
                 gas gas_remaining wei
                args 0, 128, 57005, block.timestamp + 25, mem[mem[64] + 132 len (32 * _159) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _205 = mem[_203]
            require mem[_203] <= test266151307()
            require _203 + mem[_203] + 31 < _203 + return_data.size
            _207 = mem[_203 + mem[_203]]
            if mem[_203 + mem[_203]] > test266151307():
                revert with 'NH{q', 65
            if _203 + ceil32(return_data.size) + floor32(mem[_203 + mem[_203]]) + 1 > test266151307() or floor32(mem[_203 + mem[_203]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _203 + ceil32(return_data.size) + floor32(mem[_203 + mem[_203]]) + 1
            mem[_203 + ceil32(return_data.size)] = _207
            require _205 + (32 * _207) + 32 <= return_data.size
            idx = 0
            s = _203 + _205 + 32
            t = _203 + ceil32(return_data.size) + 32
            while idx < _207:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if block.timestamp > -26:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            _241 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 164
            while idx < _241:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = address(ext_call.return_data[0])
            mem[mem[64] + 100] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value (sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1024 * msg.value) / 100 wei
                 gas gas_remaining wei
                args 0, 128, address(ext_call.return_data[0]), block.timestamp + 25, mem[mem[64] + 132 len (32 * _241) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _269 = mem[_267]
            require mem[_267] <= test266151307()
            require _267 + mem[_267] + 31 < _267 + return_data.size
            _271 = mem[_267 + mem[_267]]
            if mem[_267 + mem[_267]] > test266151307():
                revert with 'NH{q', 65
            if _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1 > test266151307() or floor32(mem[_267 + mem[_267]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1
            mem[_267 + ceil32(return_data.size)] = _271
            require _269 + (32 * _271) + 32 <= return_data.size
            idx = 0
            s = _267 + _269 + 32
            t = _267 + ceil32(return_data.size) + 32
            while idx < _271:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = 0
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - ((3 * sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1024 * msg.value) + (sub_4774a42d[arg1].field_1280 * msg.value) + (sub_4774a42d[arg1].field_1536 * msg.value) / 100) wei
                 gas gas_remaining wei
                args 0, 128, 0, block.timestamp + 25, 2, mem[(2 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _104 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _106 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _104 + (32 * _106) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _104 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _106:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if block.timestamp > -26:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            _158 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 164
            while idx < _158:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = 57005
            mem[mem[64] + 100] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value (sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1536 * msg.value) / 100 wei
                 gas gas_remaining wei
                args 0, 128, 57005, block.timestamp + 25, mem[mem[64] + 132 len (32 * _158) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _204 = mem[_202]
            require mem[_202] <= test266151307()
            require _202 + mem[_202] + 31 < _202 + return_data.size
            _206 = mem[_202 + mem[_202]]
            if mem[_202 + mem[_202]] > test266151307():
                revert with 'NH{q', 65
            if _202 + ceil32(return_data.size) + floor32(mem[_202 + mem[_202]]) + 1 > test266151307() or floor32(mem[_202 + mem[_202]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _202 + ceil32(return_data.size) + floor32(mem[_202 + mem[_202]]) + 1
            mem[_202 + ceil32(return_data.size)] = _206
            require _204 + (32 * _206) + 32 <= return_data.size
            idx = 0
            s = _202 + _204 + 32
            t = _202 + ceil32(return_data.size) + 32
            while idx < _206:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if block.timestamp > -26:
                revert with 'NH{q', 17
            _238 = mem[64]
            mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            _240 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 132] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 164
            while idx < _240:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_238 + 68] = address(ext_call.return_data[0])
            mem[_238 + 100] = block.timestamp + 25
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.mem[mem[64] len 4] with:
               value (sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1024 * msg.value) / 100 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _238 + (32 * _240) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_266]
            require mem[_266] <= test266151307()
            require _266 + mem[_266] + 31 < _266 + return_data.size
            _270 = mem[_266 + mem[_266]]
            if mem[_266 + mem[_266]] > test266151307():
                revert with 'NH{q', 65
            if _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1 > test266151307() or floor32(mem[_266 + mem[_266]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1
            mem[_266 + ceil32(return_data.size)] = _270
            require _268 + (32 * _270) + 32 <= return_data.size
            idx = 0
            s = _266 + _268 + 32
            t = _266 + ceil32(return_data.size) + 32
            while idx < _270:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        call devWalletAddress with:
           value (sub_c5f92704 * msg.value) + (sub_4774a42d[arg1].field_1280 * msg.value) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_4774a42d[arg1].field_1792 = 0
}



}
