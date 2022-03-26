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
    if sub_19f91d41[address(arg1)].field_256 <= block.number:
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
    if sub_19f91d41[address(arg1)].field_768 <= 0:
        if sub_19f91d41[address(arg1)].field_256 >= block.number:
            return 0
        if sub_19f91d41[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_19f91d41[address(arg1)].field_0
    if sub_19f91d41[address(arg1)].field_768 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_19f91d41[address(arg1)].field_256 >= block.number:
        return sub_19f91d41[address(arg1)].field_768
    if sub_19f91d41[address(arg1)].field_768 + sub_19f91d41[address(arg1)].field_0 < sub_19f91d41[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_19f91d41[address(arg1)].field_768 + sub_19f91d41[address(arg1)].field_0)
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
    if ext_code.hash(stor52) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
        if return_data.size > 0:
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
    if sub_19f91d41[address(arg1)].field_0 > 0:
        if sub_19f91d41[address(arg1)].field_256 > 0:
            if sub_19f91d41[address(arg1)].field_256 >= block.number:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            64,
                            0xfe546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206e6f74206f76657220706c6561736520706572666f726d207570646174
            if sub_19f91d41[address(arg1)].field_768 + sub_19f91d41[address(arg1)].field_0 < sub_19f91d41[address(arg1)].field_768:
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
    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), address(this.address), Mask(224, 32, arg3) >> 32
    call stor52 with:
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
    if sub_19f91d41[address(arg1)].field_256 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x73546f6b656e56657374696e673a2050726576696f75732076657374696e67206973206f76657220706c6561736520706572666f726d206372656174,
                    mem[224 len 4]
    if sub_19f91d41[address(arg1)].field_0 <= arg3:
        if sub_19f91d41[address(arg1)].field_0 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor51), uint32(stor51), address(this.address), Mask(224, 32, arg3 - sub_19f91d41[address(arg1)].field_0) >> 32
        call stor52 with:
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
    if sub_19f91d41[address(msg.sender)].field_768 <= 0:
        if sub_19f91d41[address(msg.sender)].field_256 >= block.number:
            revert with 0, 'TokenVesting: no tokens are due'
        if sub_19f91d41[address(msg.sender)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if sub_19f91d41[address(msg.sender)].field_0 <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        sub_19f91d41[address(msg.sender)].field_768 = 0
        if sub_19f91d41[address(msg.sender)].field_512 + sub_19f91d41[address(msg.sender)].field_0 < sub_19f91d41[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_19f91d41[address(msg.sender)].field_512 += sub_19f91d41[address(msg.sender)].field_0
        if sub_19f91d41[address(msg.sender)].field_256 < block.number:
            sub_19f91d41[address(msg.sender)].field_256 = 0
            sub_19f91d41[address(msg.sender)].field_0 = 0
        if sub_0b74eb73 + sub_19f91d41[address(msg.sender)].field_0 < sub_0b74eb73:
            revert with 0, 'SafeMath: addition overflow'
        sub_0b74eb73 += sub_19f91d41[address(msg.sender)].field_0
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_19f91d41[address(msg.sender)].field_32
        call stor52 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args sub_19f91d41[address(msg.sender)].field_0, mem[260 len 4]
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
    if sub_19f91d41[address(msg.sender)].field_256 >= block.number:
        if sub_19f91d41[address(msg.sender)].field_768 <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        sub_19f91d41[address(msg.sender)].field_768 = 0
        if sub_19f91d41[address(msg.sender)].field_512 + sub_19f91d41[address(msg.sender)].field_768 < sub_19f91d41[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_19f91d41[address(msg.sender)].field_512 += sub_19f91d41[address(msg.sender)].field_768
        if sub_19f91d41[address(msg.sender)].field_256 < block.number:
            sub_19f91d41[address(msg.sender)].field_256 = 0
            sub_19f91d41[address(msg.sender)].field_0 = 0
        if sub_0b74eb73 + sub_19f91d41[address(msg.sender)].field_768 < sub_0b74eb73:
            revert with 0, 'SafeMath: addition overflow'
        sub_0b74eb73 += sub_19f91d41[address(msg.sender)].field_768
        require ext_code.size(stor52)
        staticcall stor52.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_19f91d41[address(msg.sender)].field_800
        call stor52 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args sub_19f91d41[address(msg.sender)].field_768, mem[260 len 4]
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
    if sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0 < sub_19f91d41[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0 <= 0:
        revert with 0, 'TokenVesting: no tokens are due'
    sub_19f91d41[address(msg.sender)].field_768 = 0
    if sub_19f91d41[address(msg.sender)].field_512 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0 < sub_19f91d41[address(msg.sender)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    sub_19f91d41[address(msg.sender)].field_512 = sub_19f91d41[address(msg.sender)].field_512 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0
    if sub_19f91d41[address(msg.sender)].field_256 < block.number:
        sub_19f91d41[address(msg.sender)].field_256 = 0
        sub_19f91d41[address(msg.sender)].field_0 = 0
    if sub_0b74eb73 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0 < sub_0b74eb73:
        revert with 0, 'SafeMath: addition overflow'
    sub_0b74eb73 = sub_0b74eb73 + sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0
    require ext_code.size(stor52)
    staticcall stor52.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0) >> 32
    call stor52 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0) << 224, mem[260 len 4]
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
    if sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0 != 0:
        revert with 0, 'UNFI: Amount did not match'
    emit TokensReleased(msg.sender, sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0);
    return (sub_19f91d41[address(msg.sender)].field_768 + sub_19f91d41[address(msg.sender)].field_0)
}



}
