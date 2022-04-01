contract main {




// =====================  Runtime code  =====================


uint32 stor51;
address owner;
uint256 stor51;
address stor52;
mapping of struct sub_19f91d41;
uint256 sub_0b74eb73;
uint8 isRevoked;

function sub_0b74eb73(?) payable {
    return sub_0b74eb73
}

function sub_19f91d41(?) payable {
    require calldata.size - 4 >= 32
    return sub_19f91d41[address(arg1)].field_256
}

function isRevoked() payable {
    return bool(isRevoked)
}

function owner() payable {
    return address(owner)
}

function totalClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_19f91d41[address(arg1)].field_512
}

function _fallback() payable {
    revert
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

function sub_b791230c(?) payable {
    require calldata.size - 4 >= 32
    if block.number >= sub_19f91d41[address(arg1)].field_256:
        return 0
    return sub_19f91d41[address(arg1)].field_0
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
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function pendingClaimable(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_19f91d41[address(arg1)].field_768:
        if block.number <= sub_19f91d41[address(arg1)].field_256:
            return 0
        if sub_19f91d41[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_19f91d41[address(arg1)].field_0
    if sub_19f91d41[address(arg1)].field_768 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_19f91d41[address(arg1)].field_256:
        return sub_19f91d41[address(arg1)].field_768
    if sub_19f91d41[address(arg1)].field_0 + sub_19f91d41[address(arg1)].field_768 < sub_19f91d41[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_19f91d41[address(arg1)].field_0 + sub_19f91d41[address(arg1)].field_768)
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
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    isRevoked = 1
    emit 0x4c75afbe: ext_call.return_data[0]
}

function sub_77448adf(?) payable {
    require calldata.size - 4 >= 96
    require address(owner) == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[205 len 23]
    if arg2 <= 0:
        revert with 0, 'TokenVesting: BlockNumber is 0'
    if sub_19f91d41[address(arg1)].field_0:
        if sub_19f91d41[address(arg1)].field_256:
            if block.number <= sub_19f91d41[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            64,
                            0xfe546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206e6f74206f76657220706c6561736520706572666f726d207570646174
            if sub_19f91d41[address(arg1)].field_0 + sub_19f91d41[address(arg1)].field_768 < sub_19f91d41[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            sub_19f91d41[address(arg1)].field_768 += sub_19f91d41[address(arg1)].field_0
    sub_19f91d41[address(arg1)].field_0 = arg3
    sub_19f91d41[address(arg1)].field_256 = arg2
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), this.address, Mask(224, 32, arg3) >> 32
    call stor52 with:
       funct uint32(this.address)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
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
    if arg3 != 0:
        revert with 0, 'UNFI: Amount did not match'
    emit 0xb84ffa31: address(arg1), arg2, arg3
}

function sub_562e3ea1(?) payable {
    require calldata.size - 4 >= 96
    require address(owner) == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[205 len 23]
    if arg2 <= 0:
        revert with 0, 'TokenVesting: BlockNumber is 0'
    if block.number >= sub_19f91d41[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x73546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206f76657220706c6561736520706572666f726d206372656174,
                    mem[224 len 4]
    if arg3 >= sub_19f91d41[address(arg1)].field_0:
        if sub_19f91d41[address(arg1)].field_0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), this.address, Mask(224, 32, arg3 - sub_19f91d41[address(arg1)].field_0) >> 32
        call stor52 with:
           funct uint32(this.address)
             gas gas_remaining wei
            args Mask(224, 32, arg3 - sub_19f91d41[address(arg1)].field_0) << 480, mem[388 len 4]
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
        if arg3 - sub_19f91d41[address(arg1)].field_0 != 0:
            revert with 0, 'UNFI: Amount did not match'
    else:
        if arg3 > sub_19f91d41[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_19f91d41[address(arg1)].field_0 - arg3) >> 32
        call stor52 with:
           funct uint32(stor51)
             gas gas_remaining wei
            args Mask(224, 32, sub_19f91d41[address(arg1)].field_0 - arg3) << 224, mem[324 len 4]
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
        if sub_19f91d41[address(arg1)].field_0 - arg3 != 0:
            revert with 0, 'UNFI: Amount did not match'
    sub_19f91d41[address(arg1)].field_0 = arg3
    sub_19f91d41[address(arg1)].field_256 = arg2
    emit 0x396280f9: address(arg1), arg2, arg3
}

function claim() payable {
    if not sub_19f91d41[address(msg.sender)].field_768:
        if block.number <= sub_19f91d41[address(msg.sender)].field_256:
            revert with 0, 'TokenVesting: no tokens are due'
        if sub_19f91d41[address(msg.sender)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if sub_19f91d41[address(msg.sender)].field_0 <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        sub_19f91d41[msg.sender].field_768 = 0
        if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[msg.sender].field_512 < sub_19f91d41[msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_19f91d41[msg.sender].field_512 += sub_19f91d41[address(msg.sender)].field_0
        if block.number > sub_19f91d41[msg.sender].field_256:
            sub_19f91d41[msg.sender].field_256 = 0
            sub_19f91d41[msg.sender].field_0 = 0
        if sub_19f91d41[address(msg.sender)].field_0 + sub_0b74eb73 < sub_0b74eb73:
            revert with 0, 'SafeMath: addition overflow'
        sub_0b74eb73 += sub_19f91d41[address(msg.sender)].field_0
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, sub_19f91d41[address(msg.sender)].field_32)
        call stor52 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, sub_19f91d41[address(msg.sender)].field_0), mem[260 len 4]
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
        if sub_19f91d41[address(msg.sender)].field_0 != 0:
            revert with 0, 'UNFI: Amount did not match'
        emit TokensReleased(msg.sender, sub_19f91d41[address(msg.sender)].field_0);
        return sub_19f91d41[address(msg.sender)].field_0
    if sub_19f91d41[address(msg.sender)].field_768 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= sub_19f91d41[address(msg.sender)].field_256:
        if sub_19f91d41[address(msg.sender)].field_768 <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        sub_19f91d41[msg.sender].field_768 = 0
        if sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[msg.sender].field_512 < sub_19f91d41[msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_19f91d41[msg.sender].field_512 += sub_19f91d41[address(msg.sender)].field_768
        if block.number > sub_19f91d41[msg.sender].field_256:
            sub_19f91d41[msg.sender].field_256 = 0
            sub_19f91d41[msg.sender].field_0 = 0
        if sub_19f91d41[address(msg.sender)].field_768 + sub_0b74eb73 < sub_0b74eb73:
            revert with 0, 'SafeMath: addition overflow'
        sub_0b74eb73 += sub_19f91d41[address(msg.sender)].field_768
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, sub_19f91d41[address(msg.sender)].field_800)
        call stor52 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, sub_19f91d41[address(msg.sender)].field_768), mem[260 len 4]
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
        if sub_19f91d41[address(msg.sender)].field_768 != 0:
            revert with 0, 'UNFI: Amount did not match'
        emit TokensReleased(msg.sender, sub_19f91d41[address(msg.sender)].field_768);
        return sub_19f91d41[address(msg.sender)].field_768
    if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 < sub_19f91d41[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 <= 0:
        revert with 0, 'TokenVesting: no tokens are due'
    sub_19f91d41[msg.sender].field_768 = 0
    if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[msg.sender].field_512 < sub_19f91d41[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    sub_19f91d41[msg.sender].field_512 = sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[msg.sender].field_512
    if block.number > sub_19f91d41[msg.sender].field_256:
        sub_19f91d41[msg.sender].field_256 = 0
        sub_19f91d41[msg.sender].field_0 = 0
    if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 + sub_0b74eb73 < sub_0b74eb73:
        revert with 0, 'SafeMath: addition overflow'
    sub_0b74eb73 = sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 + sub_0b74eb73
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768) >> 32
    call stor52 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768) << 224, mem[260 len 4]
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
    if sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768 != 0:
        revert with 0, 'UNFI: Amount did not match'
    emit TokensReleased(msg.sender, sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768);
    return (sub_19f91d41[address(msg.sender)].field_0 + sub_19f91d41[address(msg.sender)].field_768)
}

function sub_3d58dae4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require address(owner) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _231 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _233 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _235 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require address(owner) == msg.sender
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        41,
                        0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[mem[64] + 109 len 23]
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'TokenVesting: BlockNumber is 0'
        if block.number >= sub_19f91d41[mem[(32 * idx) + 140 len 20]].field_256:
            revert with 0, 
                        32,
                        60,
                        0x73546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206f76657220706c6561736520706572666f726d206372656174,
                        mem[mem[64] + 128 len 4]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 53
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] < sub_19f91d41[address(mem[(32 * idx) + 128])].field_0:
            _245 = sha3(address(mem[(32 * idx) + 128]), 53)
            _247 = mem[64]
            mem[64] = mem[64] + 64
            mem[_247] = 30
            mem[_247 + 32] = 'SafeMath: subtraction overflow'
            if _235 > stor[_245]:
                _251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _251 + 68] = mem[idx + _247 + 32]
                    idx = idx + 32
                    continue 
                mem[_251 + 68] = mem[_251 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _275 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = stor[_245] - _235
            _276 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_276 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_276 + 36 len 28]
            _279 = mem[_276]
            t = _276 + 32
            u = mem[64]
            s = mem[_276]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_276])] = mem[_276 + floor32(mem[_276]) + -(mem[_276] % 32) + 64 len mem[_276] % 32] or Mask(8 * -(mem[_276] % 32) + 32, -(8 * -(mem[_276] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_276])])
            call stor52.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _279 + _275 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not mem[96]:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_528] = 30
                    mem[_528 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _544 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _544 + 68] = mem[idx + _528 + 32]
                            idx = idx + 32
                            continue 
                        mem[_544 + 68] = mem[_544 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _544 + -mem[64] + 100
                else:
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
                    _547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_547] = 30
                    mem[_547 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _561 + 68] = mem[idx + _547 + 32]
                            idx = idx + 32
                            continue 
                        mem[_561 + 68] = mem[_561 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _561 + -mem[64] + 100
            else:
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_467] = return_data.size
                mem[_467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not return_data.size:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _530 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_530] = 30
                    mem[_530 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _548 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _548 + 68] = mem[idx + _530 + 32]
                            idx = idx + 32
                            continue 
                        mem[_548 + 68] = mem[_548 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _548 + -mem[64] + 100
                else:
                    require return_data.size >= 32
                    if not mem[_467 + 32]:
                        revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_551] = 30
                    mem[_551 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _565 + 68] = mem[idx + _551 + 32]
                            idx = idx + 32
                            continue 
                        mem[_565 + 68] = mem[_565 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _565 + -mem[64] + 100
            ('le', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            if stor[_245] - _235 != 0:
                revert with 0, 'UNFI: Amount did not match'
        else:
            _244 = sha3(address(mem[(32 * idx) + 128]), 53)
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 30
            mem[_246 + 32] = 'SafeMath: subtraction overflow'
            if stor[_244] > _235:
                _248 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _248 + 68] = mem[idx + _246 + 32]
                    idx = idx + 32
                    continue 
                mem[_248 + 68] = mem[_248 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _248 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _269 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _235 - stor[_244]
            _270 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_270 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_270 + 36 len 28]
            _273 = mem[_270]
            t = _270 + 32
            u = mem[64]
            s = mem[_270]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_270])] = mem[_270 + floor32(mem[_270]) + -(mem[_270] % 32) + 64 len mem[_270] % 32] or Mask(8 * -(mem[_270] % 32) + 32, -(8 * -(mem[_270] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_270])])
            call stor52.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _273 + _269 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not mem[96]:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_524] = 30
                    mem[_524 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _536 + 68] = mem[idx + _524 + 32]
                            idx = idx + 32
                            continue 
                        mem[_536 + 68] = mem[_536 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _536 + -mem[64] + 100
                else:
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
                    _539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_539] = 30
                    mem[_539 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _553 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _553 + 68] = mem[idx + _539 + 32]
                            idx = idx + 32
                            continue 
                        mem[_553 + 68] = mem[_553 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _553 + -mem[64] + 100
            else:
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_464] = return_data.size
                mem[_464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not return_data.size:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_526] = 30
                    mem[_526 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _540 + 68] = mem[idx + _526 + 32]
                            idx = idx + 32
                            continue 
                        mem[_540 + 68] = mem[_540 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _540 + -mem[64] + 100
                else:
                    require return_data.size >= 32
                    if not mem[_464 + 32]:
                        revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_543] = 30
                    mem[_543 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        _557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _557 + 68] = mem[idx + _543 + 32]
                            idx = idx + 32
                            continue 
                        mem[_557 + 68] = mem[_557 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _557 + -mem[64] + 100
            ('le', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))
            if _235 - stor[_244] != 0:
                revert with 0, 'UNFI: Amount did not match'
        mem[0] = address(_231)
        mem[32] = 53
        sub_19f91d41[address(_231)].field_0 = _235
        sub_19f91d41[address(_231)].field_256 = _233
        mem[mem[64]] = address(_231)
        mem[mem[64] + 32] = _233
        mem[mem[64] + 64] = _235
        emit 0x396280f9: address(_231), _233, _235
        idx = idx + 1
        continue 
}

