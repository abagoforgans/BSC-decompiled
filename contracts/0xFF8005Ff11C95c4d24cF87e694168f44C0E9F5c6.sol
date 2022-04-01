contract main {




// =====================  Runtime code  =====================


uint32 stor51;
address owner;
uint256 stor51;
address stor52;
mapping of struct pendingClaimable;
uint256 sub_0b74eb73;
uint8 isRevoked;

function pendingClaimable(address arg1) payable {
    require calldata.size - 4 >= 32
    return pendingClaimable[address(arg1)].field_768
}

function sub_0b74eb73(?) payable {
    return sub_0b74eb73
}

function sub_19f91d41(?) payable {
    require calldata.size - 4 >= 32
    return pendingClaimable[address(arg1)].field_256
}

function isRevoked() payable {
    return bool(isRevoked)
}

function owner() payable {
    return address(owner)
}

function totalClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return pendingClaimable[address(arg1)].field_512
}

function _fallback() payable {
    revert
}

function sub_b791230c(?) payable {
    require calldata.size - 4 >= 32
    return 0
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (address(owner) == arg1)
}

function sub_b3041174(?) payable {
    require calldata.size - 4 >= 32
    require address(owner) == msg.sender
    stor52 = arg1
    return 1
}

function renounceOwnership() payable {
    require address(owner) == msg.sender
    emit OwnershipTransferred(0, address(owner));
    address(owner) = 0
}

function getContractBalance() payable {
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function userTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require address(owner) == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function revoke() payable {
    require address(owner) == msg.sender
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor52):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(stor52):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0 len 28]
    call stor52 with:
       funct uint32(stor51)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor51):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    isRevoked = 1
    emit 0x4c75afbe: ext_call.return_data[0]
}

function sub_d035c8bc(?) payable {
    require calldata.size - 4 >= 64
    require address(owner) == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[205 len 23]
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), this.address, Mask(224, 32, arg2) >> 32
    call stor52 with:
       funct uint32(this.address)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor51):
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 != 0:
        revert with 0, 'UNFI: Amount did not match'
    if arg2 + pendingClaimable[address(arg1)].field_768 < pendingClaimable[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    pendingClaimable[address(arg1)].field_768 += arg2
    pendingClaimable[address(arg1)].field_256 = 0
    emit 0x396280f9: address(arg1), 0, arg2
}

function claim() payable {
    if pendingClaimable[address(msg.sender)].field_768 <= 0:
        revert with 0, 'TokenVesting: no tokens are due'
    pendingClaimable[msg.sender].field_768 = 0
    if pendingClaimable[address(msg.sender)].field_768 + pendingClaimable[msg.sender].field_512 < pendingClaimable[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    pendingClaimable[msg.sender].field_512 += pendingClaimable[address(msg.sender)].field_768
    if block.number > pendingClaimable[msg.sender].field_256:
        pendingClaimable[msg.sender].field_256 = 0
        pendingClaimable[msg.sender].field_0 = 0
    if pendingClaimable[address(msg.sender)].field_768 + sub_0b74eb73 < sub_0b74eb73:
        revert with 0, 'SafeMath: addition overflow'
    sub_0b74eb73 += pendingClaimable[address(msg.sender)].field_768
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, pendingClaimable[address(msg.sender)].field_800
    call stor52 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args pendingClaimable[address(msg.sender)].field_768, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if pendingClaimable[address(msg.sender)].field_768 != 0:
        revert with 0, 'UNFI: Amount did not match'
    emit TokensReleased(msg.sender, pendingClaimable[address(msg.sender)].field_768);
    return pendingClaimable[address(msg.sender)].field_768
}

function sub_049666c0(?) payable {
    require calldata.size - 4 >= 64
    require address(owner) == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[205 len 23]
    if arg2 >= pendingClaimable[address(arg1)].field_768:
        if pendingClaimable[address(arg1)].field_768 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), this.address, Mask(224, 32, arg2 - pendingClaimable[address(arg1)].field_768) >> 32
        call stor52 with:
           funct uint32(this.address)
             gas gas_remaining wei
            args Mask(224, 32, arg2 - pendingClaimable[address(arg1)].field_768) << 480, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 - pendingClaimable[address(arg1)].field_768 != 0:
            revert with 0, 'UNFI: Amount did not match'
    else:
        if arg2 > pendingClaimable[address(arg1)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, pendingClaimable[address(arg1)].field_768 - arg2) >> 32
        call stor52 with:
           funct uint32(stor51)
             gas gas_remaining wei
            args Mask(224, 32, pendingClaimable[address(arg1)].field_768 - arg2) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if pendingClaimable[address(arg1)].field_768 - arg2 != 0:
            revert with 0, 'UNFI: Amount did not match'
    pendingClaimable[address(arg1)].field_768 = arg2
}