function sub_90f1ddaa(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require address(owner) == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _305 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _307 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _309 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require address(owner) == msg.sender
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        41,
                        0x64546f6b656e56657374696e673a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[mem[64] + 109 len 23]
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'TokenVesting: BlockNumber is 0'
        if not sub_19f91d41[mem[(32 * idx) + 140 len 20]].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 53
            sub_19f91d41[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            sub_19f91d41[address(mem[(32 * idx) + 128])].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _331 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _309
            _332 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_332 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_332 + 36 len 28]
            _335 = mem[_332]
            t = _332 + 32
            u = mem[64]
            s = mem[_332]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_332])] = mem[_332 + floor32(mem[_332]) + -(mem[_332] % 32) + 64 len mem[_332] % 32] or Mask(8 * -(mem[_332] % 32) + 32, -(8 * -(mem[_332] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_332])])
            call stor52.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _335 + _331 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not mem[96]:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_695] = 30
                    mem[_695 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if _309 != 0:
                            revert with 0, 'UNFI: Amount did not match'
                        mem[mem[64]] = address(_305)
                        mem[mem[64] + 32] = _307
                        mem[mem[64] + 64] = _309
                        emit 0xb84ffa31: address(_305), _307, _309
                        idx = idx + 1
                        continue 
                    _713 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _713 + 68] = mem[idx + _695 + 32]
                        idx = idx + 32
                        continue 
                    mem[_713 + 68] = mem[_713 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _713 + -mem[64] + 100
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
                _716 = mem[64]
                mem[64] = mem[64] + 64
                mem[_716] = 30
                mem[_716 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if _309 != 0:
                        revert with 0, 'UNFI: Amount did not match'
                    mem[mem[64]] = address(_305)
                    mem[mem[64] + 32] = _307
                    mem[mem[64] + 64] = _309
                    emit 0xb84ffa31: address(_305), _307, _309
                    idx = idx + 1
                    continue 
                _738 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _738 + 68] = mem[idx + _716 + 32]
                    idx = idx + 32
                    continue 
                mem[_738 + 68] = mem[_738 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _738 + -mem[64] + 100
            _614 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_614] = return_data.size
            mem[_614 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            if not return_data.size:
                require ext_code.size(stor52)
                staticcall stor52.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_697] = 30
                mem[_697 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if _309 != 0:
                        revert with 0, 'UNFI: Amount did not match'
                    mem[mem[64]] = address(_305)
                    mem[mem[64] + 32] = _307
                    mem[mem[64] + 64] = _309
                    emit 0xb84ffa31: address(_305), _307, _309
                    idx = idx + 1
                    continue 
                _717 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _717 + 68] = mem[idx + _697 + 32]
                    idx = idx + 32
                    continue 
                mem[_717 + 68] = mem[_717 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _717 + -mem[64] + 100
            require return_data.size >= 32
            if not mem[_614 + 32]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _720 = mem[64]
            mem[64] = mem[64] + 64
            mem[_720] = 30
            mem[_720 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if _309 != 0:
                    revert with 0, 'UNFI: Amount did not match'
                mem[mem[64]] = address(_305)
                mem[mem[64] + 32] = _307
                mem[mem[64] + 64] = _309
                emit 0xb84ffa31: address(_305), _307, _309
                idx = idx + 1
                continue 
            _742 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _742 + 68] = mem[idx + _720 + 32]
                idx = idx + 32
                continue 
            mem[_742 + 68] = mem[_742 + 70 len 30]
            revert with memory
              from mem[64]
               len _742 + -mem[64] + 100
        if not sub_19f91d41[address(mem[(32 * idx) + 128])].field_256:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 53
            sub_19f91d41[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            sub_19f91d41[address(mem[(32 * idx) + 128])].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _339 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _309
            _340 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_340 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_340 + 36 len 28]
            _343 = mem[_340]
            t = _340 + 32
            u = mem[64]
            s = mem[_340]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_340])] = mem[_340 + floor32(mem[_340]) + -(mem[_340] % 32) + 64 len mem[_340] % 32] or Mask(8 * -(mem[_340] % 32) + 32, -(8 * -(mem[_340] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_340])])
            call stor52.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _343 + _339 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'UNFI: TRANSFERFROM_FAILED'
                if not mem[96]:
                    require ext_code.size(stor52)
                    staticcall stor52.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 30
                    mem[_699 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        if _309 != 0:
                            revert with 0, 'UNFI: Amount did not match'
                        mem[mem[64]] = address(_305)
                        mem[mem[64] + 32] = _307
                        mem[mem[64] + 64] = _309
                        emit 0xb84ffa31: address(_305), _307, _309
                        idx = idx + 1
                        continue 
                    _721 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _721 + 68] = mem[idx + _699 + 32]
                        idx = idx + 32
                        continue 
                    mem[_721 + 68] = mem[_721 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _721 + -mem[64] + 100
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
                _724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_724] = 30
                mem[_724 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if _309 != 0:
                        revert with 0, 'UNFI: Amount did not match'
                    mem[mem[64]] = address(_305)
                    mem[mem[64] + 32] = _307
                    mem[mem[64] + 64] = _309
                    emit 0xb84ffa31: address(_305), _307, _309
                    idx = idx + 1
                    continue 
                _746 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _746 + 68] = mem[idx + _724 + 32]
                    idx = idx + 32
                    continue 
                mem[_746 + 68] = mem[_746 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _746 + -mem[64] + 100
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_615] = return_data.size
            mem[_615 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            if not return_data.size:
                require ext_code.size(stor52)
                staticcall stor52.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_701] = 30
                mem[_701 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if _309 != 0:
                        revert with 0, 'UNFI: Amount did not match'
                    mem[mem[64]] = address(_305)
                    mem[mem[64] + 32] = _307
                    mem[mem[64] + 64] = _309
                    emit 0xb84ffa31: address(_305), _307, _309
                    idx = idx + 1
                    continue 
                _725 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _725 + 68] = mem[idx + _701 + 32]
                    idx = idx + 32
                    continue 
                mem[_725 + 68] = mem[_725 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _725 + -mem[64] + 100
            require return_data.size >= 32
            if not mem[_615 + 32]:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_728] = 30
            mem[_728 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if _309 != 0:
                    revert with 0, 'UNFI: Amount did not match'
                mem[mem[64]] = address(_305)
                mem[mem[64] + 32] = _307
                mem[mem[64] + 64] = _309
                emit 0xb84ffa31: address(_305), _307, _309
                idx = idx + 1
                continue 
            _750 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _750 + 68] = mem[idx + _728 + 32]
                idx = idx + 32
                continue 
            mem[_750 + 68] = mem[_750 + 70 len 30]
            revert with memory
              from mem[64]
               len _750 + -mem[64] + 100
        if block.number <= sub_19f91d41[address(mem[(32 * idx) + 128])].field_256:
            revert with 0, 
                        32,
                        64,
                        0xfe546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206e6f74206f76657220706c6561736520706572666f726d207570646174
        if sub_19f91d41[address(mem[(32 * idx) + 128])].field_0 + sub_19f91d41[address(mem[(32 * idx) + 128])].field_768 < sub_19f91d41[address(mem[(32 * idx) + 128])].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_19f91d41[address(mem[(32 * idx) + 128])].field_768 += sub_19f91d41[address(mem[(32 * idx) + 128])].field_0
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 53
        sub_19f91d41[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        sub_19f91d41[address(mem[(32 * idx) + 128])].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _368 = mem[64]
        mem[mem[64] + 36] = address(owner)
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = _309
        _369 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_369 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_369 + 36 len 28]
        _372 = mem[_369]
        t = _369 + 32
        u = mem[64]
        s = mem[_369]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_369])] = mem[_369 + floor32(mem[_369]) + -(mem[_369] % 32) + 64 len mem[_369] % 32] or Mask(8 * -(mem[_369] % 32) + 32, -(8 * -(mem[_369] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_369])])
        call stor52.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _372 + _368 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'UNFI: TRANSFERFROM_FAILED'
            if not mem[96]:
                require ext_code.size(stor52)
                staticcall stor52.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_703] = 30
                mem[_703 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= ext_call.return_data[0]:
                    if _309 != 0:
                        revert with 0, 'UNFI: Amount did not match'
                    mem[mem[64]] = address(_305)
                    mem[mem[64] + 32] = _307
                    mem[mem[64] + 64] = _309
                    emit 0xb84ffa31: address(_305), _307, _309
                    idx = idx + 1
                    continue 
                _729 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _729 + 68] = mem[idx + _703 + 32]
                    idx = idx + 32
                    continue 
                mem[_729 + 68] = mem[_729 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _729 + -mem[64] + 100
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
            _732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_732] = 30
            mem[_732 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if _309 != 0:
                    revert with 0, 'UNFI: Amount did not match'
                mem[mem[64]] = address(_305)
                mem[mem[64] + 32] = _307
                mem[mem[64] + 64] = _309
                emit 0xb84ffa31: address(_305), _307, _309
                idx = idx + 1
                continue 
            _754 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _754 + 68] = mem[idx + _732 + 32]
                idx = idx + 32
                continue 
            mem[_754 + 68] = mem[_754 + 70 len 30]
            revert with memory
              from mem[64]
               len _754 + -mem[64] + 100
        _616 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_616] = return_data.size
        mem[_616 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        if not return_data.size:
            require ext_code.size(stor52)
            staticcall stor52.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_705] = 30
            mem[_705 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if _309 != 0:
                    revert with 0, 'UNFI: Amount did not match'
                mem[mem[64]] = address(_305)
                mem[mem[64] + 32] = _307
                mem[mem[64] + 64] = _309
                emit 0xb84ffa31: address(_305), _307, _309
                idx = idx + 1
                continue 
            _733 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _733 + 68] = mem[idx + _705 + 32]
                idx = idx + 32
                continue 
            mem[_733 + 68] = mem[_733 + 70 len 30]
            revert with memory
              from mem[64]
               len _733 + -mem[64] + 100
        require return_data.size >= 32
        if not mem[_616 + 32]:
            revert with 0, 'UNFI: TRANSFERFROM_FAILED'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _736 = mem[64]
        mem[64] = mem[64] + 64
        mem[_736] = 30
        mem[_736 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if _309 != 0:
                revert with 0, 'UNFI: Amount did not match'
            mem[mem[64]] = address(_305)
            mem[mem[64] + 32] = _307
            mem[mem[64] + 64] = _309
            emit 0xb84ffa31: address(_305), _307, _309
            idx = idx + 1
            continue 
        _758 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _758 + 68] = mem[idx + _736 + 32]
            idx = idx + 32
            continue 
        mem[_758 + 68] = mem[_758 + 70 len 30]
        revert with memory
          from mem[64]
           len _758 + -mem[64] + 100
}



}