function sub_739f722b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require address(owner) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _120 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _122 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require address(owner) == msg.sender
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        41,
                        0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[mem[64] + 109 len 23]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _129 = mem[64]
        mem[mem[64] + 36] = address(owner)
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = _122
        _130 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_130 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_130 + 36 len 28]
        _133 = mem[_130]
        t = _130 + 32
        u = _129 + 132
        s = mem[_130]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_129 + floor32(mem[_130]) + 132] = mem[_130 + -(mem[_130] % 32) + floor32(mem[_130]) + 64 len mem[_130] % 32] or Mask(8 * -(mem[_130] % 32) + 32, -(8 * -(mem[_130] % 32) + 32) + 256, mem[_129 + floor32(mem[_130]) + 132])
        call stor52.mem[_129 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_129 + 136 len _133 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _129 + 196
            mem[_129 + 132] = 30
            mem[_129 + 164] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[_129 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_129 + 200] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _129 + 264] = mem[idx + _129 + 164]
                    idx = idx + 32
                    continue 
                mem[_129 + 264] = mem[_129 + 266 len 30]
                revert with 0, 32, 30, mem[_129 + 264]
            if _122 != 0:
                revert with 0, 'UNFI: Amount did not match'
            if _122 + pendingClaimable[address(_120)].field_768 < pendingClaimable[address(_120)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(_120)
            mem[32] = 53
            pendingClaimable[address(_120)].field_768 += _122
            pendingClaimable[address(_120)].field_256 = 0
            mem[_129 + 196] = address(_120)
            mem[_129 + 228] = 0
            mem[_129 + 260] = _122
        else:
            mem[_129 + 132] = return_data.size
            mem[_129 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_129 + 164]:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _129 + ceil32(return_data.size) + 197
            mem[_129 + ceil32(return_data.size) + 133] = 30
            mem[_129 + ceil32(return_data.size) + 165] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                mem[_129 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_129 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _129 + ceil32(return_data.size) + 265] = mem[idx + _129 + ceil32(return_data.size) + 165]
                    idx = idx + 32
                    continue 
                mem[_129 + ceil32(return_data.size) + 265] = mem[_129 + ceil32(return_data.size) + 267 len 30]
                revert with 0, 32, 30, mem[_129 + ceil32(return_data.size) + 265]
            if _122 != 0:
                revert with 0, 'UNFI: Amount did not match'
            if _122 + pendingClaimable[address(_120)].field_768 < pendingClaimable[address(_120)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(_120)
            mem[32] = 53
            pendingClaimable[address(_120)].field_768 += _122
            pendingClaimable[address(_120)].field_256 = 0
            mem[_129 + ceil32(return_data.size) + 197] = address(_120)
            mem[_129 + ceil32(return_data.size) + 229] = 0
            mem[_129 + ceil32(return_data.size) + 261] = _122
        emit 0x396280f9: address(_120), 0, _122
        idx = idx + 1
        continue 
}



}
